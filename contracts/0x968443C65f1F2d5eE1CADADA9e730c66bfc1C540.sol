contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;

function _fallback() payable {
    revert
}

function sub_1d4136d9(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor0)
    staticcall stor0.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if Mask(112, 0, ext_call.return_data[0]) and 1000000000000 * 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    if Mask(112, 0, ext_call.return_data[0]) and 10^12 > test266151307() / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    return 0xfacb3892f9a8d55eb50fdeee00f2b3fa8a85ded5, 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           10^12 * Mask(112, 0, ext_call.return_data[0]) << 144,
           ext_call.return_data[32] << 144,
           1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           uint32(ext_call.return_data[64])
}

function sub_931a6758(?) payable {
    require ext_code.size(stor3)
    staticcall stor3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor3)
    staticcall stor3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor3)
    staticcall stor3.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if Mask(112, 0, ext_call.return_data[0]) and 1000000000000 * 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    if Mask(112, 0, ext_call.return_data[0]) and 10^12 > test266151307() / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    return 0xfacb3892f9a8d55eb50fdeee00f2b3fa8a85ded5, 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           10^12 * Mask(112, 0, ext_call.return_data[0]) << 144,
           ext_call.return_data[32] << 144,
           1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
           uint32(ext_call.return_data[64])
}



}
