contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - distribute(address arg1)
#  - deposit(uint256 arg1)
#
uint32 stor0;
address owner;
uint256 stor0;
address sub_e3b93b60Address;
address sub_069dfde2Address;
uint256 sub_76d871eb;
uint256 sub_188ae86e;
uint256 sub_495c395e;
mapping of uint256 userDeposit;
mapping of uint8 stor7;
uint256 totalDeposit;

function sub_069dfde2(?) payable {
    return sub_069dfde2Address
}

function sub_188ae86e(?) payable {
    return sub_188ae86e
}

function sub_495c395e(?) payable {
    return sub_495c395e
}

function sub_76d871eb(?) payable {
    return sub_76d871eb
}

function owner() payable {
    return address(owner)
}

function userDeposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userDeposit[arg1]
}

function sub_e3b93b60(?) payable {
    return sub_e3b93b60Address
}

function sub_e96a6bda(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function totalDeposit() payable {
    return totalDeposit
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function setDeadline(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_76d871eb = arg1
    sub_188ae86e = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function sub_cfa776a7(?) payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall sub_e3b93b60Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = address(owner)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(sub_e3b93b60Address):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call sub_e3b93b60Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
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
    emit Revoke(address(owner), ext_call.return_data[0]);
}



}
