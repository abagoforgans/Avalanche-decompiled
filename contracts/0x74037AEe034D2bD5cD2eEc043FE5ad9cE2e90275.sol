contract main {




// =====================  Runtime code  =====================


address bifiAddress;
address sub_e8953740Address;
address govAddress;

function gov() payable {
    return govAddress
}

function bifi() payable {
    return bifiAddress
}

function sub_e8953740(?) payable {
    return sub_e8953740Address
}

function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_e8953740Address)
    staticcall sub_e8953740Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(govAddress)
    staticcall govAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e8953740Address)
    staticcall sub_e8953740Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(bifiAddress)
    staticcall bifiAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        revert with 0, 17
    if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) > !ext_call.return_data[0]:
        revert with 0, 17
    return ((2 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18))
}



}
