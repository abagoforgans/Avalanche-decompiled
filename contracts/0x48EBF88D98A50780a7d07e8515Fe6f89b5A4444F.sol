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
        s = 0
        t = 0
        while idx < arg1.length:
            require idx < mem[96]
            _55 = mem[(32 * idx) + 128]
            _56 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _58 = mem[(32 * arg1.length) + 128]
            t = 0
            while t < 32 * _58:
                mem[mem[64] + t + 100] = mem[(32 * arg1.length) + t + 160]
                t = t + 32
                continue 
            require ext_code.size(address(_55))
            staticcall address(_55).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _58) + _56 + -mem[64] + 96]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = _55
                continue 
            _170 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _181 = mem[_170]
            require mem[_170] <= 4294967296
            require mem[_170] + 32 <= return_data.size
            require mem[mem[_170] + _170] <= 4294967296 and mem[_170] + (32 * mem[mem[_170] + _170]) + 32 <= return_data.size
            mem[_170 + ceil32(return_data.size)] = mem[mem[_170] + _170]
            _199 = mem[_181 + _170]
            t = 0
            while t < 32 * _199:
                mem[_170 + ceil32(return_data.size) + t + 32] = mem[_181 + _170 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _199) + _170 + ceil32(return_data.size) + 32
            if 1 < mem[_170 + ceil32(return_data.size)]:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_170 + ceil32(return_data.size) + 64]
                    if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= s:
                            idx = idx + 1
                            s = s
                            t = _55
                            continue 
                        if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            t = _55
                            continue 
            revert
        if not s:
            return 0
        _63 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_63 + 32 len 64] = call.data[calldata.size len 64]
        require 1 < mem[(32 * arg1.length) + 128]
        require 0 < mem[_63]
        mem[_63 + 32] = mem[(32 * arg1.length) + 204 len 20]
        require 0 < mem[(32 * arg1.length) + 128]
        require 1 < mem[_63]
        mem[_63 + 64] = mem[(32 * arg1.length) + 172 len 20]
        _159 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        u = 0
        v = t
        while idx < _159:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                idx = idx + 1
                u = u
                v = v
                continue 
            require idx < mem[96]
            _177 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_63]
            _180 = mem[_63]
            t = 0
            while t < 32 * _180:
                mem[mem[64] + t + 100] = mem[_63 + t + 32]
                t = t + 32
                continue 
            require ext_code.size(address(_177))
            staticcall address(_177).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _180) + 32]
            if not ext_call.success:
                idx = idx + 1
                u = u
                v = _177
                continue 
            _243 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _247 = mem[_243]
            require mem[_243] <= 4294967296
            require mem[_243] + 32 <= return_data.size
            require mem[mem[_243] + _243] <= 4294967296 and mem[_243] + (32 * mem[mem[_243] + _243]) + 32 <= return_data.size
            mem[_243 + ceil32(return_data.size)] = mem[mem[_243] + _243]
            _261 = mem[_247 + _243]
            s = 0
            while s < 32 * _261:
                mem[_243 + ceil32(return_data.size) + s + 32] = mem[_247 + _243 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _261) + _243 + ceil32(return_data.size) + 32
            if 1 < mem[_243 + ceil32(return_data.size)]:
                if mem[_243 + ceil32(return_data.size) + 64] <= u:
                    idx = idx + 1
                    u = u
                    v = _177
                    continue 
                if 1 < mem[_243 + ceil32(return_data.size)]:
                    idx = idx + 1
                    u = mem[_243 + ceil32(return_data.size) + 64]
                    v = _177
                    continue 
            revert
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        s = 0
        t = 0
        while idx < arg1.length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _62 = mem[(32 * arg1.length) + 128]
            t = 0
            while t < 32 * _62:
                mem[mem[64] + t + 100] = mem[(32 * arg1.length) + t + 160]
                t = t + 32
                continue 
            require ext_code.size(address(_59))
            staticcall address(_59).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[mem[64] + 68 len (32 * _62) + 32]
            if not ext_call.success:
                idx = idx + 1
                s = s
                t = _59
                continue 
            _172 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _191 = mem[_172]
            require mem[_172] <= 4294967296
            require mem[_172] + 32 <= return_data.size
            require mem[mem[_172] + _172] <= 4294967296 and mem[_172] + (32 * mem[mem[_172] + _172]) + 32 <= return_data.size
            mem[_172 + ceil32(return_data.size)] = mem[mem[_172] + _172]
            _200 = mem[_191 + _172]
            t = 0
            while t < 32 * _200:
                mem[_172 + ceil32(return_data.size) + t + 32] = mem[_191 + _172 + t + 32]
                t = t + 32
                continue 
            mem[64] = (32 * _200) + _172 + ceil32(return_data.size) + 32
            if 1 < mem[_172 + ceil32(return_data.size)]:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_172 + ceil32(return_data.size) + 64]
                    if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= s:
                            idx = idx + 1
                            s = s
                            t = _59
                            continue 
                        if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            t = _59
                            continue 
            revert
        if not s:
            return 0
        _64 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_64 + 32 len 64] = call.data[calldata.size len 64]
        require 1 < mem[(32 * arg1.length) + 128]
        require 0 < mem[_64]
        mem[_64 + 32] = mem[(32 * arg1.length) + 204 len 20]
        require 0 < mem[(32 * arg1.length) + 128]
        require 1 < mem[_64]
        mem[_64 + 64] = mem[(32 * arg1.length) + 172 len 20]
        _160 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        u = 0
        v = t
        while idx < _160:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                idx = idx + 1
                u = u
                v = v
                continue 
            require idx < mem[96]
            _187 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_64]
            _190 = mem[_64]
            t = 0
            while t < 32 * _190:
                mem[mem[64] + t + 100] = mem[_64 + t + 32]
                t = t + 32
                continue 
            require ext_code.size(address(_187))
            staticcall address(_187).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args s, 64, mem[mem[64] + 68 len (32 * _190) + 32]
            if not ext_call.success:
                idx = idx + 1
                u = u
                v = _187
                continue 
            _245 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _251 = mem[_245]
            require mem[_245] <= 4294967296
            require mem[_245] + 32 <= return_data.size
            require mem[mem[_245] + _245] <= 4294967296 and mem[_245] + (32 * mem[mem[_245] + _245]) + 32 <= return_data.size
            mem[_245 + ceil32(return_data.size)] = mem[mem[_245] + _245]
            _263 = mem[_251 + _245]
            s = 0
            while s < 32 * _263:
                mem[_245 + ceil32(return_data.size) + s + 32] = mem[_251 + _245 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _263) + _245 + ceil32(return_data.size) + 32
            if 1 < mem[_245 + ceil32(return_data.size)]:
                if mem[_245 + ceil32(return_data.size) + 64] <= u:
                    idx = idx + 1
                    u = u
                    v = _187
                    continue 
                if 1 < mem[_245 + ceil32(return_data.size)]:
                    idx = idx + 1
                    u = mem[_245 + ceil32(return_data.size) + 64]
                    v = _187
                    continue 
            revert
    if u <= arg3:
        return 0, 0, 0, s, u
    return 1, 0, 0, s, u
}



}
