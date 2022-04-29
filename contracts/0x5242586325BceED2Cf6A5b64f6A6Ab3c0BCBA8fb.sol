contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_bddf494e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    if ('cd', 4).length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
    mem[64] = (98 * ('cd', 4).length) + 160
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _78 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_78] == mem[_78 + 18 len 14]
            _88 = mem[_78 + 32]
            require mem[_78 + 32] == mem[_78 + 50 len 14]
            require mem[_78 + 64] == mem[_78 + 92 len 4]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 2 * idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(64 * idx) + (32 * ('cd', 4).length) + 160] = mem[_78 + 18 len 14]
            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * idx):
                revert with 0, 17
            if (2 * idx) + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _88)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _80 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 64 len 32 * _80] = mem[(32 * ('cd', 4).length) + 160 len 32 * _80]
        return 32, mem[mem[64] + 32 len (32 * _80) + 32]
    mem[(32 * ('cd', 4).length) + 160 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _79 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_79] == mem[_79 + 18 len 14]
        _89 = mem[_79 + 32]
        require mem[_79 + 32] == mem[_79 + 50 len 14]
        require mem[_79 + 64] == mem[_79 + 92 len 4]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 * idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(64 * idx) + (32 * ('cd', 4).length) + 160] = mem[_79 + 18 len 14]
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 1 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 1 >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        mem[(32 * (2 * idx) + 1) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _89)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _81 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 64 len 32 * _81] = mem[(32 * ('cd', 4).length) + 160 len 32 * _81]
    return 32, mem[mem[64] + 32 len (32 * _81) + 32]
}

