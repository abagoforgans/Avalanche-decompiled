contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint8 oracleDecimals; offset 160
address chainlinkOracleAddress;

function oracleDecimals() payable {
    return oracleDecimals
}

function chainlinkOracle() payable {
    return chainlinkOracleAddress
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if adminAddress != msg.sender:
        revert with 0, 'Not admin'
    adminAddress = arg1
}

function updatePrice() payable {
    staticcall chainlinkOracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function getLatestPrice() payable {
    staticcall chainlinkOracleAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}



}
