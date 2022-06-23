contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAggregatedPremium(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg3.length) + 97
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < arg3.length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg2)
        staticcall arg2.0x573e4bdb with:
                gas gas_remaining wei
               args address(_69)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_72] == mem[_72]
        if mem[_72]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x822f426a with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _80 = mem[_79]
            require mem[_79] == mem[_79]
            require mem[_79 + 32] == bool(mem[_79 + 32])
            if 0 > -mem[_79] - 1:
                revert with 'NH{q', 17
            if mem[_79 + 32]:
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0xa2687c63 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _86 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 160
                _87 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 160
                require mem[_86] == mem[_86]
                mem[_87] = mem[_86]
                require mem[_86 + 32] == mem[_86 + 32]
                mem[_87 + 32] = mem[_86 + 32]
                require mem[_86 + 64] == mem[_86 + 64]
                mem[_87 + 64] = mem[_86 + 64]
                require mem[_86 + 96] == mem[_86 + 96]
                mem[_87 + 96] = mem[_86 + 96]
                require mem[_86 + 128] == bool(mem[_86 + 128])
                mem[_87 + 128] = mem[_86 + 128]
                require ext_code.size(arg2)
                staticcall arg2.0x506ae4ef with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_95] == mem[_95]
                if mem[_87 + 32] > -mem[_95] - 1:
                    revert with 'NH{q', 17
                if mem[_87 + 32] + mem[_95] < block.timestamp:
                    if 0 > -_80 - 1:
                        revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_c54cc330(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0xa2687c63 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _174 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _188 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require mem[_174] == mem[_174]
            mem[_188] = mem[_174]
            require mem[_174 + 32] == mem[_174 + 32]
            mem[_188 + 32] = mem[_174 + 32]
            require mem[_174 + 64] == mem[_174 + 64]
            mem[_188 + 64] = mem[_174 + 64]
            require mem[_174 + 96] == mem[_174 + 96]
            mem[_188 + 96] = mem[_174 + 96]
            require mem[_174 + 128] == bool(mem[_174 + 128])
            mem[_188 + 128] = mem[_174 + 128]
            if mem[_188 + 32] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].0x822f426a with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _236 = mem[_235]
            require mem[_235] == mem[_235]
            _240 = mem[_235 + 32]
            require mem[_235 + 32] == bool(mem[_235 + 32])
            _242 = mem[64]
            mem[64] = mem[64] + 128
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_242] = mem[(32 * idx) + 140 len 20]
            mem[_242 + 32] = mem[_188]
            mem[_242 + 64] = _236
            mem[_242 + 96] = bool(_240)
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _242
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _147 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            if s <= 0:
                mem[_147 + (32 * s) + 32] = 32
                _161 = mem[_147]
                mem[_147 + (32 * s) + 64] = mem[_147]
                idx = 0
                t = _147 + 32
                u = _147 + (32 * s) + 96
                while idx < mem[_147]:
                    _254 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_254 + 32]
                    mem[u + 64] = mem[_254 + 64]
                    mem[u + 96] = bool(mem[_254 + 96])
                    idx = idx + 1
                    t = t + 32
                    u = u + 128
                    continue 
                return memory
                  from mem[64]
                   len _147 + (32 * s) + (128 * _161) + -mem[64] + 96
            _252 = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            s = 0
            while idx < _252:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _252 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if s >= mem[_147]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _147 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _252 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s + 1
                continue 
            _261 = mem[64]
            mem[mem[64]] = 32
            _267 = mem[_147]
            mem[mem[64] + 32] = mem[_147]
            idx = 0
            s = _147 + 32
            t = mem[64] + 64
            while idx < _267:
                _334 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_334 + 32]
                mem[t + 64] = mem[_334 + 64]
                mem[t + 96] = bool(mem[_334 + 96])
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _261 + (128 * _267) + -mem[64] + 64
        mem[64] = _147 + (32 * s) + 160
        mem[_147 + (32 * s) + 32] = 0
        mem[_147 + (32 * s) + 64] = 0
        mem[_147 + (32 * s) + 96] = 0
        mem[_147 + (32 * s) + 128] = 0
        mem[var47001] = _147 + (32 * s) + 32
        t = var47001
        idx = var47002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[_147 + (32 * s) + 32] = 0
            mem[_147 + (32 * s) + 64] = 0
            mem[_147 + (32 * s) + 96] = 0
            mem[_147 + (32 * s) + 128] = 0
            mem[t + 32] = _147 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        if s <= 0:
            _341 = mem[64]
            mem[mem[64]] = 32
            _352 = mem[_147]
            mem[mem[64] + 32] = mem[_147]
            idx = 0
            s = _147 + 32
            t = mem[64] + 64
            while idx < _352:
                _437 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_437 + 32]
                mem[t + 64] = mem[_437 + 64]
                mem[t + 96] = bool(mem[_437 + 96])
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _341 + (128 * _352) + -mem[64] + 64
        _435 = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = 0
        while idx < _435:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _435 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s >= mem[_147]:
                revert with 'NH{q', 50
            mem[(32 * s) + _147 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _435 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s + 1
            continue 
        _448 = mem[64]
        mem[mem[64]] = 32
        _458 = mem[_147]
        mem[mem[64] + 32] = mem[_147]
        idx = 0
        s = _147 + 32
        t = mem[64] + 64
        while idx < _458:
            _502 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_502 + 32]
            mem[t + 64] = mem[_502 + 64]
            mem[t + 96] = bool(mem[_502 + 96])
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _448 + (128 * _458) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[var42001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var42001
    idx = var42002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _333 = mem[96]
    idx = 0
    s = 0
    while idx < _333:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0xa2687c63 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _371 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _388 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require mem[_371] == mem[_371]
        mem[_388] = mem[_371]
        require mem[_371 + 32] == mem[_371 + 32]
        mem[_388 + 32] = mem[_371 + 32]
        require mem[_371 + 64] == mem[_371 + 64]
        mem[_388 + 64] = mem[_371 + 64]
        require mem[_371 + 96] == mem[_371 + 96]
        mem[_388 + 96] = mem[_371 + 96]
        require mem[_371 + 128] == bool(mem[_371 + 128])
        mem[_388 + 128] = mem[_371 + 128]
        if mem[_388 + 32] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            _333 = mem[96]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x822f426a with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _428 = mem[_427]
        require mem[_427] == mem[_427]
        _429 = mem[_427 + 32]
        require mem[_427 + 32] == bool(mem[_427 + 32])
        _430 = mem[64]
        mem[64] = mem[64] + 128
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_430] = mem[(32 * idx) + 140 len 20]
        mem[_430 + 32] = mem[_388]
        mem[_430 + 64] = _428
        mem[_430 + 96] = bool(_429)
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _430
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _333 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _336 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        if s <= 0:
            mem[_336 + (32 * s) + 32] = 32
            _355 = mem[_336]
            mem[_336 + (32 * s) + 64] = mem[_336]
            idx = 0
            t = _336 + 32
            u = _336 + (32 * s) + 96
            while idx < mem[_336]:
                _439 = mem[t]
                mem[u] = mem[mem[t] + 12 len 20]
                mem[u + 32] = mem[_439 + 32]
                mem[u + 64] = mem[_439 + 64]
                mem[u + 96] = bool(mem[_439 + 96])
                idx = idx + 1
                t = t + 32
                u = u + 128
                continue 
            return memory
              from mem[64]
               len _336 + (32 * s) + (128 * _355) + -mem[64] + 96
        _436 = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = 0
        while idx < _436:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _436 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s >= mem[_336]:
                revert with 'NH{q', 50
            mem[(32 * s) + _336 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _436 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s + 1
            continue 
        _452 = mem[64]
        mem[mem[64]] = 32
        _459 = mem[_336]
        mem[mem[64] + 32] = mem[_336]
        idx = 0
        s = _336 + 32
        t = mem[64] + 64
        while idx < _459:
            _503 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_503 + 32]
            mem[t + 64] = mem[_503 + 64]
            mem[t + 96] = bool(mem[_503 + 96])
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _452 + (128 * _459) + -mem[64] + 64
    mem[64] = _336 + (32 * s) + 160
    mem[_336 + (32 * s) + 32] = 0
    mem[_336 + (32 * s) + 64] = 0
    mem[_336 + (32 * s) + 96] = 0
    mem[_336 + (32 * s) + 128] = 0
    mem[var54001] = _336 + (32 * s) + 32
    t = var54001
    idx = var54002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_336 + (32 * s) + 32] = 0
        mem[_336 + (32 * s) + 64] = 0
        mem[_336 + (32 * s) + 96] = 0
        mem[_336 + (32 * s) + 128] = 0
        mem[t + 32] = _336 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    if s <= 0:
        _508 = mem[64]
        mem[mem[64]] = 32
        _513 = mem[_336]
        mem[mem[64] + 32] = mem[_336]
        idx = 0
        s = _336 + 32
        t = mem[64] + 64
        while idx < _513:
            _538 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_538 + 32]
            mem[t + 64] = mem[_538 + 64]
            mem[t + 96] = bool(mem[_538 + 96])
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _508 + (128 * _513) + -mem[64] + 64
    _537 = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = 0
    while idx < _537:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            _537 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if s >= mem[_336]:
            revert with 'NH{q', 50
        mem[(32 * s) + _336 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _537 = mem[floor32(('cd', 4).length) + 97]
        idx = idx + 1
        s = s + 1
        continue 
    _544 = mem[64]
    mem[mem[64]] = 32
    _548 = mem[_336]
    mem[mem[64] + 32] = mem[_336]
    idx = 0
    s = _336 + 32
    t = mem[64] + 64
    while idx < _548:
        _558 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_558 + 32]
        mem[t + 64] = mem[_558 + 64]
        mem[t + 96] = bool(mem[_558 + 96])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _544 + (128 * _548) + -mem[64] + 64
}



}
