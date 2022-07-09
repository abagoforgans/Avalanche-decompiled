contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address lpAddress;
uint128 sub_24797db5;
address tokenAddress;

function sub_24797db5(?) payable {
    return sub_24797db5
}

function lpAddress() payable {
    return lpAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_9948736f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor0 = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10
    staticcall stor0.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    lpAddress = ext_call.return_data[12 len 20]
    tokenAddress = address(arg1)
    if not lpAddress:
        return 0
    stor1 = lpAddress
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    return ext_call.return_data[18 len 14]
}



}
