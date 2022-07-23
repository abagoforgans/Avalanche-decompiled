contract main {




// =====================  Runtime code  =====================


address sub_9dafd7e5Address;
address sub_a3c4fb64Address;
address sub_19ad4a49Address;

function sub_19ad4a49(?) payable {
    return sub_19ad4a49Address
}

function sub_9dafd7e5(?) payable {
    return sub_9dafd7e5Address
}

function sub_a3c4fb64(?) payable {
    return sub_a3c4fb64Address
}

function _fallback() payable {
    revert
}

function fetchPrice_v() payable {
    require ext_code.size(sub_a3c4fb64Address)
    staticcall sub_a3c4fb64Address.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3c4fb64Address)
    staticcall sub_a3c4fb64Address.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a3c4fb64Address)
    staticcall sub_a3c4fb64Address.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(sub_9dafd7e5Address)
    staticcall sub_9dafd7e5Address.0x9c3bc3e6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_19ad4a49Address != address(ext_call.return_data[0]):
        if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / 1000000000000000000 * 10^18 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'div by 0'
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        return (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
    if 1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / 1000000000000000000 * 10^18 != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'ds-math-mul-overflow'
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'div by 0'
    if not ext_call.return_data[0]:
        revert with 0, 'div by 0'
    return (1000000000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]) / ext_call.return_data[0])
}



}
