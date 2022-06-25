contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_277e5b77(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length:
        mem[128 len 32 * ('cd', 4).length] = code.data[1083 len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        mem[(32 * idx) + 128] = eth.balance(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 4).length) + 192 len floor32(('cd', 4).length)] = mem[128 len floor32(('cd', 4).length)]
    return Array(len=('cd', 4).length, data=mem[128 len floor32(('cd', 4).length)], mem[(32 * ('cd', 4).length) + floor32(('cd', 4).length) + 192 len (32 * ('cd', 4).length) - floor32(('cd', 4).length)]), 
}

function sub_8afd0b75(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length:
        mem[128 len 32 * ('cd', 36).length] = code.data[1083 len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        mem[(32 * ('cd', 36).length) + 132] = address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)])
        mem[(32 * ('cd', 36).length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < ('cd', 36).length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 192 len floor32(('cd', 36).length)] = mem[128 len floor32(('cd', 36).length)]
    return Array(len=('cd', 36).length, data=mem[128 len floor32(('cd', 36).length)], mem[(32 * ('cd', 36).length) + floor32(('cd', 36).length) + 192 len (32 * ('cd', 36).length) - floor32(('cd', 36).length)]), 
}



}
