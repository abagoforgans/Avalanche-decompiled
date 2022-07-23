contract main {




// =====================  Runtime code  =====================


address curvePoolAddress;

function curvePool() payable {
    return curvePoolAddress
}

function _fallback() payable {
    revert
}

function fetchPrice_v() payable {
    require ext_code.size(curvePoolAddress)
    staticcall curvePoolAddress.'^D?' with:
            gas gas_remaining wei
           args 0, 1, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (10^12 * ext_call.return_data[0])
}



}
