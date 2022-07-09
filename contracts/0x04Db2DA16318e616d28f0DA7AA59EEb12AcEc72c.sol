contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function update(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
}

function sub_b8268443(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 64
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == uint8(('cd', 4)[1])
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0xfeaf968c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] < 0:
        revert with 0, 'SafeCast: value must be positive'
    if ext_call.return_data[32] > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 0, 17
    return 10^10 * ext_call.return_data[32], ext_call.return_data[96]
}



}
