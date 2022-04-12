contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_de23af71(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if not arg1:
        return 0
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[18 len 14]:
        return 0
    if not ext_call.return_data[50 len 14]:
        return 0
    require ext_code.size(address(arg4))
    if address(arg2) < address(arg3):
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_945d83ac(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(address(arg4))
    staticcall address(arg4).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    if not arg1:
        return 0, address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[18 len 14]:
        return 0, address(ext_call.return_data[0])
    if not ext_call.return_data[50 len 14]:
        return 0, address(ext_call.return_data[0])
    require ext_code.size(address(arg4))
    if address(arg2) < address(arg3):
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], address(ext_call.return_data[0])
}

function sub_e23bce8f(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg5))
    if not arg1:
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(arg6), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not ext_call.return_data[18 len 14]:
        require ext_code.size(address(arg5))
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(arg6), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    if not ext_call.return_data[50 len 14]:
        require ext_code.size(address(arg5))
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, address(arg6), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require ext_code.size(address(arg4))
    if address(arg2) < address(arg3):
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args arg1, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg5))
    if address(arg2) < address(arg3):
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], address(arg6), 128, 0
    else:
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(arg6), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_8197961c(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require ext_code.size(address(arg5))
    staticcall address(arg5).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(arg2) < address(arg3):
        if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        require ext_code.size(address(arg5))
        if not Mask(144, 112, ext_call.return_data[0]):
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        staticcall address(arg5).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(address(arg5))
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if not ext_call.return_data[50 len 14]:
            require ext_code.size(address(arg5))
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        require ext_code.size(address(arg4))
        if address(arg2) < address(arg3):
            staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args Mask(144, 112, ext_call.return_data[0]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    else:
        if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        require ext_code.size(address(arg5))
        if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        staticcall address(arg5).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if not ext_call.return_data[18 len 14]:
            require ext_code.size(address(arg5))
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        if not ext_call.return_data[50 len 14]:
            require ext_code.size(address(arg5))
            call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, 0, address(arg6), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                return 0
        require ext_code.size(address(arg4))
        if address(arg2) < address(arg3):
            staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
        else:
            staticcall address(arg4).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg5))
    if address(arg2) < address(arg3):
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], address(arg6), 128, 0
    else:
        call address(arg5).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(arg6), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
