contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(stor0)
    staticcall stor0.get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg4
    return 0
}



}
