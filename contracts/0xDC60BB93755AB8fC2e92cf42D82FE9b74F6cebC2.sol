contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
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

function sub_0f98db56(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * arg2 / 10000)
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        return address(arg1), arg2
    return address(arg2), arg1
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

function sub_a98bedee(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_35bbf4ab(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg3))
    staticcall address(arg3).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if address(arg1) < address(arg2):
        if address(arg1) == address(arg1):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    else:
        if address(arg2) == address(arg1):
            return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144
    return ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
}

function sub_9982fc2d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 10000 < arg4:
        revert with 'NH{q', 17
    if -arg4 + 10000 and arg1 > -1 / -arg4 + 10000:
        revert with 'NH{q', 17
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if 10000 < arg4:
        revert with 'NH{q', 17
    if -arg4 + 10000 and arg1 > -1 / -arg4 + 10000:
        revert with 'NH{q', 17
    if (10000 * arg1) - (arg4 * arg1) and arg3 > -1 / (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    if arg2 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg3 < (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if arg2 > -arg1 - 1:
        revert with 'NH{q', 17
    if arg2 + arg1 and arg3 - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1)) > -1 / arg2 + arg1:
        revert with 'NH{q', 17
    return (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1), 
           arg2 + arg1,
           arg3 - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1)),
           (arg3 * arg2) - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) * arg2) + (arg3 * arg1) - ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) * arg1)
}

