contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7789c3f8(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = arg2
    mem[(32 * arg3.length) + 164] = 64
    mem[(32 * arg3.length) + 196] = arg3.length
    mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        return 0
    mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _22 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg3.length) + 128]
    _27 = mem[_22 + (32 * arg3.length) + 128]
    mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[_22 + (32 * arg3.length) + 128])] = mem[_22 + (32 * arg3.length) + 160 len floor32(mem[_22 + (32 * arg3.length) + 128])]
    require 1 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
    mem[(32 * _27) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[(32 * arg3.length) + ceil32(return_data.size) + 192]
    return memory
      from (32 * _27) + (32 * arg3.length) + ceil32(return_data.size) + 160
       len 32
}



}
