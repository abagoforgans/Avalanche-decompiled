contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1e6e949c(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 1:
        revert with 0, 'MSWAP: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _342 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == mem[_349 + 12 len 20]
            require ext_code.size(address(_342))
            staticcall address(_342).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_349 + 12 len 20] != address(s):
                _367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _371 = mem[_367]
                require mem[_367] == mem[_367 + 18 len 14]
                _375 = mem[_367 + 32]
                require mem[_367 + 32] == mem[_367 + 50 len 14]
                require mem[_367 + 64] == mem[_367 + 92 len 4]
                require ext_code.size(address(_342))
                staticcall address(_342).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _395 = mem[_391]
                require mem[_391] == mem[_391 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _375) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _371) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _371) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _375) and 10000 > -1 / Mask(112, 0, _375):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _375) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _375)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _371) / (10000 * Mask(112, 0, _375)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _395
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _372 = mem[_368]
            require mem[_368] == mem[_368 + 18 len 14]
            _376 = mem[_368 + 32]
            require mem[_368 + 32] == mem[_368 + 50 len 14]
            require mem[_368 + 64] == mem[_368 + 92 len 4]
            require ext_code.size(address(_342))
            staticcall address(_342).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _396 = mem[_392]
            require mem[_392] == mem[_392 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _372) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _376) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _376) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _372) and 10000 > -1 / Mask(112, 0, _372):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _372) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _372)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _376) / (10000 * Mask(112, 0, _372)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _396
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        mem[mem[64]] = 32
        _351 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 64 len 32 * _351] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _351]
        return 32, mem[mem[64] + 32 len (32 * _351) + 32]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    s = cd[36]
    t = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _346 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _350 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_350] == mem[_350 + 12 len 20]
        require ext_code.size(address(_346))
        staticcall address(_346).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_350 + 12 len 20] != address(s):
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _373 = mem[_369]
            require mem[_369] == mem[_369 + 18 len 14]
            _377 = mem[_369 + 32]
            require mem[_369 + 32] == mem[_369 + 50 len 14]
            require mem[_369 + 64] == mem[_369 + 92 len 4]
            require ext_code.size(address(_346))
            staticcall address(_346).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _397 = mem[_393]
            require mem[_393] == mem[_393 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _377) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _373) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _373) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _377) and 10000 > -1 / Mask(112, 0, _377):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _377) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _377)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _373) / (10000 * Mask(112, 0, _377)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _397
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _370 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _374 = mem[_370]
        require mem[_370] == mem[_370 + 18 len 14]
        _378 = mem[_370 + 32]
        require mem[_370 + 32] == mem[_370 + 50 len 14]
        require mem[_370 + 64] == mem[_370 + 92 len 4]
        require ext_code.size(address(_346))
        staticcall address(_346).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _398 = mem[_394]
        require mem[_394] == mem[_394 + 12 len 20]
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        if t <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
        if Mask(112, 0, _374) <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, _378) <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
        if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
            revert with 'NH{q', 17
        if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
            revert with 'NH{q', 17
        if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _378) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
            revert with 'NH{q', 17
        if Mask(112, 0, _374) and 10000 > -1 / Mask(112, 0, _374):
            revert with 'NH{q', 17
        if 10000 * Mask(112, 0, _374) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
            revert with 'NH{q', 17
        if not (10000 * Mask(112, 0, _374)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
            revert with 'NH{q', 18
        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _378) / (10000 * Mask(112, 0, _374)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
        if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _398
        t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
        continue 
    mem[mem[64]] = 32
    _352 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 64 len 32 * _352] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _352]
    return 32, mem[mem[64] + 32 len (32 * _352) + 32]
}