function sub_9381569e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == arg6
    if 0x145db63547fbbdeb9ce5de9c163c21f97f5d51c6 != msg.sender:
        if 0x69920514f116f04eb7cc44c33c82cb700463cc67 != msg.sender:
            if 0x28975f819fe4463af8d38a7cce8d667ce8217140 != msg.sender:
                if 0xf02c7603c9049f48d429dae442ac35340245d58f != msg.sender:
                    if 0x1ff2fc6662d8068b0c03c57141f144ec457e54a5 != msg.sender:
                        revert with 0, 'no'
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 10000 < arg6:
        revert with 'NH{q', 17
    if -arg6 + 10000 and arg2 > -1 / -arg6 + 10000:
        revert with 'NH{q', 17
    if address(arg3) < address(arg4):
        if address(arg3) == address(arg3):
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-10000 * arg2) + (arg6 * arg2) - 1:
                revert with 'NH{q', 17
            if 10000 < arg6:
                revert with 'NH{q', 17
            if -arg6 + 10000 and arg2 > -1 / -arg6 + 10000:
                revert with 'NH{q', 17
            if (10000 * arg2) - (arg6 * arg2) and ext_call.return_data[50 len 14] > -1 / (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < (10000 * arg2 * ext_call.return_data[50 len 14]) - (arg6 * arg2 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] + arg2 and ext_call.return_data[50 len 14] - ((10000 * arg2 * ext_call.return_data[50 len 14]) - (arg6 * arg2 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2)) > -1 / ext_call.return_data[18 len 14] + arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(arg5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg5))
            if address(arg3) >= address(arg4):
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * arg2 * Mask(112, 0, ext_call.return_data[32])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg2) - (arg6 * arg2), 0, owner, 128, 0
            else:
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * arg2 * Mask(112, 0, ext_call.return_data[32])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg2) - (arg6 * arg2), owner, 128, 0
        else:
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-10000 * arg2) + (arg6 * arg2) - 1:
                revert with 'NH{q', 17
            if 10000 < arg6:
                revert with 'NH{q', 17
            if -arg6 + 10000 and arg2 > -1 / -arg6 + 10000:
                revert with 'NH{q', 17
            if (10000 * arg2) - (arg6 * arg2) and ext_call.return_data[18 len 14] > -1 / (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < (10000 * arg2 * ext_call.return_data[18 len 14]) - (arg6 * arg2 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] + arg2 and ext_call.return_data[18 len 14] - ((10000 * arg2 * ext_call.return_data[18 len 14]) - (arg6 * arg2 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2)) > -1 / ext_call.return_data[50 len 14] + arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(arg5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg5))
            if address(arg3) >= address(arg4):
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * arg2 * Mask(112, 0, ext_call.return_data[0])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg2) - (arg6 * arg2), 0, owner, 128, 0
            else:
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * arg2 * Mask(112, 0, ext_call.return_data[0])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg2) - (arg6 * arg2), owner, 128, 0
    else:
        if address(arg4) == address(arg3):
            if ext_call.return_data[18 len 14] and 10000 > -1 / ext_call.return_data[18 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[18 len 14] > (-10000 * arg2) + (arg6 * arg2) - 1:
                revert with 'NH{q', 17
            if 10000 < arg6:
                revert with 'NH{q', 17
            if -arg6 + 10000 and arg2 > -1 / -arg6 + 10000:
                revert with 'NH{q', 17
            if (10000 * arg2) - (arg6 * arg2) and ext_call.return_data[50 len 14] > -1 / (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 18
            if ext_call.return_data[18 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] < (10000 * arg2 * ext_call.return_data[50 len 14]) - (arg6 * arg2 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] + arg2 and ext_call.return_data[50 len 14] - ((10000 * arg2 * ext_call.return_data[50 len 14]) - (arg6 * arg2 * ext_call.return_data[50 len 14]) / (10000 * ext_call.return_data[18 len 14]) + (10000 * arg2) - (arg6 * arg2)) > -1 / ext_call.return_data[18 len 14] + arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(arg5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg5))
            if address(arg3) >= address(arg4):
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * arg2 * Mask(112, 0, ext_call.return_data[32])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg2) - (arg6 * arg2), 0, owner, 128, 0
            else:
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * arg2 * Mask(112, 0, ext_call.return_data[32])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[32])) / (10000 * Mask(112, 0, ext_call.return_data[0])) + (10000 * arg2) - (arg6 * arg2), owner, 128, 0
        else:
            if ext_call.return_data[50 len 14] and 10000 > -1 / ext_call.return_data[50 len 14]:
                revert with 'NH{q', 17
            if 10000 * ext_call.return_data[50 len 14] > (-10000 * arg2) + (arg6 * arg2) - 1:
                revert with 'NH{q', 17
            if 10000 < arg6:
                revert with 'NH{q', 17
            if -arg6 + 10000 and arg2 > -1 / -arg6 + 10000:
                revert with 'NH{q', 17
            if (10000 * arg2) - (arg6 * arg2) and ext_call.return_data[18 len 14] > -1 / (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if not (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 18
            if ext_call.return_data[50 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[18 len 14] < (10000 * arg2 * ext_call.return_data[18 len 14]) - (arg6 * arg2 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2):
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] > -arg2 - 1:
                revert with 'NH{q', 17
            if ext_call.return_data[50 len 14] + arg2 and ext_call.return_data[18 len 14] - ((10000 * arg2 * ext_call.return_data[18 len 14]) - (arg6 * arg2 * ext_call.return_data[18 len 14]) / (10000 * ext_call.return_data[50 len 14]) + (10000 * arg2) - (arg6 * arg2)) > -1 / ext_call.return_data[50 len 14] + arg2:
                revert with 'NH{q', 17
            require ext_code.size(address(arg3))
            call address(arg3).0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), address(arg5), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(address(arg5))
            if address(arg3) >= address(arg4):
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (10000 * arg2 * Mask(112, 0, ext_call.return_data[0])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg2) - (arg6 * arg2), 0, owner, 128, 0
            else:
                call address(arg5).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (10000 * arg2 * Mask(112, 0, ext_call.return_data[0])) - (arg6 * arg2 * Mask(112, 0, ext_call.return_data[0])) / (10000 * Mask(112, 0, ext_call.return_data[32])) + (10000 * arg2) - (arg6 * arg2), owner, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
