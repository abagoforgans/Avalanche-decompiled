contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_e786d75f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 2 * arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = 2 * arg1.length
    mem[64] = (98 * arg1.length) + 160
    if not uint255(arg1.length):
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require 2 * idx < mem[(32 * arg1.length) + 128]
            mem[(64 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
            mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _42 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        return 32, mem[mem[64] + 32 len (32 * _42) + 32]
    mem[(32 * arg1.length) + 160 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require 2 * idx < mem[(32 * arg1.length) + 128]
        mem[(64 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        require (2 * idx) + 1 < mem[(32 * arg1.length) + 128]
        mem[(32 * (2 * idx) + 1) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[32])
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    _48 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[mem[64] + 32 len (32 * _48) + 32]
}



}
