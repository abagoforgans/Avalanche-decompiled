contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d02535f5(?) payable {
    require ext_code.size(stor0)
    staticcall stor0.epoch() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    if ext_call.return_data[124 len 4] < uint32(block.timestamp):
        revert with 'NH{q', 17
    return uint32(ext_call.return_data[124 len 4] - uint32(block.timestamp))
}



}
