contract main {




// =====================  Runtime code  =====================


const name = 'ERC20-Power-Resolver-v1', 0


function _fallback() payable {
    revert
}

function getBalances(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg2.length
    mem[64] = (32 * arg1.length) + (64 * arg2.length) + 192
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            _314 = mem[96]
            require mem[96] <= test266151307()
            _317 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _314) + 32
            if not _314:
                require idx < mem[(32 * arg1.length) + 128]
                _319 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    _414 = mem[96]
                    s = 0
                    while s < _414:
                        require s < mem[96]
                        _426 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(_319))
                        staticcall address(_319).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_426)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_461] == mem[_461]
                        require s < mem[_317]
                        mem[(32 * s) + _317 + 32] = mem[_461]
                        _414 = mem[96]
                        s = s + 1
                        continue 
                    _424 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_424] = _317
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _424
                    idx = idx + 1
                    continue 
                _415 = mem[96]
                s = 0
                while s < _415:
                    require s < mem[96]
                    require s < mem[_317]
                    mem[(32 * s) + _317 + 32] = eth.balance(mem[(32 * s) + 128])
                    _415 = mem[96]
                    s = s + 1
                    continue 
                _428 = mem[64]
                mem[64] = mem[64] + 32
                mem[_428] = _317
                require _415 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * _415) + (32 * arg1.length) + (32 * arg2.length) + 192] = _428
                s = _415 + 1
                continue 
            mem[_317 + 32 len 32 * _314] = call.data[calldata.size len 32 * _314]
            require idx < mem[(32 * arg1.length) + 128]
            _324 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _416 = mem[96]
                s = 0
                while s < _416:
                    require s < mem[96]
                    _434 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(_324))
                    staticcall address(_324).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_434)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _462 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_462] == mem[_462]
                    require s < mem[_317]
                    mem[(32 * s) + _317 + 32] = mem[_462]
                    _416 = mem[96]
                    s = s + 1
                    continue 
                _432 = mem[64]
                mem[64] = mem[64] + 32
                mem[_432] = _317
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _432
            else:
                _417 = mem[96]
                s = 0
                while s < _417:
                    require s < mem[96]
                    require s < mem[_317]
                    mem[(32 * s) + _317 + 32] = eth.balance(mem[(32 * s) + 128])
                    _417 = mem[96]
                    s = s + 1
                    continue 
                _436 = mem[64]
                mem[64] = mem[64] + 32
                mem[_436] = _317
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _436
            idx = idx + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = 32
        _322 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        s = (32 * arg1.length) + (32 * arg2.length) + 192
        t = mem[64] + (32 * _322) + 64
        u = mem[64] + 64
        while idx < _322:
            mem[u] = t + -_316 - 64
            _441 = mem[mem[s]]
            mem[t] = 32
            _443 = mem[_441]
            mem[t + 32] = mem[_441]
            v = 0
            w = _441 + 32
            x = t + 64
            while v < _443:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _443) + 64
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + (64 * arg2.length) + 224
        mem[(32 * arg1.length) + (64 * arg2.length) + 192] = 96
        mem[arg2.length] = (32 * arg1.length) + (64 * arg2.length) + 192
        s = arg2.length
        idx = arg2 + (32 * arg2.length) + 36
        while idx - 1:
            mem[64] = mem[64] + 32
            mem[(32 * arg1.length) + (64 * arg2.length) + 192] = 96
            mem[s + 32] = (32 * arg1.length) + (64 * arg2.length) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _502 = mem[(32 * arg1.length) + 128]
        idx = 0
        while idx < _502:
            _504 = mem[96]
            require mem[96] <= test266151307()
            _506 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _504) + 32
            if not _504:
                require idx < mem[(32 * arg1.length) + 128]
                _508 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                    _553 = mem[96]
                    s = 0
                    while s < _553:
                        require s < mem[96]
                        _564 = mem[(32 * s) + 128]
                        mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                        require ext_code.size(address(_508))
                        staticcall address(_508).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_564)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_584] == mem[_584]
                        require s < mem[_506]
                        mem[(32 * s) + _506 + 32] = mem[_584]
                        _502 = mem[(32 * arg1.length) + 128]
                        _553 = mem[96]
                        s = s + 1
                        continue 
                    _562 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_562] = _506
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _562
                    _502 = mem[(32 * arg1.length) + 128]
                    idx = idx + 1
                    continue 
                _554 = mem[96]
                s = 0
                while s < _554:
                    require s < mem[96]
                    require s < mem[_506]
                    mem[(32 * s) + _506 + 32] = eth.balance(mem[(32 * s) + 128])
                    _502 = mem[(32 * arg1.length) + 128]
                    _554 = mem[96]
                    s = s + 1
                    continue 
                _566 = mem[64]
                mem[64] = mem[64] + 32
                mem[_566] = _506
                require _554 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * _554) + (32 * arg1.length) + (32 * arg2.length) + 192] = _566
                _502 = mem[(32 * arg1.length) + 128]
                s = _554 + 1
                continue 
            mem[_506 + 32 len 32 * _504] = call.data[calldata.size len 32 * _504]
            require idx < mem[(32 * arg1.length) + 128]
            _513 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _555 = mem[96]
                s = 0
                while s < _555:
                    require s < mem[96]
                    _572 = mem[(32 * s) + 128]
                    mem[mem[64] + 4] = mem[(32 * s) + 140 len 20]
                    require ext_code.size(address(_513))
                    staticcall address(_513).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_572)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _585 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_585] == mem[_585]
                    require s < mem[_506]
                    mem[(32 * s) + _506 + 32] = mem[_585]
                    _502 = mem[(32 * arg1.length) + 128]
                    _555 = mem[96]
                    s = s + 1
                    continue 
                _570 = mem[64]
                mem[64] = mem[64] + 32
                mem[_570] = _506
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _570
            else:
                _556 = mem[96]
                s = 0
                while s < _556:
                    require s < mem[96]
                    require s < mem[_506]
                    mem[(32 * s) + _506 + 32] = eth.balance(mem[(32 * s) + 128])
                    _502 = mem[(32 * arg1.length) + 128]
                    _556 = mem[96]
                    s = s + 1
                    continue 
                _574 = mem[64]
                mem[64] = mem[64] + 32
                mem[_574] = _506
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = _574
            _502 = mem[(32 * arg1.length) + 128]
            idx = idx + 1
            continue 
        _505 = mem[64]
        mem[mem[64]] = 32
        _511 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        idx = 0
        s = (32 * arg1.length) + (32 * arg2.length) + 192
        t = mem[64] + (32 * _511) + 64
        u = mem[64] + 64
        while idx < _511:
            mem[u] = t + -_505 - 64
            _579 = mem[mem[s]]
            mem[t] = 32
            _580 = mem[_579]
            mem[t + 32] = mem[_579]
            v = 0
            w = _579 + 32
            x = t + 64
            while v < _580:
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (32 * _580) + 64
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
