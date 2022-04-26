contract main {




// =====================  Runtime code  =====================


address oracleAddress;
uint256 priceMultiplier;

function oracle() payable {
    return oracleAddress
}

function priceMultiplier() payable {
    return priceMultiplier
}

function _fallback() payable {
    revert
}

function read() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require priceMultiplier * ext_call.return_data[0] / ext_call.return_data[0] == priceMultiplier
    return (priceMultiplier * ext_call.return_data[0])
}



}
