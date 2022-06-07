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
        while idx < arg1.length:
            require idx < mem[96]
            _54 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[(32 * arg1.length) + 128]
            _57 = mem[(32 * arg1.length) + 128]
            s = 0
            while s < 32 * _57:
                mem[mem[64] + s + 100] = mem[(32 * arg1.length) + s + 160]
                s = s + 32
                continue 
            require ext_code.size(address(_54))
            staticcall address(_54).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[mem[64] + 68 len (32 * _57) + 32]
            if ext_call.success:
                _109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _116 = mem[_109]
                require mem[_109] <= 4294967296
                require mem[_109] + 32 <= return_data.size
                require mem[mem[_109] + _109] <= 4294967296 and mem[_109] + (32 * mem[mem[_109] + _109]) + 32 <= return_data.size
                mem[_109 + ceil32(return_data.size)] = mem[mem[_109] + _109]
                _132 = mem[_116 + _109]
                s = 0
                while s < 32 * _132:
                    mem[_109 + ceil32(return_data.size) + s + 32] = mem[_116 + _109 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _132) + _109 + ceil32(return_data.size) + 32
                require 1 < mem[_109 + ceil32(return_data.size)]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_109 + ceil32(return_data.size) + 64]
            idx = idx + 1
            s = _54
            continue 
        idx = 0
        t = 0
        while idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= t:
                idx = idx + 1
                t = t
                continue 
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            idx = idx + 1
            t = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            continue 
        if not t:
            return 0
        _107 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_107 + 32 len 64] = call.data[calldata.size len 64]
        require 1 < mem[(32 * arg1.length) + 128]
        require 0 < mem[_107]
        mem[_107 + 32] = mem[(32 * arg1.length) + 204 len 20]
        require 0 < mem[(32 * arg1.length) + 128]
        require 1 < mem[_107]
        mem[_107 + 64] = mem[(32 * arg1.length) + 172 len 20]
        _195 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        u = 0
        v = s
        while idx < _195:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                idx = idx + 1
                u = u
                v = v
                continue 
            require idx < mem[96]
            _211 = mem[(32 * idx) + 128]
            _212 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_107]
            _214 = mem[_107]
            s = 0
            while s < 32 * _214:
                mem[mem[64] + s + 100] = mem[_107 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_211))
            staticcall address(_211).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _214) + _212 + -mem[64] + 96]
            if not ext_call.success:
                idx = idx + 1
                u = u
                v = _211
                continue 
            _255 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _257 = mem[_255]
            require mem[_255] <= 4294967296
            require mem[_255] + 32 <= return_data.size
            require mem[mem[_255] + _255] <= 4294967296 and mem[_255] + (32 * mem[mem[_255] + _255]) + 32 <= return_data.size
            mem[_255 + ceil32(return_data.size)] = mem[mem[_255] + _255]
            _263 = mem[_257 + _255]
            s = 0
            while s < 32 * _263:
                mem[_255 + ceil32(return_data.size) + s + 32] = mem[_257 + _255 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _263) + _255 + ceil32(return_data.size) + 32
            if 1 < mem[_255 + ceil32(return_data.size)]:
                if mem[_255 + ceil32(return_data.size) + 64] <= u:
                    idx = idx + 1
                    u = u
                    v = _211
                    continue 
                if 1 < mem[_255 + ceil32(return_data.size)]:
                    idx = idx + 1
                    u = mem[_255 + ceil32(return_data.size) + 64]
                    v = _211
                    continue 
            revert
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        s = 0
        while idx < arg1.length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
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
            staticcall address(_59).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, mem[mem[64] + 68 len (32 * _62) + 32]
            if ext_call.success:
                _112 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _121 = mem[_112]
                require mem[_112] <= 4294967296
                require mem[_112] + 32 <= return_data.size
                require mem[mem[_112] + _112] <= 4294967296 and mem[_112] + (32 * mem[mem[_112] + _112]) + 32 <= return_data.size
                mem[_112 + ceil32(return_data.size)] = mem[mem[_112] + _112]
                _134 = mem[_121 + _112]
                s = 0
                while s < 32 * _134:
                    mem[_112 + ceil32(return_data.size) + s + 32] = mem[_121 + _112 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _134) + _112 + ceil32(return_data.size) + 32
                require 1 < mem[_112 + ceil32(return_data.size)]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[_112 + ceil32(return_data.size) + 64]
            idx = idx + 1
            s = _59
            continue 
        idx = 0
        t = 0
        while idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= t:
                idx = idx + 1
                t = t
                continue 
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            idx = idx + 1
            t = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            continue 
        if not t:
            return 0
        _110 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_110 + 32 len 64] = call.data[calldata.size len 64]
        require 1 < mem[(32 * arg1.length) + 128]
        require 0 < mem[_110]
        mem[_110 + 32] = mem[(32 * arg1.length) + 204 len 20]
        require 0 < mem[(32 * arg1.length) + 128]
        require 1 < mem[_110]
        mem[_110 + 64] = mem[(32 * arg1.length) + 172 len 20]
        _196 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        u = 0
        v = s
        while idx < _196:
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                idx = idx + 1
                u = u
                v = v
                continue 
            require idx < mem[96]
            _221 = mem[(32 * idx) + 128]
            _222 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = t
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_110]
            _224 = mem[_110]
            s = 0
            while s < 32 * _224:
                mem[mem[64] + s + 100] = mem[_110 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(address(_221))
            staticcall address(_221).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * _224) + _222 + -mem[64] + 96]
            if not ext_call.success:
                idx = idx + 1
                u = u
                v = _221
                continue 
            _256 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _259 = mem[_256]
            require mem[_256] <= 4294967296
            require mem[_256] + 32 <= return_data.size
            require mem[mem[_256] + _256] <= 4294967296 and mem[_256] + (32 * mem[mem[_256] + _256]) + 32 <= return_data.size
            mem[_256 + ceil32(return_data.size)] = mem[mem[_256] + _256]
            _264 = mem[_259 + _256]
            s = 0
            while s < 32 * _264:
                mem[_256 + ceil32(return_data.size) + s + 32] = mem[_259 + _256 + s + 32]
                s = s + 32
                continue 
            mem[64] = (32 * _264) + _256 + ceil32(return_data.size) + 32
            if 1 < mem[_256 + ceil32(return_data.size)]:
                if mem[_256 + ceil32(return_data.size) + 64] <= u:
                    idx = idx + 1
                    u = u
                    v = _221
                    continue 
                if 1 < mem[_256 + ceil32(return_data.size)]:
                    idx = idx + 1
                    u = mem[_256 + ceil32(return_data.size) + 64]
                    v = _221
                    continue 
            revert
    if u <= arg3:
        return 0, 0, 0, u
    return 1, 0, 0, u
}



}