function sub_7242143d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    if not ('cd', 4).length:
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'invaild token0 or token1'
        idx = 0
        while idx < ('cd', 4).length:
            _328 = mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * ('cd', 4).length) + 128] > test266151307():
                revert with 0, 65
            _330 = mem[64]
            mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
            mem[64] = mem[64] + (32 * _328) + 32
            if not _328:
                _401 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _401:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _412 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _424 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_424)
                    require ext_code.size(address(_412))
                    staticcall address(_412).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_424)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _446 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_446] == mem[_446 + 12 len 20]
                    if s >= mem[_330]:
                        revert with 0, 50
                    mem[(32 * s) + _330 + 32] = mem[_446 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _401 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            else:
                mem[_330 + 32 len 32 * _328] = call.data[calldata.size len 32 * _328]
                _402 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _402:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _414 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _426 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_426)
                    require ext_code.size(address(_414))
                    staticcall address(_414).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_426)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_447] == mem[_447 + 12 len 20]
                    if s >= mem[_330]:
                        revert with 0, 50
                    mem[(32 * s) + _330 + 32] = mem[_447 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _402 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _330
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _329 = mem[64]
        mem[mem[64]] = 32
        _333 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        t = mem[64] + 64
        u = mem[64] + (32 * _333) + 64
        while idx < _333:
            mem[t] = u + -_329 - 64
            _404 = mem[s]
            _405 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _404 + 32
            while v < _405:
                mem[w] = mem[x + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _405) + 32
            continue 
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 96
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if mem[(32 * ('cd', 4).length) + 128] != mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
            revert with 0, 'invaild token0 or token1'
        _403 = mem[96]
        idx = 0
        while idx < _403:
            _410 = mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * ('cd', 4).length) + 128] > test266151307():
                revert with 0, 65
            _417 = mem[64]
            mem[mem[64]] = mem[(32 * ('cd', 4).length) + 128]
            mem[64] = mem[64] + (32 * _410) + 32
            if not _410:
                _466 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _466:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _476 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _485 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_485)
                    require ext_code.size(address(_476))
                    staticcall address(_476).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_485)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_491] == mem[_491 + 12 len 20]
                    if s >= mem[_417]:
                        revert with 0, 50
                    mem[(32 * s) + _417 + 32] = mem[_491 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _403 = mem[96]
                    _466 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            else:
                mem[_417 + 32 len 32 * _410] = call.data[calldata.size len 32 * _410]
                _467 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _467:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _478 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _487 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_487)
                    require ext_code.size(address(_478))
                    staticcall address(_478).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_487)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _492 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_492] == mem[_492 + 12 len 20]
                    if s >= mem[_417]:
                        revert with 0, 50
                    mem[(32 * s) + _417 + 32] = mem[_492 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _403 = mem[96]
                    _467 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _417
            if idx == -1:
                revert with 0, 17
            _403 = mem[96]
            idx = idx + 1
            continue 
        _416 = mem[64]
        mem[mem[64]] = 32
        _423 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        t = mem[64] + 64
        u = mem[64] + (32 * _423) + 64
        while idx < _423:
            mem[t] = u + -_416 - 64
            _469 = mem[s]
            _470 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _469 + 32
            while v < _470:
                mem[w] = mem[x + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _470) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_f7e3784e(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == ('signextend', 15, ('cd', ('var', 1)))
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == ('signextend', 15, ('cd', ('var', 1)))
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require calldata.size > cd[100] + 35
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 100).length) + 224 < 192 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
    idx = 0
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _412 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > test266151307():
                revert with 0, 65
            _414 = mem[64]
            mem[mem[64]] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[64] = mem[64] + (32 * _412) + 32
            if not _412:
                _489 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = 0
                while s < _489:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _500 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _512 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                        revert with 0, 50
                    _517 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_512'))
                    mem[mem[64] + 68] = _517
                    require ext_code.size(address(_500))
                    staticcall address(_500).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_512')), _517
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[_414]:
                        revert with 0, 50
                    mem[(32 * s) + _414 + 32] = mem[_542]
                    if s == -1:
                        revert with 0, 17
                    _489 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    s = s + 1
                    continue 
            else:
                mem[_414 + 32 len 32 * _412] = call.data[calldata.size len 32 * _412]
                _490 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = 0
                while s < _490:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _502 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _514 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                        revert with 0, 50
                    _519 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_514'))
                    mem[mem[64] + 68] = _519
                    require ext_code.size(address(_502))
                    staticcall address(_502).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_514')), _519
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[_414]:
                        revert with 0, 50
                    mem[(32 * s) + _414 + 32] = mem[_543]
                    if s == -1:
                        revert with 0, 17
                    _490 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = _414
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _413 = mem[64]
        mem[mem[64]] = 32
        _415 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
        u = mem[64] + 64
        v = mem[64] + (32 * _415) + 64
        while s < _415:
            mem[u] = v + -_413 - 64
            _492 = mem[t]
            _499 = mem[mem[t]]
            mem[v] = mem[mem[t]]
            idx = 0
            s = _492 + 32
            t = v + 32
            while idx < _499:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _499 + 1
            s = _492 + (32 * _499) + 64
            u = u + 32
            v = v + (32 * _499) + 32
            continue 
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = 96
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _491 = mem[96]
        idx = 0
        while idx < _491:
            _497 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            if mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] > test266151307():
                revert with 0, 65
            _505 = mem[64]
            mem[mem[64]] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
            mem[64] = mem[64] + (32 * _497) + 32
            if not _497:
                _562 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = 0
                while s < _562:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _572 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _581 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                        revert with 0, 50
                    _585 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_581'))
                    mem[mem[64] + 68] = _585
                    require ext_code.size(address(_572))
                    staticcall address(_572).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_581')), _585
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _591 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[_505]:
                        revert with 0, 50
                    mem[(32 * s) + _505 + 32] = mem[_591]
                    if s == -1:
                        revert with 0, 17
                    _491 = mem[96]
                    _562 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    s = s + 1
                    continue 
            else:
                mem[_505 + 32 len 32 * _497] = call.data[calldata.size len 32 * _497]
                _563 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                s = 0
                while s < _563:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _574 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 0, 50
                    _583 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                        revert with 0, 50
                    _587 = mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224]
                    mem[mem[64] + 4] = ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 0, 5, ('cd', ('add', 4, ('cd', 4))))), 32)))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_583'))
                    mem[mem[64] + 68] = _587
                    require ext_code.size(address(_574))
                    staticcall address(_574).get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], ('signextend', 15, ('var', '_583')), _587
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _592 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s >= mem[_505]:
                        revert with 0, 50
                    mem[(32 * s) + _505 + 32] = mem[_592]
                    if s == -1:
                        revert with 0, 17
                    _491 = mem[96]
                    _563 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256] = _505
            if idx == -1:
                revert with 0, 17
            _491 = mem[96]
            idx = idx + 1
            continue 
        _504 = mem[64]
        mem[mem[64]] = 32
        _510 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 224]
        s = 0
        t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 256
        u = mem[64] + 64
        v = mem[64] + (32 * _510) + 64
        while s < _510:
            mem[u] = v + -_504 - 64
            _565 = mem[t]
            _571 = mem[mem[t]]
            mem[v] = mem[mem[t]]
            idx = 0
            s = _565 + 32
            t = v + 32
            while idx < _571:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            idx = _571 + 1
            s = _565 + (32 * _571) + 64
            u = u + 32
            v = v + (32 * _571) + 32
            continue 
    return memory
      from mem[64]
       len v - mem[64]
}

