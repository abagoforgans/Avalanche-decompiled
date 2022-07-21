contract main {




// =====================  Runtime code  =====================


address joeFactoryAddress;
address joeRouterAddress;
mapping of uint8 stor2;
address stor3;

function joeRouter() {
    return joeRouterAddress
}

function joeFactory() {
    return joeFactoryAddress
}

function allowedUsers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function whitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor2[address(arg1)] = 1
}

function sub_65711dbd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    delegate 0x731d9a50ee09494e45b6663cf47b3a968c750221.0xc30db280 with:
         gas gas_remaining wei
        args address(arg1)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require delegate.return_data[32] == delegate.return_data[44 len 20]
    require delegate.return_data[64] == delegate.return_data[76 len 20]
    if not delegate.return_data[12 len 20]:
        return 0
    staticcall address(delegate.return_data[32]).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(delegate.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, 
           address(delegate.return_data[0]),
           address(delegate.return_data[32]),
           address(delegate.return_data[64]),
           ext_call.return_data[0]
}

function sub_49746194(?) {
    require calldata.size - 4 >= 192
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0, '401'
    if not -arg1 + 1:
        staticcall address(arg2).token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(arg2).token1() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(arg2))
        if address(arg3) == address(ext_call.return_data[0]):
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5, arg5, address(arg4), Array(len=arg6.length, data=arg6[all])
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg5, 0, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
        else:
            if address(arg3) == ext_call.return_data[12 len 20]:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg5, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
            else:
                call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_39782f41(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg4).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -arg1 + 1:
        return 0
    if not -ext_call.return_data[0]:
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < arg5:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg5:
            revert with 0, 18
        if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
            revert with 0, 17
        if not ext_call.return_data[0] - arg5:
            revert with 0, 18
        if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 18
        if 0 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
            revert with 0, 17
        if (0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 0 / (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
    if ext_call.return_data[0] and arg5 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg5 / ext_call.return_data[0] != arg5:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -1 * ext_call.return_data[0] * arg5:
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < arg5:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg5:
            revert with 0, 18
        if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
            revert with 0, 17
        if not ext_call.return_data[0] - arg5:
            revert with 0, 18
        if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 18
        if 0 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
            revert with 0, 17
        if (0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 0 / (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
    if ext_call.return_data[0] * arg5 and 1000 > -1 / ext_call.return_data[0] * arg5:
        revert with 0, 17
    if not ext_call.return_data[0] * arg5:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg5 / ext_call.return_data[0] * arg5 != 1000:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg5 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < arg5:
        revert with 0, 17
    if not -ext_call.return_data[0] + arg5:
        revert with 0, 18
    if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
        revert with 0, 17
    if not ext_call.return_data[0] - arg5:
        revert with 0, 18
    if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (997 * ext_call.return_data[0]) - (997 * arg5):
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
        revert with 0, 17
    if (1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5):
        revert with 0, 'SafeMath: addition overflow'
    return ((1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x59f571e8(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x59f571e8(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return joeRouterAddress
        if uint32(call.func_hash) >> 224 != unknown_0x65711dbd(?????):
            if unknown_0x8a38466e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return joeFactoryAddress
            require unknown_0xf3d1306d(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return bool(stor2[arg1])
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        delegate 0x731d9a50ee09494e45b6663cf47b3a968c750221.0xc30db280 with:
             gas gas_remaining wei
            args address(arg1)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require delegate.return_data[0] == delegate.return_data[12 len 20]
        require delegate.return_data[32] == delegate.return_data[44 len 20]
        require delegate.return_data[64] == delegate.return_data[76 len 20]
        if not delegate.return_data[12 len 20]:
            return 0
        staticcall address(delegate.return_data[32]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(delegate.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 1, 
               address(delegate.return_data[0]),
               address(delegate.return_data[32]),
               address(delegate.return_data[64]),
               ext_call.return_data[0]
    if uint32(call.func_hash) >> 224 != unknown_0x39782f41(?????):
        if unknown_0x41566585(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if stor3 != msg.sender:
                revert with 0, 'Only owner can call this function.'
            stor2[address(arg1)] = 1
        else:
            require unknown_0x49746194(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 192
            require arg2 == address(arg2)
            require arg3 == address(arg3)
            require arg4 == address(arg4)
            require arg6 <= test266151307()
            require arg6 + 35 < calldata.size
            if arg6.length > test266151307():
                revert with 0, 65
            if ceil32(ceil32(arg6.length)) + 129 < 128 or ceil32(ceil32(arg6.length)) + 129 > test266151307():
                revert with 0, 65
            require arg6 + arg6.length + 36 <= calldata.size
            if not stor2[msg.sender]:
                revert with 0, '401'
            if not -arg1 + 1:
                staticcall address(arg2).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(arg2).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(arg2))
                if address(arg3) == address(ext_call.return_data[0]):
                    if address(arg3) == ext_call.return_data[12 len 20]:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg5, arg5, address(arg4), Array(len=arg6.length, data=arg6[all])
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg5, 0, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
                else:
                    if address(arg3) == ext_call.return_data[12 len 20]:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg5, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
                    else:
                        call address(arg2).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(arg4), 128, arg6.length, arg6[all], ext_call.return_data[arg6.length + -ceil32(ceil32(arg6.length)) + 31 len ceil32(arg6.length) - arg6.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    require not msg.value
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    staticcall address(arg3).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall address(arg4).balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if -arg1 + 1:
        return 0
    if not -ext_call.return_data[0]:
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < arg5:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg5:
            revert with 0, 18
        if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
            revert with 0, 17
        if not ext_call.return_data[0] - arg5:
            revert with 0, 18
        if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 18
        if 0 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
            revert with 0, 17
        if (0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 0 / (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
    if ext_call.return_data[0] and arg5 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if ext_call.return_data[0] * arg5 / ext_call.return_data[0] != arg5:
        revert with 0, 'SafeMath: multiplication overflow'
    if not -1 * ext_call.return_data[0] * arg5:
        if arg5 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if ext_call.return_data[0] < arg5:
            revert with 0, 17
        if not -ext_call.return_data[0] + arg5:
            revert with 0, 18
        if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
            revert with 0, 17
        if not ext_call.return_data[0] - arg5:
            revert with 0, 18
        if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 18
        if 0 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
            revert with 0, 17
        if (0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 0 / (997 * ext_call.return_data[0]) - (997 * arg5):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
    if ext_call.return_data[0] * arg5 and 1000 > -1 / ext_call.return_data[0] * arg5:
        revert with 0, 17
    if not ext_call.return_data[0] * arg5:
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg5 / ext_call.return_data[0] * arg5 != 1000:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg5 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if ext_call.return_data[0] < arg5:
        revert with 0, 17
    if not -ext_call.return_data[0] + arg5:
        revert with 0, 18
    if ext_call.return_data[0] - arg5 and 997 > -1 / ext_call.return_data[0] - arg5:
        revert with 0, 17
    if not ext_call.return_data[0] - arg5:
        revert with 0, 18
    if (997 * ext_call.return_data[0]) - (997 * arg5) / ext_call.return_data[0] - arg5 != 997:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (997 * ext_call.return_data[0]) - (997 * arg5):
        revert with 0, 18
    if 1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5) > -2:
        revert with 0, 17
    if (1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1 < 1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5):
        revert with 0, 'SafeMath: addition overflow'
    return ((1000 * ext_call.return_data[0] * arg5 / (997 * ext_call.return_data[0]) - (997 * arg5)) + 1)
}



}
