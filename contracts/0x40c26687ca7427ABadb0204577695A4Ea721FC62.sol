contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ae85e61a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        idx = 0
        s = 96
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            _52 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _55 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < 32 * _55:
                mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                s = s + 32
                continue 
            require ext_code.size(address(_52))
            staticcall address(_52).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[mem[64] + 68 len (32 * _55) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _97 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _99 = mem[_97]
            require mem[_97] <= 4294967296
            require mem[_97] + 32 <= return_data.size
            require mem[mem[_97] + _97] <= 4294967296 and mem[_97] + (32 * mem[mem[_97] + _97]) + 32 <= return_data.size
            mem[_97 + ceil32(return_data.size)] = mem[mem[_97] + _97]
            _105 = mem[_99 + _97]
            s = 0
            while s < 32 * _105:
                mem[_97 + ceil32(return_data.size) + s + 32] = mem[_99 + _97 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _105) + _97 + ceil32(return_data.size) + 32
            require 0 < mem[_97 + ceil32(return_data.size)]
            require floor32(_105) < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            mem[(Mask(251, 0, _105) * 32) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_97 + ceil32(return_data.size) + 32]
            s = floor32(_105) + 1
            s = _97 + ceil32(return_data.size)
            s = _52
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _51 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _51) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        require idx < mem[96]
        _59 = mem[(32 * idx) + 128]
        _60 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg3
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
        _62 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < 32 * _62:
            mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
            s = s + 32
            continue 
        require ext_code.size(address(_59))
        staticcall address(_59).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len (32 * _62) + _60 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _98 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _101 = mem[_98]
        require mem[_98] <= 4294967296
        require mem[_98] + 32 <= return_data.size
        require mem[mem[_98] + _98] <= 4294967296 and mem[_98] + (32 * mem[mem[_98] + _98]) + 32 <= return_data.size
        mem[_98 + ceil32(return_data.size)] = mem[mem[_98] + _98]
        _106 = mem[_101 + _98]
        s = 0
        while s < 32 * _106:
            mem[_98 + ceil32(return_data.size) + s + 32] = mem[_101 + _98 + s + 32]
            s = s + 32
            continue 
        mem[64] = (32 * _106) + _98 + ceil32(return_data.size) + 32
        require 0 < mem[_98 + ceil32(return_data.size)]
        require floor32(_106) < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[(Mask(251, 0, _106) * 32) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_98 + ceil32(return_data.size) + 32]
        s = floor32(_106) + 1
        s = _98 + ceil32(return_data.size)
        s = _59
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _58 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _58) + 32]
}



}
