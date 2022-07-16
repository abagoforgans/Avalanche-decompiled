contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_148a12a3(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function sub_9546d135(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64])
}

function getTokens() payable {
    require ext_code.size(stor0)
    staticcall stor0.getToken0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor0)
    staticcall stor0.getToken1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}

function sub_3de5ecc6(?) payable {
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
}

function sub_30947550(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    return (1000000000000 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14])
}

function getPrices() payable {
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if Mask(112, 0, ext_call.return_data[0]) and 1000000000000 * 10^18 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 18
    if ext_call.return_data[18 len 14] and 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    return 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 
           10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
}

function sub_787e4e38(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9 and 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^9 > -1 / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9:
        revert with 'NH{q', 17
    return (1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^9)
}

function sub_5ef53894(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 1000000000000 * 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and 10^18 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    if 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9 and 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^9 > -1 / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9:
        revert with 'NH{q', 17
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^9:
        revert with 'NH{q', 18
    return (10^18 * arg1 / 1000000000000 * 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) / 10^9 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^9)
}



}
