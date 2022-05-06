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
    staticcall oracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not ext_call.return_data[32]:
        return 0
    if priceMultiplier * ext_call.return_data[32] / ext_call.return_data[32] != priceMultiplier:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    ext_call.return_data[101 len 31]
    return (priceMultiplier * ext_call.return_data[32])
}



}
