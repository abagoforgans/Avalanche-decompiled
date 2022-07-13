contract main {




// =====================  Runtime code  =====================


#
#  - swap(bytes32 arg1, uint256 arg2)
#
const versionRecipient = '', 0


uint8 stor0; offset 160
address trustedForwarderAddress;
uint32 stor1;
address _owner;
uint256 stor1;
address _adminAddress;
address sub_b5e97485Address;
mapping of struct sub_b96ea12d;

function _admin() payable {
    return _adminAddress
}

function paused() payable {
    return bool(stor0)
}

function trustedForwarder() payable {
    return trustedForwarderAddress
}

function _owner() payable {
    return address(_owner)
}

function sub_b5e97485(?) payable {
    return sub_b5e97485Address
}

function sub_b96ea12d(?) payable {
    require calldata.size - 4 >= 32
    return sub_b96ea12d[arg1].field_0, sub_b96ea12d[arg1].field_256, sub_b96ea12d[arg1].field_512
}

function _fallback() payable {
    revert
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (trustedForwarderAddress == arg1)
}

function renounceOwnership() payable {
    if calldata.size < 24:
        if _adminAddress != msg.sender:
            revert with 0, 'Ownable: caller is not the Admin'
    else:
        if trustedForwarderAddress != msg.sender:
            if _adminAddress != msg.sender:
                revert with 0, 'Ownable: caller is not the Admin'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != _adminAddress:
                revert with 0, 'Ownable: caller is not the Admin'
    emit OwnershipTransferred(address(_owner), _adminAddress);
    address(_owner) = _adminAddress
}

function sub_23d84856(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    sub_b5e97485Address = address(cd[4])
}

function updateTrustForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    trustedForwarderAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(address(_owner), arg1);
    address(_owner) = arg1
}

function pause() payable {
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    if calldata.size < 24:
        emit Paused(msg.sender);
    else:
        if trustedForwarderAddress != msg.sender:
            emit Paused(msg.sender);
        else:
            emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
    return 1
}

function unpause() payable {
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    if calldata.size < 24:
        emit Unpaused(msg.sender);
    else:
        if trustedForwarderAddress != msg.sender:
            emit Unpaused(msg.sender);
        else:
            emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
    return 1
}

function addProject(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addProject:: invalid implementation addresses'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addProject:: invalid implementation addresses'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addProject:: invaild totalSwapTokens'
    sub_b96ea12d[arg1][arg2].field_0 = arg1
    sub_b96ea12d[arg1][arg2].field_256 = arg2
    sub_b96ea12d[arg1][arg2].field_512 = arg3
    emit ProjectAdded(arg3, block.timestamp, sha3(arg1, arg2), arg1, arg2);
}

function updateProjectDetails(bytes32 arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'updateProjectDetails:: invalid implementation addresses'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'updateProjectDetails:: invalid implementation addresses'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'updateProjectDetails:: invaild totalSwapTokens'
    sub_b96ea12d[arg1].field_0 = 0
    sub_b96ea12d[arg1].field_256 = 0
    sub_b96ea12d[arg1].field_512 = 0
    sub_b96ea12d[arg2][arg3].field_0 = arg2
    sub_b96ea12d[arg2][arg3].field_256 = arg3
    sub_b96ea12d[arg2][arg3].field_512 = arg4
    emit ProjectAdded(arg4, block.timestamp, sha3(arg2, arg3), arg2, arg3);
    return 1
}

function safeWithdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if calldata.size < 24:
        if address(_owner) != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if trustedForwarderAddress != msg.sender:
            if address(_owner) != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(_owner):
                revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Insufficient Balance'
    mem[ceil32(return_data.size) + 132] = address(_owner)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor1)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
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
    emit WithdrawDetails(arg2, block.timestamp, arg1);
}



}
