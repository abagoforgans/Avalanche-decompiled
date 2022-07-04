contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getLatestPrice() payable {
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_b502fd59(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if 10^18 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / arg1 and bool(arg1 > 0):
        revert with 0, 17
    if arg1 < 0xfffffffffffffff6c6d11716de2a2f8c500cdd19dbc6030cd280cbb9b6b8f070 and bool(arg1 < 0):
        revert with 0, 17
    if not ext_call.return_data[32]:
        revert with 0, 18
    if ext_call.return_data[32] == -1 and 10^18 * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    return (10^18 * arg1 / ext_call.return_data[32])
}



}
