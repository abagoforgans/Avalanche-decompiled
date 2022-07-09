contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_9948736f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor0 = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    require ext_code.size(stor0)
    staticcall stor0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}



}