function sub_a515a5e5(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
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
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 100).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    idx = 0
    s = cd[100] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _389 = mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * ('cd', 4).length) + 128] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * mem[(32 * ('cd', 4).length) + 128]):
                revert with 0, 17
            if (2 * mem[(32 * ('cd', 4).length) + 128]) + 1 > test266151307():
                revert with 0, 65
            _400 = mem[64]
            mem[mem[64]] = (2 * mem[(32 * ('cd', 4).length) + 128]) + 1
            mem[64] = mem[64] + (32 * (2 * _389) + 1) + 32
            if not (2 * _389) + 1:
                if idx >= mem[96]:
                    revert with 0, 50
                _405 = mem[(32 * idx) + 128]
                mem[_400 + (32 * (2 * _389) + 1) + 36] = address(cd[36])
                mem[_400 + (32 * (2 * _389) + 1) + 68] = address(cd[68])
                require ext_code.size(address(_405))
                staticcall address(_405).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), address(cd[68])
                mem[_400 + (32 * (2 * _389) + 1) + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _400 + (32 * (2 * _389) + 1) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_400]:
                    revert with 0, 50
                mem[_400 + 32] = ext_call.return_data[12 len 20]
                _514 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _514:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _525 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _531 = mem[(32 * s) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_531)
                    require ext_code.size(address(_525))
                    staticcall address(_525).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_531)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_541] == mem[_541 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 1 >= mem[_400]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 1) + _400 + 32] = mem[_541 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _564 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_564))
                    staticcall address(_564).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _587 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_587] == mem[_587 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 2 >= mem[_400]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 2) + _400 + 32] = mem[_587 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _514 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            else:
                mem[_400 + 32 len 32 * (2 * _389) + 1] = call.data[calldata.size len 32 * (2 * _389) + 1]
                if idx >= mem[96]:
                    revert with 0, 50
                _409 = mem[(32 * idx) + 128]
                mem[_400 + (32 * (2 * _389) + 1) + 36] = address(cd[36])
                mem[_400 + (32 * (2 * _389) + 1) + 68] = address(cd[68])
                require ext_code.size(address(_409))
                staticcall address(_409).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), address(cd[68])
                mem[_400 + (32 * (2 * _389) + 1) + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _400 + (32 * (2 * _389) + 1) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_400]:
                    revert with 0, 50
                mem[_400 + 32] = ext_call.return_data[12 len 20]
                _515 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _515:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _527 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _533 = mem[(32 * s) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_533)
                    require ext_code.size(address(_527))
                    staticcall address(_527).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_533)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_542] == mem[_542 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 1 >= mem[_400]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 1) + _400 + 32] = mem[_542 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _566 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_566))
                    staticcall address(_566).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _588 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_588] == mem[_588 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 2 >= mem[_400]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 2) + _400 + 32] = mem[_588 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _515 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192] = _400
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _390 = mem[64]
        mem[mem[64]] = 32
        _391 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192
        t = mem[64] + 64
        u = mem[64] + (32 * _391) + 64
        while idx < _391:
            mem[t] = u + -_390 - 64
            _517 = mem[s]
            _518 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _517 + 32
            while v < _518:
                mem[w] = mem[x + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _518) + 32
            continue 
    else:
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192] = 96
        s = (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _516 = mem[96]
        idx = 0
        while idx < _516:
            _523 = mem[(32 * ('cd', 4).length) + 128]
            if mem[(32 * ('cd', 4).length) + 128] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 1 > !(2 * mem[(32 * ('cd', 4).length) + 128]):
                revert with 0, 17
            if (2 * mem[(32 * ('cd', 4).length) + 128]) + 1 > test266151307():
                revert with 0, 65
            _544 = mem[64]
            mem[mem[64]] = (2 * mem[(32 * ('cd', 4).length) + 128]) + 1
            mem[64] = mem[64] + (32 * (2 * _523) + 1) + 32
            if not (2 * _523) + 1:
                if idx >= mem[96]:
                    revert with 0, 50
                _548 = mem[(32 * idx) + 128]
                mem[_544 + (32 * (2 * _523) + 1) + 36] = address(cd[36])
                mem[_544 + (32 * (2 * _523) + 1) + 68] = address(cd[68])
                require ext_code.size(address(_548))
                staticcall address(_548).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), address(cd[68])
                mem[_544 + (32 * (2 * _523) + 1) + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _544 + (32 * (2 * _523) + 1) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_544]:
                    revert with 0, 50
                mem[_544 + 32] = ext_call.return_data[12 len 20]
                _621 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _621:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _631 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _636 = mem[(32 * s) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_636)
                    require ext_code.size(address(_631))
                    staticcall address(_631).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_636)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _642 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_642] == mem[_642 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 1 >= mem[_544]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 1) + _544 + 32] = mem[_642 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _650 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_650))
                    staticcall address(_650).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_660] == mem[_660 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 2 >= mem[_544]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 2) + _544 + 32] = mem[_660 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _516 = mem[96]
                    _621 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            else:
                mem[_544 + 32 len 32 * (2 * _523) + 1] = call.data[calldata.size len 32 * (2 * _523) + 1]
                if idx >= mem[96]:
                    revert with 0, 50
                _551 = mem[(32 * idx) + 128]
                mem[_544 + (32 * (2 * _523) + 1) + 36] = address(cd[36])
                mem[_544 + (32 * (2 * _523) + 1) + 68] = address(cd[68])
                require ext_code.size(address(_551))
                staticcall address(_551).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), address(cd[68])
                mem[_544 + (32 * (2 * _523) + 1) + 32] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _544 + (32 * (2 * _523) + 1) + ceil32(return_data.size) + 32
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= mem[_544]:
                    revert with 0, 50
                mem[_544 + 32] = ext_call.return_data[12 len 20]
                _622 = mem[(32 * ('cd', 4).length) + 128]
                s = 0
                while s < _622:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _633 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    _638 = mem[(32 * s) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_638)
                    require ext_code.size(address(_633))
                    staticcall address(_633).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_638)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_643] == mem[_643 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 1 >= mem[_544]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 1) + _544 + 32] = mem[_643 + 12 len 20]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _652 = mem[(32 * idx) + 128]
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[mem[64] + 4] = mem[(32 * s) + (32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_652))
                    staticcall address(_652).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _661 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_661] == mem[_661 + 12 len 20]
                    if s > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 > !(2 * s):
                        revert with 0, 17
                    if (2 * s) + 2 >= mem[_544]:
                        revert with 0, 50
                    mem[(32 * (2 * s) + 2) + _544 + 32] = mem[_661 + 12 len 20]
                    if s == -1:
                        revert with 0, 17
                    _516 = mem[96]
                    _622 = mem[(32 * ('cd', 4).length) + 128]
                    s = s + 1
                    continue 
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192] = _544
            if idx == -1:
                revert with 0, 17
            _516 = mem[96]
            idx = idx + 1
            continue 
        _529 = mem[64]
        mem[mem[64]] = 32
        _535 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 100).length) + 192
        t = mem[64] + 64
        u = mem[64] + (32 * _535) + 64
        while idx < _535:
            mem[t] = u + -_529 - 64
            _624 = mem[s]
            _625 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _624 + 32
            while v < _625:
                mem[w] = mem[x + 12 len 20]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _625) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
