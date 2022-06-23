contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_1d4d5dd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require ext_code.size(stor0)
    staticcall stor0.randomSeed(uint256 arg1) with:
            gas gas_remaining wei
           args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= block.number:
        revert with 0, 'NFT: Nope!'
    if Mask(2, 64, ext_call.return_data[0]) >> 64 >= 4:
        revert with 'NH{q', 50
    staticcall 'console.log'.log(string arg1, bool arg2) with:
            gas gas_remaining wei
           args 0, 64, not not uint16(ext_call.return_data[0]) % 10, 10, 'isFighter:', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, uint8(stor1.field_Mask(2, 64, ext_call.return_data[0]) >> 61), 5, 'rank:', 0
    return 1, 
           not not uint16(ext_call.return_data[0]) % 10,
           0,
           0,
           block.timestamp,
           uint8(stor1.field_(Mask(2, 64, ext_call.return_data[0]) >> 61) - 496),
           block.timestamp,
           0,
           0,
           0,
           0
}



}
