contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_3253aac3(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _21 = mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[(32 * arg2.length) + mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 128]
    _24 = mem[(32 * arg2.length) + _21 + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + _21 + 128])] = mem[(32 * arg2.length) + _21 + 160 len floor32(mem[(32 * arg2.length) + _21 + 128])]
    mem[(32 * _24) + (32 * arg2.length) + ceil32(return_data.size) + 160] = 32
    mem[(32 * _24) + (32 * arg2.length) + ceil32(return_data.size) + 192] = mem[(32 * arg2.length) + ceil32(return_data.size) + 128]
    mem[(32 * _24) + (32 * arg2.length) + ceil32(return_data.size) + 224 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])] = mem[(32 * arg2.length) + ceil32(return_data.size) + 160 len floor32(mem[(32 * arg2.length) + ceil32(return_data.size) + 128])]
    return 32, mem[(32 * _24) + (32 * arg2.length) + ceil32(return_data.size) + 192 len (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + 128]) + 32], 
}



}
