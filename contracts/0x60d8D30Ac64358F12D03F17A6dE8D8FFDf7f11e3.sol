contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor2;
address stor3;
address sub_2edab015Address;
address farmAddress;
address lpAddress;

function sub_2edab015(?) payable {
    return sub_2edab015Address
}

function lp() payable {
    return lpAddress
}

function farm() payable {
    return farmAddress
}

function _fallback() payable {
    revert
}

function sub_a1b84602(?) payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and stor0 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    return (ext_call.return_data[18 len 14] * stor0 / ext_call.return_data[50 len 14])
}

function sub_e10ed399(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(farmAddress)
    staticcall farmAddress.0x3f180538 with:
            gas gas_remaining wei
           args 0, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 100 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 100 * ext_call.return_data[0] and stor0 > -1 / 100 * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (100 * ext_call.return_data[0] * stor0 / ext_call.return_data[0])
}

function sub_26e01154(?) payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and stor0 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_2edab015Address)
    staticcall sub_2edab015Address.0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) and 2 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    return (2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0])
}

function getAPR() payable {
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and stor0 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_2edab015Address)
    staticcall sub_2edab015Address.0x70a08231 with:
            gas gas_remaining wei
           args stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) and 2 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    require ext_code.size(lpAddress)
    staticcall lpAddress.0x70a08231 with:
            gas gas_remaining wei
           args stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(lpAddress)
    staticcall lpAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] and stor0 > -1 / ext_call.return_data[18 len 14]:
        revert with 'NH{q', 17
    if not ext_call.return_data[50 len 14]:
        revert with 'NH{q', 18
    require ext_code.size(farmAddress)
    staticcall farmAddress.getEmission() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) and 5256 * 24 * 3600 > -1 / ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 5256 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) and 100 > -1 / 5256 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if not 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (146 * 3600 * 24 * 3600 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) * stor0 / Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] * ext_call.return_data[0])
}



}
