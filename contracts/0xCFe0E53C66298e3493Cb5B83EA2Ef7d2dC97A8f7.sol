contract main {




// =====================  Runtime code  =====================


#
#  - sub_61ea6a24(?)
#  - sub_fac61d7d(?)
#
function _fallback() payable {
    revert
}

function sub_6c8f8a6e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 10001, 10 * 10^18, 10 * 10^18
    if not ext_call.success:
        require ext_code.size(address(arg2))
        staticcall address(arg2).fee() with:
                gas gas_remaining wei
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_code.size(address(arg1))
            staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                    gas gas_remaining wei
                   args 10001, 10 * 10^18, 10 * 10^18, ext_call.return_data[0]
            if not ext_call.success:
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                        gas gas_remaining wei
                       args 10001, 10 * 10^18, 10 * 10^18, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg2))
            staticcall address(arg2).swapFee() with:
                    gas gas_remaining wei
            if not ext_call.success:
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args 0, 10001, 10 * 10^18, 10 * 10^18, 0
                if not ext_call.success:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args 0, 10001, 10 * 10^18, 10 * 10^18, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_code.size(address(arg1))
                staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                        gas gas_remaining wei
                       args 10001, 10 * 10^18, 10 * 10^18, ext_call.return_data[0]
                if not ext_call.success:
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args 10001, 10 * 10^18, 10 * 10^18, address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return 10000, ext_call.return_data[0]
}



}
