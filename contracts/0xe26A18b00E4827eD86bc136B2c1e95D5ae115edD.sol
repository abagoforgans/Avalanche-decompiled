contract main {




// =====================  Runtime code  =====================


function sub_cf21c775(?) {
    require calldata.size - 4 >= 192
    require cd[164] <= 4294967296
    require cd[164] + 36 <= calldata.size
    require ('cd', 164).length <= 4294967296 and cd[164] + ('cd', 164).length + 36 <= calldata.size
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0x2e1a7d4d with:
         gas gas_remaining wei
        args cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call Mask(64, 96, ('cd', 164)[0]) >> 96 with:
       value cd[132] wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        require unknown_0xcf21c775(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 192
        require cd[164] <= 4294967296
        require cd[164] + 36 <= calldata.size
        require ('cd', 164).length <= 4294967296 and cd[164] + ('cd', 164).length + 36 <= calldata.size
        require ext_code.size(address(cd[68]))
        call address(cd[68]).0x2e1a7d4d with:
             gas gas_remaining wei
            args cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call Mask(64, 96, ('cd', 164)[0]) >> 96 with:
           value cd[132] wei
             gas 2300 * is_zero(value) wei
}



}
