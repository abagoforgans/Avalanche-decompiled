contract main {




// =====================  Runtime code  =====================


address tellorAddress;

function tellor() payable {
    return tellorAddress
}

function _fallback() payable {
    revert
}

function getTellorCurrentValue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tellorAddress)
    staticcall tellorAddress.getNewValueCountbyRequestId(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(tellorAddress)
    staticcall tellorAddress.getTimestampbyRequestIDandIndex(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tellorAddress)
    staticcall tellorAddress.retrieveData(uint256 rg1, uint256 rg2) with:
            gas gas_remaining wei
           args arg1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0, ext_call.return_data[0]
    return 1, ext_call.return_data[0], ext_call.return_data[0]
}



}
