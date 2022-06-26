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

function sub_3a13220c(?) payable {
    require calldata.size - 4 >= 96
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
    require cd[68] == address(cd[68])
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
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            _212 = mem[64]
            if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 160
            require mem[_198] == mem[_198]
            mem[_212] = mem[_198]
            require mem[_198 + 32] == mem[_198 + 32]
            mem[_212 + 32] = mem[_198 + 32]
            require mem[_198 + 64] == mem[_198 + 64]
            mem[_212 + 64] = mem[_198 + 64]
            require mem[_198 + 96] == mem[_198 + 96]
            mem[_212 + 96] = mem[_198 + 96]
            require mem[_198 + 128] == bool(mem[_198 + 128])
            mem[_212 + 128] = mem[_198 + 128]
            if mem[_212 + 32] <= 0:
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
            _264 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _265 = mem[_264]
            require mem[_264] == mem[_264]
            _269 = mem[_264 + 32]
            require mem[_264 + 32] == bool(mem[_264 + 32])
            require ext_code.size(address(cd[68]))
            staticcall address(cd[68]).0x506ae4ef with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _273 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _274 = mem[_273]
            require mem[_273] == mem[_273]
            _279 = mem[64]
            mem[64] = mem[64] + 160
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[_279] = mem[(32 * idx) + 140 len 20]
            mem[_279 + 32] = mem[_212]
            mem[_279 + 64] = _265
            mem[_279 + 96] = bool(_269)
            if mem[_212 + 32] > -_274 - 1:
                revert with 'NH{q', 17
            mem[_279 + 128] = mem[_212 + 32] + _274
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _279
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        _171 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            if s <= 0:
                mem[_171 + (32 * s) + 32] = 32
                _185 = mem[_171]
                mem[_171 + (32 * s) + 64] = mem[_171]
                idx = 0
                t = _171 + 32
                u = _171 + (32 * s) + 96
                while idx < mem[_171]:
                    _293 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_293 + 32]
                    mem[u + 64] = mem[_293 + 64]
                    mem[u + 96] = bool(mem[_293 + 96])
                    mem[u + 128] = mem[_293 + 128]
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _171 + (32 * s) + (160 * _185) + -mem[64] + 96
            _291 = mem[floor32(('cd', 4).length) + 97]
            idx = 0
            s = 0
            while idx < _291:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                    if idx == -1:
                        revert with 'NH{q', 17
                    _291 = mem[floor32(('cd', 4).length) + 97]
                    idx = idx + 1
                    s = s
                    continue 
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if s >= mem[_171]:
                    revert with 'NH{q', 50
                mem[(32 * s) + _171 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                if s == -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _291 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s + 1
                continue 
            _300 = mem[64]
            mem[mem[64]] = 32
            _306 = mem[_171]
            mem[mem[64] + 32] = mem[_171]
            idx = 0
            s = _171 + 32
            t = mem[64] + 64
            while idx < _306:
                _383 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_383 + 32]
                mem[t + 64] = mem[_383 + 64]
                mem[t + 96] = bool(mem[_383 + 96])
                mem[t + 128] = mem[_383 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _300 + (160 * _306) + -mem[64] + 64
        mem[64] = _171 + (32 * s) + 192
        mem[_171 + (32 * s) + 32] = 0
        mem[_171 + (32 * s) + 64] = 0
        mem[_171 + (32 * s) + 96] = 0
        mem[_171 + (32 * s) + 128] = 0
        mem[_171 + (32 * s) + 160] = 0
        mem[var56001] = _171 + (32 * s) + 32
        t = var56001
        idx = var56002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[_171 + (32 * s) + 32] = 0
            mem[_171 + (32 * s) + 64] = 0
            mem[_171 + (32 * s) + 96] = 0
            mem[_171 + (32 * s) + 128] = 0
            mem[_171 + (32 * s) + 160] = 0
            mem[t + 32] = _171 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        if s <= 0:
            _390 = mem[64]
            mem[mem[64]] = 32
            _401 = mem[_171]
            mem[mem[64] + 32] = mem[_171]
            idx = 0
            s = _171 + 32
            t = mem[64] + 64
            while idx < _401:
                _498 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_498 + 32]
                mem[t + 64] = mem[_498 + 64]
                mem[t + 96] = bool(mem[_498 + 96])
                mem[t + 128] = mem[_498 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _390 + (160 * _401) + -mem[64] + 64
        _496 = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = 0
        while idx < _496:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _496 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s >= mem[_171]:
                revert with 'NH{q', 50
            mem[(32 * s) + _171 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _496 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s + 1
            continue 
        _509 = mem[64]
        mem[mem[64]] = 32
        _519 = mem[_171]
        mem[mem[64] + 32] = mem[_171]
        idx = 0
        s = _171 + 32
        t = mem[64] + 64
        while idx < _519:
            _569 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_569 + 32]
            mem[t + 64] = mem[_569 + 64]
            mem[t + 96] = bool(mem[_569 + 96])
            mem[t + 128] = mem[_569 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _509 + (160 * _519) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[var51001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var51001
    idx = var51002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _382 = mem[96]
    idx = 0
    s = 0
    while idx < _382:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0xa2687c63 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        _437 = mem[64]
        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 160
        require mem[_420] == mem[_420]
        mem[_437] = mem[_420]
        require mem[_420 + 32] == mem[_420 + 32]
        mem[_437 + 32] = mem[_420 + 32]
        require mem[_420 + 64] == mem[_420 + 64]
        mem[_437 + 64] = mem[_420 + 64]
        require mem[_420 + 96] == mem[_420 + 96]
        mem[_437 + 96] = mem[_420 + 96]
        require mem[_420 + 128] == bool(mem[_420 + 128])
        mem[_437 + 128] = mem[_420 + 128]
        if mem[_437 + 32] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            _382 = mem[96]
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
        _483 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _484 = mem[_483]
        require mem[_483] == mem[_483]
        _485 = mem[_483 + 32]
        require mem[_483 + 32] == bool(mem[_483 + 32])
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).0x506ae4ef with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _488 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _489 = mem[_488]
        require mem[_488] == mem[_488]
        _490 = mem[64]
        mem[64] = mem[64] + 160
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[_490] = mem[(32 * idx) + 140 len 20]
        mem[_490 + 32] = mem[_437]
        mem[_490 + 64] = _484
        mem[_490 + 96] = bool(_485)
        if mem[_437 + 32] > -_489 - 1:
            revert with 'NH{q', 17
        mem[_490 + 128] = mem[_437 + 32] + _489
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _490
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _382 = mem[96]
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    _385 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        if s <= 0:
            mem[_385 + (32 * s) + 32] = 32
            _404 = mem[_385]
            mem[_385 + (32 * s) + 64] = mem[_385]
            idx = 0
            t = _385 + 32
            u = _385 + (32 * s) + 96
            while idx < mem[_385]:
                _500 = mem[t]
                mem[u] = mem[mem[t] + 12 len 20]
                mem[u + 32] = mem[_500 + 32]
                mem[u + 64] = mem[_500 + 64]
                mem[u + 96] = bool(mem[_500 + 96])
                mem[u + 128] = mem[_500 + 128]
                idx = idx + 1
                t = t + 32
                u = u + 160
                continue 
            return memory
              from mem[64]
               len _385 + (32 * s) + (160 * _404) + -mem[64] + 96
        _497 = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = 0
        while idx < _497:
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                _497 = mem[floor32(('cd', 4).length) + 97]
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            if s >= mem[_385]:
                revert with 'NH{q', 50
            mem[(32 * s) + _385 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _497 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s + 1
            continue 
        _513 = mem[64]
        mem[mem[64]] = 32
        _520 = mem[_385]
        mem[mem[64] + 32] = mem[_385]
        idx = 0
        s = _385 + 32
        t = mem[64] + 64
        while idx < _520:
            _570 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_570 + 32]
            mem[t + 64] = mem[_570 + 64]
            mem[t + 96] = bool(mem[_570 + 96])
            mem[t + 128] = mem[_570 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _513 + (160 * _520) + -mem[64] + 64
    mem[64] = _385 + (32 * s) + 192
    mem[_385 + (32 * s) + 32] = 0
    mem[_385 + (32 * s) + 64] = 0
    mem[_385 + (32 * s) + 96] = 0
    mem[_385 + (32 * s) + 128] = 0
    mem[_385 + (32 * s) + 160] = 0
    mem[var63001] = _385 + (32 * s) + 32
    t = var63001
    idx = var63002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_385 + (32 * s) + 32] = 0
        mem[_385 + (32 * s) + 64] = 0
        mem[_385 + (32 * s) + 96] = 0
        mem[_385 + (32 * s) + 128] = 0
        mem[_385 + (32 * s) + 160] = 0
        mem[t + 32] = _385 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    if s <= 0:
        _575 = mem[64]
        mem[mem[64]] = 32
        _580 = mem[_385]
        mem[mem[64] + 32] = mem[_385]
        idx = 0
        s = _385 + 32
        t = mem[64] + 64
        while idx < _580:
            _609 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_609 + 32]
            mem[t + 64] = mem[_609 + 64]
            mem[t + 96] = bool(mem[_609 + 96])
            mem[t + 128] = mem[_609 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _575 + (160 * _580) + -mem[64] + 64
    _608 = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = 0
    while idx < _608:
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if not mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 12 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            _608 = mem[floor32(('cd', 4).length) + 97]
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        if s >= mem[_385]:
            revert with 'NH{q', 50
        mem[(32 * s) + _385 + 32] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _608 = mem[floor32(('cd', 4).length) + 97]
        idx = idx + 1
        s = s + 1
        continue 
    _615 = mem[64]
    mem[mem[64]] = 32
    _619 = mem[_385]
    mem[mem[64] + 32] = mem[_385]
    idx = 0
    s = _385 + 32
    t = mem[64] + 64
    while idx < _619:
        _631 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_631 + 32]
        mem[t + 64] = mem[_631 + 64]
        mem[t + 96] = bool(mem[_631 + 96])
        mem[t + 128] = mem[_631 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _615 + (160 * _619) + -mem[64] + 64
}



}
