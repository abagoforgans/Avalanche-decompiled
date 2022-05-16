contract main {




// =====================  Runtime code  =====================


address lpAddress;

function lp() payable {
    return lpAddress
}

function _fallback() payable {
    revert
}

function getPrice() payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[50 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[50 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[18 len 14]:
        revert with 'NH{q', 18
    return (1000000000000 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14])
}



}
