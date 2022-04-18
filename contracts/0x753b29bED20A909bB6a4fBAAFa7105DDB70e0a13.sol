contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
uint8 stor1; offset 160
uint32 stor1;
uint128 stor1; offset 160
address beneficiaryAddress;
uint256 stor1;
uint256 releaseTime;
mapping of uint8 stor3;

function beneficiary() payable {
    return beneficiaryAddress
}

function owner() payable {
    return owner
}

function releaseTime() payable {
    return releaseTime
}

function revoked(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor1.field_160):
        revert with 0, 'Not revocable'
    if stor3[address(arg1)]:
        revert with 0, 'Already revoked'
    stor3[address(arg1)] = 1
    emit Revoked(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function initialize(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if arg2 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTimelock: release time is before current time'
    releaseTime = arg2
    beneficiaryAddress = arg1
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg3)
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < releaseTime:
        if not stor3[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTimelock: current time is before release time'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TokenTimelock: no tokens to release'
    mem[ceil32(return_data.size) + 132] = beneficiaryAddress
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1.field_0), uint32(stor1.field_0), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}



}
