contract main {




// =====================  Runtime code  =====================


address rebaseCAddress;

function rebaseC() payable {
    return rebaseCAddress
}

function _fallback() payable {
    revert
}

function readStruct() payable {
    require ext_code.size(rebaseCAddress)
    staticcall rebaseCAddress.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    return ext_call.return_data[0]
}



}
