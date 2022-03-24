contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address beneficiaryAddress;
uint256 releaseTime;

function beneficiary() payable {
    return beneficiaryAddress
}

function releaseTime() payable {
    return releaseTime
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release() payable {
    if block.timestamp < releaseTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenTimelock: current time is before release time'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args beneficiaryAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
