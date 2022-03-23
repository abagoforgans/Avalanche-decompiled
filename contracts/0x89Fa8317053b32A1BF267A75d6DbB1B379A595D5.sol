contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7f2b0c09(?) payable {
    require calldata.size - 4 >= 128
    mem[160] = arg3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg2
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        return 0
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _24 = mem[192 len 4], Mask(224, 32, arg2) >> 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]
    _29 = mem[_24 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_24 + 192])] = mem[_24 + 224 len floor32(mem[_24 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _29) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _29) + ceil32(return_data.size) + 224
       len 32
}



}
