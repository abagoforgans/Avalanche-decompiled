contract main {




// =====================  Runtime code  =====================


address sub_bca6784eAddress;

function sub_bca6784e(?) payable {
    return sub_bca6784eAddress
}

function _fallback() payable {
    revert
}

function decimals() payable {
    require ext_code.size(sub_bca6784eAddress)
    staticcall sub_bca6784eAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function getLatestPrice() payable {
    require ext_code.size(sub_bca6784eAddress)
    staticcall sub_bca6784eAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[32], ext_call.return_data[96]
}

function latestRoundData() payable {
    require ext_code.size(sub_bca6784eAddress)
    staticcall sub_bca6784eAddress.0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128] << 176
}



}