function sub_56e6ba44(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 1:
        revert with 0, 'MSWAP: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = mem[96]
        s = cd[36]
        t = cd[4]
        while idx:
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_349] == mem[_349 + 12 len 20]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_349 + 12 len 20] != address(s):
                _365 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _369 = mem[_365]
                require mem[_365] == mem[_365 + 18 len 14]
                _373 = mem[_365 + 32]
                require mem[_365 + 32] == mem[_365 + 50 len 14]
                require mem[_365 + 64] == mem[_365 + 92 len 4]
                require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
                staticcall mem[(32 * idx - 1) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _389 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _393 = mem[_389]
                require mem[_389] == mem[_389 + 12 len 20]
                if idx - 1 >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_OUTPUT_AMOUNT'
                if Mask(112, 0, _369) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _373) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _369) and t > -1 / Mask(112, 0, _369):
                    revert with 'NH{q', 17
                if Mask(112, 0, _369) * t and 10000 > -1 / Mask(112, 0, _369) * t:
                    revert with 'NH{q', 17
                if 10000 < mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if Mask(112, 0, _373) < t:
                    revert with 'NH{q', 17
                if Mask(112, 0, _373) - t and uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / Mask(112, 0, _373) - t:
                    revert with 'NH{q', 17
                if not (Mask(112, 0, _373) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if 10000 * Mask(112, 0, _369) * t / (Mask(112, 0, _373) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) > -2:
                    revert with 'NH{q', 17
                if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = (10000 * Mask(112, 0, _369) * t / (Mask(112, 0, _373) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000))) + 1
                if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = _393
                t = mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _366 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _370 = mem[_366]
            require mem[_366] == mem[_366 + 18 len 14]
            _374 = mem[_366 + 32]
            require mem[_366 + 32] == mem[_366 + 50 len 14]
            require mem[_366 + 64] == mem[_366 + 92 len 4]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _390 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _394 = mem[_390]
            require mem[_390] == mem[_390 + 12 len 20]
            if idx - 1 >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_OUTPUT_AMOUNT'
            if Mask(112, 0, _374) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _370) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _374) and t > -1 / Mask(112, 0, _374):
                revert with 'NH{q', 17
            if Mask(112, 0, _374) * t and 10000 > -1 / Mask(112, 0, _374) * t:
                revert with 'NH{q', 17
            if 10000 < mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if Mask(112, 0, _370) < t:
                revert with 'NH{q', 17
            if Mask(112, 0, _370) - t and uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / Mask(112, 0, _370) - t:
                revert with 'NH{q', 17
            if not (Mask(112, 0, _370) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if 10000 * Mask(112, 0, _374) * t / (Mask(112, 0, _370) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) > -2:
                revert with 'NH{q', 17
            if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = (10000 * Mask(112, 0, _374) * t / (Mask(112, 0, _370) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000))) + 1
            if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = _394
            t = mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        mem[mem[64]] = 32
        _339 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
        mem[mem[64] + 64 len 32 * _339] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _339]
        return 32, mem[mem[64] + 32 len (32 * _339) + 32]
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = mem[96]
    s = cd[36]
    t = cd[4]
    while idx:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
        staticcall mem[(32 * idx - 1) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _350 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_350] == mem[_350 + 12 len 20]
        require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
        staticcall mem[(32 * idx - 1) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_350 + 12 len 20] != address(s):
            _367 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _371 = mem[_367]
            require mem[_367] == mem[_367 + 18 len 14]
            _375 = mem[_367 + 32]
            require mem[_367 + 32] == mem[_367 + 50 len 14]
            require mem[_367 + 64] == mem[_367 + 92 len 4]
            require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
            staticcall mem[(32 * idx - 1) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _391 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _395 = mem[_391]
            require mem[_391] == mem[_391 + 12 len 20]
            if idx - 1 >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_OUTPUT_AMOUNT'
            if Mask(112, 0, _371) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _375) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _371) and t > -1 / Mask(112, 0, _371):
                revert with 'NH{q', 17
            if Mask(112, 0, _371) * t and 10000 > -1 / Mask(112, 0, _371) * t:
                revert with 'NH{q', 17
            if 10000 < mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if Mask(112, 0, _375) < t:
                revert with 'NH{q', 17
            if Mask(112, 0, _375) - t and uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / Mask(112, 0, _375) - t:
                revert with 'NH{q', 17
            if not (Mask(112, 0, _375) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if 10000 * Mask(112, 0, _371) * t / (Mask(112, 0, _375) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) > -2:
                revert with 'NH{q', 17
            if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = (10000 * Mask(112, 0, _371) * t / (Mask(112, 0, _375) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000))) + 1
            if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = _395
            t = mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _372 = mem[_368]
        require mem[_368] == mem[_368 + 18 len 14]
        _376 = mem[_368 + 32]
        require mem[_368 + 32] == mem[_368 + 50 len 14]
        require mem[_368 + 64] == mem[_368 + 92 len 4]
        require ext_code.size(mem[(32 * idx - 1) + 140 len 20])
        staticcall mem[(32 * idx - 1) + 140 len 20].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _392 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_392]
        require mem[_392] == mem[_392 + 12 len 20]
        if idx - 1 >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        if t <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_OUTPUT_AMOUNT'
        if Mask(112, 0, _376) <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, _372) <= 0:
            revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, _376) and t > -1 / Mask(112, 0, _376):
            revert with 'NH{q', 17
        if Mask(112, 0, _376) * t and 10000 > -1 / Mask(112, 0, _376) * t:
            revert with 'NH{q', 17
        if 10000 < mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1]:
            revert with 'NH{q', 17
        if Mask(112, 0, _372) < t:
            revert with 'NH{q', 17
        if Mask(112, 0, _372) - t and uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / Mask(112, 0, _372) - t:
            revert with 'NH{q', 17
        if not (Mask(112, 0, _372) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
            revert with 'NH{q', 18
        if 10000 * Mask(112, 0, _376) * t / (Mask(112, 0, _372) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) > -2:
            revert with 'NH{q', 17
        if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = (10000 * Mask(112, 0, _376) * t / (Mask(112, 0, _372) * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - (t * uint16(-mem[(32 * idx - 1) + floor32(('cd', 68).length) + 160 len 1] + 10000))) + 1
        if idx - 1 >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
            revert with 'NH{q', 50
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = _396
        t = mem[(32 * idx - 1) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
        continue 
    mem[mem[64]] = 32
    _340 = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]
    mem[mem[64] + 64 len 32 * _340] = mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * _340]
    return 32, mem[mem[64] + 32 len (32 * _340) + 32]
}

