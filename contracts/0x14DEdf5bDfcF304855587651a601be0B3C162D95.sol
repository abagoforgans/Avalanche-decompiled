contract main {




// =====================  Runtime code  =====================


address joeRouterAddress;
address joePairAddress;

function joeRouter() payable {
    return joeRouterAddress
}

function joePair() payable {
    return joePairAddress
}

function _fallback() payable {
    revert
}

function sub_77720796(?) payable {
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}



}
