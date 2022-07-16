contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
array of struct sub_7a2ada98;
mapping of uint256 balanceOf;
mapping of uint256 totalSupply;
uint8 sub_17500010;

function sub_17500010(?) payable {
    return bool(sub_17500010)
}

function balanceOf(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return balanceOf[arg1][arg2]
}

function sub_53037e4d(?) payable {
    return sub_7a2ada98.length
}

function sub_7a2ada98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7a2ada98.length
    return sub_7a2ada98[arg1].field_0, sub_7a2ada98[arg1].field_256
}

function owner() payable {
    return owner
}

function totalSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalSupply[arg1]
}

function token() payable {
    return tokenAddress
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

function sub_8f4d991b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_17500010 = uint8(bool(arg1))
}

function sub_e63ac9e6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7a2ada98.length++
    sub_7a2ada98[sub_7a2ada98.length].field_0 = arg1
    sub_7a2ada98[sub_7a2ada98.length].field_256 = arg2
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

function sub_f011bd58(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_7a2ada98.length:
        revert with 'NH{q', 50
    sub_7a2ada98[arg1].field_0 = arg2
    sub_7a2ada98[arg1].field_256 = arg3
}

function timeLeft(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_7a2ada98.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: _timeAmountIndex does not exist'
    if block.timestamp > sub_7a2ada98[arg1].field_0:
        return 0
    if arg1 >= sub_7a2ada98.length:
        revert with 'NH{q', 50
    if sub_7a2ada98[arg1].field_0 < block.timestamp:
        revert with 'NH{q', 17
    return (sub_7a2ada98[arg1].field_0 - block.timestamp)
}

function sub_46e8048a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if tokenAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: only recover wrong tokens'
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not sub_17500010:
        revert with 0, 'locker: locking closed'
    if arg1 >= sub_7a2ada98.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: _timeAmountIndex does not exist'
    if arg2 < sub_7a2ada98[arg1].field_256:
        revert with 0, 'locker: _amount smaller than timeAmount.amount'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOf[arg1][address(msg.sender)] = arg2
    emit Lock(arg2, msg.sender, arg1);
    if totalSupply[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply[arg1] += arg2
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_7a2ada98.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: _timeAmountIndex does not exist'
    if balanceOf[arg1][address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: _timeAmountIndex balance is 0'
    if arg1 >= sub_7a2ada98.length:
        revert with 'NH{q', 50
    if block.timestamp <= sub_7a2ada98[arg1].field_0:
        revert with 0, 'locker: lock time not elapsed'
    balanceOf[arg1][address(msg.sender)] = 0
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[arg1][address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Unlock(balanceOf[arg1][address(msg.sender)], msg.sender, arg1);
    if totalSupply[arg1] < balanceOf[arg1][address(msg.sender)]:
        revert with 'NH{q', 17
    totalSupply[arg1] -= balanceOf[arg1][address(msg.sender)]
}

function sub_49c1fb8f(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == uint8(arg4)
    require arg5 == arg5
    require arg6 == arg6
    require ext_code.size(tokenAddress)
    call tokenAddress.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg2, arg3, arg4 << 248, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_17500010:
        revert with 0, 'locker: locking closed'
    if arg1 >= sub_7a2ada98.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'locker: _timeAmountIndex does not exist'
    if arg2 < sub_7a2ada98[arg1].field_256:
        revert with 0, 'locker: _amount smaller than timeAmount.amount'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOf[arg1][address(msg.sender)] = arg2
    emit Lock(arg2, msg.sender, arg1);
    if totalSupply[arg1] > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply[arg1] += arg2
}



}