function sub_f4214a53(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98 > test266151307() or floor32(('cd', 100).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] == address(cd[132])
    if ('cd', 68).length < 1:
        revert with 0, 'MSWAP: INVALID_PATH'
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + floor32(('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _779 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_786] == mem[_786 + 12 len 20]
            require ext_code.size(address(_779))
            staticcall address(_779).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_786 + 12 len 20] != address(s):
                _818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _825 = mem[_818]
                require mem[_818] == mem[_818 + 18 len 14]
                _839 = mem[_818 + 32]
                require mem[_818 + 32] == mem[_818 + 50 len 14]
                require mem[_818 + 64] == mem[_818 + 92 len 4]
                require ext_code.size(address(_779))
                staticcall address(_779).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _879 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _883 = mem[_879]
                require mem[_879] == mem[_879 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _839) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _825) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _825) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _839) and 10000 > -1 / Mask(112, 0, _839):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _839) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _839)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _825) / (10000 * Mask(112, 0, _839)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _883
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _826 = mem[_819]
            require mem[_819] == mem[_819 + 18 len 14]
            _840 = mem[_819 + 32]
            require mem[_819 + 32] == mem[_819 + 50 len 14]
            require mem[_819 + 64] == mem[_819 + 92 len 4]
            require ext_code.size(address(_779))
            staticcall address(_779).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _880 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _884 = mem[_880]
            require mem[_880] == mem[_880 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _826) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _840) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _840) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _826) and 10000 > -1 / Mask(112, 0, _826):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _826) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _826)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _840) / (10000 * Mask(112, 0, _826)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _884
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _1027 = mem[96]
        idx = 0
        s = cd[36]
        t = 0
        while idx < _1027:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1031 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            _1036 = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1043 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1043] == mem[_1043 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1043 + 12 len 20] != address(s):
                _1053 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1061 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1061 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1061 + 36] = _1036
                    mem[_1061 + 68] = 0
                    mem[_1061 + 100] = address(cd[132])
                    mem[_1061 + 132] = 128
                    mem[_1061 + 164] = mem[_1061]
                    s = 0
                    while s < mem[_1061]:
                        mem[_1061 + s + 196] = mem[_1061 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1061]) > mem[_1061]:
                        mem[_1061 + mem[_1061] + 196] = 0
                    require ext_code.size(address(_1053))
                    call address(_1053).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1036, 0, address(cd[132]), 128, mem[_1061], mem[_1061 + 196 len ceil32(mem[_1061])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token0() with:
                            gas gas_remaining wei
                    mem[_1061 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1061 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1073 = mem[(32 * idx + 1) + 128]
                    _1077 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1077 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1077 + 36] = _1036
                    mem[_1077 + 68] = 0
                    mem[_1077 + 100] = address(_1073)
                    mem[_1077 + 132] = 128
                    mem[_1077 + 164] = mem[_1077]
                    s = 0
                    while s < mem[_1077]:
                        mem[_1077 + s + 196] = mem[_1077 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1077]) > mem[_1077]:
                        mem[_1077 + mem[_1077] + 196] = 0
                    require ext_code.size(address(_1053))
                    call address(_1053).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1036, 0, address(_1073), 128, mem[_1077], mem[_1077 + 196 len ceil32(mem[_1077])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token0() with:
                            gas gas_remaining wei
                    mem[_1077 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1077 + ceil32(return_data.size) + 32
            else:
                _1055 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1062 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1062 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1062 + 36] = 0
                    mem[_1062 + 68] = _1036
                    mem[_1062 + 100] = address(cd[132])
                    mem[_1062 + 132] = 128
                    mem[_1062 + 164] = mem[_1062]
                    s = 0
                    while s < mem[_1062]:
                        mem[_1062 + s + 196] = mem[_1062 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1062]) > mem[_1062]:
                        mem[_1062 + mem[_1062] + 196] = 0
                    require ext_code.size(address(_1055))
                    call address(_1055).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1036, address(cd[132]), 128, mem[_1062], mem[_1062 + 196 len ceil32(mem[_1062])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token1() with:
                            gas gas_remaining wei
                    mem[_1062 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1062 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1074 = mem[(32 * idx + 1) + 128]
                    _1078 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1078 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1078 + 36] = 0
                    mem[_1078 + 68] = _1036
                    mem[_1078 + 100] = address(_1074)
                    mem[_1078 + 132] = 128
                    mem[_1078 + 164] = mem[_1078]
                    s = 0
                    while s < mem[_1078]:
                        mem[_1078 + s + 196] = mem[_1078 + s + 32]
                        _1027 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1078]) > mem[_1078]:
                        mem[_1078 + mem[_1078] + 196] = 0
                    require ext_code.size(address(_1055))
                    call address(_1055).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1036, address(_1074), 128, mem[_1078], mem[_1078 + 196 len ceil32(mem[_1078])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1031))
                    staticcall address(_1031).token1() with:
                            gas gas_remaining wei
                    mem[_1078 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1078 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1027 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            t = _1036
            continue 
    else:
        mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        s = cd[36]
        t = cd[4]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _782 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_788] == mem[_788 + 12 len 20]
            require ext_code.size(address(_782))
            staticcall address(_782).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_788 + 12 len 20] != address(s):
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _829 = mem[_821]
                require mem[_821] == mem[_821 + 18 len 14]
                _841 = mem[_821 + 32]
                require mem[_821 + 32] == mem[_821 + 50 len 14]
                require mem[_821 + 64] == mem[_821 + 92 len 4]
                require ext_code.size(address(_782))
                staticcall address(_782).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _885 = mem[_881]
                require mem[_881] == mem[_881 + 12 len 20]
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                if t <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
                if Mask(112, 0, _841) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if Mask(112, 0, _829) <= 0:
                    revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
                if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                    revert with 'NH{q', 17
                if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                    revert with 'NH{q', 17
                if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _829) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                    revert with 'NH{q', 17
                if Mask(112, 0, _841) and 10000 > -1 / Mask(112, 0, _841):
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, _841) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                    revert with 'NH{q', 17
                if not (10000 * Mask(112, 0, _841)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                    revert with 'NH{q', 18
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _829) / (10000 * Mask(112, 0, _841)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
                if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                    revert with 'NH{q', 50
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = _885
                t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
                continue 
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _830 = mem[_822]
            require mem[_822] == mem[_822 + 18 len 14]
            _842 = mem[_822 + 32]
            require mem[_822 + 32] == mem[_822 + 50 len 14]
            require mem[_822 + 64] == mem[_822 + 92 len 4]
            require ext_code.size(address(_782))
            staticcall address(_782).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _886 = mem[_882]
            require mem[_882] == mem[_882 + 12 len 20]
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            if t <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_INPUT_AMOUNT'
            if Mask(112, 0, _830) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if Mask(112, 0, _842) <= 0:
                revert with 0, 'MSWAP: INSUFFICIENT_LIQUIDITY'
            if 10000 < mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1]:
                revert with 'NH{q', 17
            if t and uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) > -1 / t:
                revert with 'NH{q', 17
            if t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) and Mask(112, 0, _842) > -1 / t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000):
                revert with 'NH{q', 17
            if Mask(112, 0, _830) and 10000 > -1 / Mask(112, 0, _830):
                revert with 'NH{q', 17
            if 10000 * Mask(112, 0, _830) > (-1 * t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)) - 1:
                revert with 'NH{q', 17
            if not (10000 * Mask(112, 0, _830)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000)):
                revert with 'NH{q', 18
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130] = t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000) * Mask(112, 0, _842) / (10000 * Mask(112, 0, _830)) + (t * uint16(-mem[(32 * idx) + floor32(('cd', 68).length) + 160 len 1] + 10000))
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = _886
            t = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            continue 
        _1028 = mem[96]
        idx = 0
        s = cd[36]
        t = 0
        while idx < _1028:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1033 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 68).length) + floor32(('cd', 100).length) + 98]:
                revert with 'NH{q', 50
            _1040 = mem[(32 * idx) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 130]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1044 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1044] == mem[_1044 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[_1044 + 12 len 20] != address(s):
                _1057 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1063 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1063 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1063 + 36] = _1040
                    mem[_1063 + 68] = 0
                    mem[_1063 + 100] = address(cd[132])
                    mem[_1063 + 132] = 128
                    mem[_1063 + 164] = mem[_1063]
                    s = 0
                    while s < mem[_1063]:
                        mem[_1063 + s + 196] = mem[_1063 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1063]) > mem[_1063]:
                        mem[_1063 + mem[_1063] + 196] = 0
                    require ext_code.size(address(_1057))
                    call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1040, 0, address(cd[132]), 128, mem[_1063], mem[_1063 + 196 len ceil32(mem[_1063])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token0() with:
                            gas gas_remaining wei
                    mem[_1063 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1063 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1075 = mem[(32 * idx + 1) + 128]
                    _1079 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1079 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1079 + 36] = _1040
                    mem[_1079 + 68] = 0
                    mem[_1079 + 100] = address(_1075)
                    mem[_1079 + 132] = 128
                    mem[_1079 + 164] = mem[_1079]
                    s = 0
                    while s < mem[_1079]:
                        mem[_1079 + s + 196] = mem[_1079 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1079]) > mem[_1079]:
                        mem[_1079 + mem[_1079] + 196] = 0
                    require ext_code.size(address(_1057))
                    call address(_1057).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _1040, 0, address(_1075), 128, mem[_1079], mem[_1079 + 196 len ceil32(mem[_1079])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token0() with:
                            gas gas_remaining wei
                    mem[_1079 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1079 + ceil32(return_data.size) + 32
            else:
                _1059 = mem[(32 * idx) + 128]
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if idx == mem[96] - 1:
                    _1064 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1064 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1064 + 36] = 0
                    mem[_1064 + 68] = _1040
                    mem[_1064 + 100] = address(cd[132])
                    mem[_1064 + 132] = 128
                    mem[_1064 + 164] = mem[_1064]
                    s = 0
                    while s < mem[_1064]:
                        mem[_1064 + s + 196] = mem[_1064 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1064]) > mem[_1064]:
                        mem[_1064 + mem[_1064] + 196] = 0
                    require ext_code.size(address(_1059))
                    call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1040, address(cd[132]), 128, mem[_1064], mem[_1064 + 196 len ceil32(mem[_1064])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token1() with:
                            gas gas_remaining wei
                    mem[_1064 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1064 + ceil32(return_data.size) + 32
                else:
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _1076 = mem[(32 * idx + 1) + 128]
                    _1080 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1080 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_1080 + 36] = 0
                    mem[_1080 + 68] = _1040
                    mem[_1080 + 100] = address(_1076)
                    mem[_1080 + 132] = 128
                    mem[_1080 + 164] = mem[_1080]
                    s = 0
                    while s < mem[_1080]:
                        mem[_1080 + s + 196] = mem[_1080 + s + 32]
                        _1028 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(mem[_1080]) > mem[_1080]:
                        mem[_1080 + mem[_1080] + 196] = 0
                    require ext_code.size(address(_1059))
                    call address(_1059).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _1040, address(_1076), 128, mem[_1080], mem[_1080 + 196 len ceil32(mem[_1080])]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(_1033))
                    staticcall address(_1033).token1() with:
                            gas gas_remaining wei
                    mem[_1080 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1080 + ceil32(return_data.size) + 32
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            _1028 = mem[96]
            idx = idx + 1
            s = ext_call.return_data[0]
            t = _1040
            continue 
    return t, address(s)
}



}
