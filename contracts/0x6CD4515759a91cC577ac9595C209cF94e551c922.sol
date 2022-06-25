contract main {




// =====================  Runtime code  =====================


address sub_82a67eaeAddress;
address sub_a2a5236cAddress;

function sub_82a67eae(?) payable {
    return sub_82a67eaeAddress
}

function sub_a2a5236c(?) payable {
    return sub_a2a5236cAddress
}

function _fallback() payable {
    revert
}

function decimals() payable {
    require ext_code.size(sub_82a67eaeAddress)
    staticcall sub_82a67eaeAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function latestAnswer() payable {
    require ext_code.size(sub_82a67eaeAddress)
    staticcall sub_82a67eaeAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[150 len 10] < ext_call.return_data[22 len 10]:
        revert with 0, 'Stale oracle price'
    if not ext_call.return_data[96]:
        revert with 0, '!timeStamp'
    require ext_code.size(sub_a2a5236cAddress)
    staticcall sub_a2a5236cAddress.0x4a36d6c1 with:
            gas gas_remaining wei
           args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[32] >= 0:
        if ext_call.return_data[0] and ext_call.return_data[32] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * ext_call.return_data[32] / 10^18)
    if ext_call.return_data[0] and 0 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    else:
        return 0
}



}
