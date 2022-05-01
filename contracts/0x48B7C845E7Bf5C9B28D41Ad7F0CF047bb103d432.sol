contract main {




// =====================  Runtime code  =====================


#
#  - sub_14d2d9ae(?)
#  - sub_49fdb9d7(?)
#
function _fallback() payable {
    revert
}

function getLatestPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
}

function sub_426a8109(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return (ext_call.return_data[32] / 100)
}

function getHistoricalPrice(address arg1, uint80 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == Mask(80, 0, arg2)
    require ext_code.size(arg1)
    staticcall arg1.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[96] <= 0:
        revert with 0, 'Round not complete'
    return ext_call.return_data[32]
}



}
