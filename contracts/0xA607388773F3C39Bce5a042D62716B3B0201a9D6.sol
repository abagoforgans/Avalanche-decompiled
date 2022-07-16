contract main {




// =====================  Runtime code  =====================


address stor0;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_bcbe8433(?) payable {
    require ext_code.size(stor5)
    staticcall stor5.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor5)
    staticcall stor5.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor5)
    staticcall stor5.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if Mask(112, 0, ext_call.return_data[0]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    return 0x6bb1cfa34f9acd3ff2ac0ecad81924c2ea7b8351, 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]),
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
    if Mask(112, 0, ext_call.return_data[32]) and 10^18 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    return 0xc813d23b610044c9d9ec3c723cac8462e2fd838a, 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]),
           uint32(ext_call.return_data[64])
}

function sub_24f12c45(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor4)
    staticcall stor4.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor4)
    staticcall stor4.token1() with:
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

function sub_b2ee2c34(?) payable {
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



}
