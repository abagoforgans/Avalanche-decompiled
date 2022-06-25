contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1e8f67a9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (64 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + 160
    mem[(32 * arg2.length) + 128] = arg1.length
    s = (32 * arg2.length) + 160
    idx = 0
    while idx < arg1.length:
        _472 = mem[64]
        mem[64] = mem[64] + 64
        mem[_472 len 64] = call.data[(64 * idx) + arg1 + 36 len 64]
        mem[_472 + 64] = 0
        mem[s] = _472
        s = s + 32
        idx = idx + 1
        continue 
    _473 = mem[96]
    _474 = mem[(32 * arg2.length) + 128]
    if mem[(32 * arg2.length) + 128] and mem[96] > -1 / mem[(32 * arg2.length) + 128]:
        revert with 'NH{q', 17
    if mem[(32 * arg2.length) + 128] * mem[96] > test266151307():
        revert with 'NH{q', 65
    _475 = mem[64]
    mem[mem[64]] = mem[(32 * arg2.length) + 128] * mem[96]
    mem[64] = mem[64] + (32 * _474 * _473) + 32
    if not _474 * _473:
        _941 = mem[96]
        idx = 0
        s = 0
        while idx < _941:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] == 1:
                _949 = mem[(32 * arg2.length) + 128]
                if mem[(32 * arg2.length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _952 = mem[64]
                mem[mem[64]] = mem[(32 * arg2.length) + 128]
                mem[64] = mem[64] + (32 * _949) + 32
                if not _949:
                    _1409 = mem[(32 * arg2.length) + 128]
                    t = 0
                    while t < _1409:
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1436 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1461 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                        mem[mem[64] + 36] = address(_1461)
                        require ext_code.size(0xe7fb3e833efe5f9c441105eb65ef8b261266423b)
                        staticcall 0xe7fb3e833efe5f9c441105eb65ef8b261266423b.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1461)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1634 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1634] == mem[_1634 + 12 len 20]
                        if not mem[_1634 + 12 len 20]:
                            _1697 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1697] = address(_1436)
                            mem[_1697 + 32] = address(_1461)
                            mem[_1697 + 64] = 0
                            mem[_1697 + 96] = 0
                            mem[_1697 + 128] = 1
                            if t >= mem[_952]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _952 + 32] = _1697
                        else:
                            require ext_code.size(mem[_1634 + 12 len 20])
                            staticcall mem[_1634 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1699 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1718 = mem[_1699]
                            require mem[_1699] == mem[_1699 + 18 len 14]
                            _1749 = mem[_1699 + 32]
                            require mem[_1699 + 32] == mem[_1699 + 50 len 14]
                            require mem[_1699 + 64] == mem[_1699 + 92 len 4]
                            _1818 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1818] = address(_1436)
                            mem[_1818 + 32] = address(_1461)
                            mem[_1818 + 64] = Mask(112, 0, _1718)
                            mem[_1818 + 96] = Mask(112, 0, _1749)
                            mem[_1818 + 128] = 1
                            if t >= mem[_952]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _952 + 32] = _1818
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1409 = mem[(32 * arg2.length) + 128]
                        t = t + 1
                        continue 
                    _1864 = mem[_952]
                    t = 0
                    while t < _1864:
                        if t >= mem[_952]:
                            revert with 'NH{q', 50
                        if s > -t - 1:
                            revert with 'NH{q', 17
                        if s + t >= mem[_475]:
                            revert with 'NH{q', 50
                        mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _952 + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1864 = mem[_952]
                        t = t + 1
                        continue 
                else:
                    mem[64] = _952 + (32 * _949) + 192
                    mem[_952 + (32 * _949) + 32] = 0
                    mem[_952 + (32 * _949) + 64] = 0
                    mem[_952 + (32 * _949) + 96] = 0
                    mem[_952 + (32 * _949) + 128] = 0
                    mem[_952 + (32 * _949) + 160] = 0
                    mem[var45001] = _952 + (32 * _949) + 32
                    u = var45001
                    t = var45002
                    while t - 1:
                        _941 = mem[96]
                        mem[64] = mem[64] + 160
                        mem[_952 + (32 * _949) + 32] = 0
                        mem[_952 + (32 * _949) + 64] = 0
                        mem[_952 + (32 * _949) + 96] = 0
                        mem[_952 + (32 * _949) + 128] = 0
                        mem[_952 + (32 * _949) + 160] = 0
                        mem[u + 32] = _952 + (32 * _949) + 32
                        u = u + 32
                        t = t - 1
                        continue 
                    _2221 = mem[(32 * arg2.length) + 128]
                    t = 0
                    while t < _2221:
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _2257 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _2304 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                        mem[mem[64] + 36] = address(_2304)
                        require ext_code.size(0xe7fb3e833efe5f9c441105eb65ef8b261266423b)
                        staticcall 0xe7fb3e833efe5f9c441105eb65ef8b261266423b.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_2304)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2395] == mem[_2395 + 12 len 20]
                        if not mem[_2395 + 12 len 20]:
                            _2446 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2446] = address(_2257)
                            mem[_2446 + 32] = address(_2304)
                            mem[_2446 + 64] = 0
                            mem[_2446 + 96] = 0
                            mem[_2446 + 128] = 1
                            if t >= mem[_952]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _952 + 32] = _2446
                        else:
                            require ext_code.size(mem[_2395 + 12 len 20])
                            staticcall mem[_2395 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2448 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2464 = mem[_2448]
                            require mem[_2448] == mem[_2448 + 18 len 14]
                            _2496 = mem[_2448 + 32]
                            require mem[_2448 + 32] == mem[_2448 + 50 len 14]
                            require mem[_2448 + 64] == mem[_2448 + 92 len 4]
                            _2523 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2523] = address(_2257)
                            mem[_2523 + 32] = address(_2304)
                            mem[_2523 + 64] = Mask(112, 0, _2464)
                            mem[_2523 + 96] = Mask(112, 0, _2496)
                            mem[_2523 + 128] = 1
                            if t >= mem[_952]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _952 + 32] = _2523
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _2221 = mem[(32 * arg2.length) + 128]
                        t = t + 1
                        continue 
                    _2544 = mem[_952]
                    t = 0
                    while t < _2544:
                        if t >= mem[_952]:
                            revert with 'NH{q', 50
                        if s > -t - 1:
                            revert with 'NH{q', 17
                        if s + t >= mem[_475]:
                            revert with 'NH{q', 50
                        mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _952 + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _2544 = mem[_952]
                        t = t + 1
                        continue 
                if s > -mem[_952] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _941 = mem[96]
                idx = idx + 1
                s = s + mem[_952]
                continue 
            if mem[(32 * idx) + 128] == 2:
                _951 = mem[(32 * arg2.length) + 128]
                if mem[(32 * arg2.length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _955 = mem[64]
                mem[mem[64]] = mem[(32 * arg2.length) + 128]
                mem[64] = mem[64] + (32 * _951) + 32
                if not _951:
                    _1408 = mem[(32 * arg2.length) + 128]
                    t = 0
                    while t < _1408:
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1433 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1458 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                        mem[mem[64] + 36] = address(_1458)
                        require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
                        staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1458)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1633 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1633] == mem[_1633 + 12 len 20]
                        if not mem[_1633 + 12 len 20]:
                            _1694 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1694] = address(_1433)
                            mem[_1694 + 32] = address(_1458)
                            mem[_1694 + 64] = 0
                            mem[_1694 + 96] = 0
                            mem[_1694 + 128] = 2
                            if t >= mem[_955]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _955 + 32] = _1694
                        else:
                            require ext_code.size(mem[_1633 + 12 len 20])
                            staticcall mem[_1633 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1715 = mem[_1696]
                            require mem[_1696] == mem[_1696 + 18 len 14]
                            _1748 = mem[_1696 + 32]
                            require mem[_1696 + 32] == mem[_1696 + 50 len 14]
                            require mem[_1696 + 64] == mem[_1696 + 92 len 4]
                            _1816 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1816] = address(_1433)
                            mem[_1816 + 32] = address(_1458)
                            mem[_1816 + 64] = Mask(112, 0, _1715)
                            mem[_1816 + 96] = Mask(112, 0, _1748)
                            mem[_1816 + 128] = 2
                            if t >= mem[_955]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _955 + 32] = _1816
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1408 = mem[(32 * arg2.length) + 128]
                        t = t + 1
                        continue 
                    _1862 = mem[_955]
                    t = 0
                    while t < _1862:
                        if t >= mem[_955]:
                            revert with 'NH{q', 50
                        if s > -t - 1:
                            revert with 'NH{q', 17
                        if s + t >= mem[_475]:
                            revert with 'NH{q', 50
                        mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _955 + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1862 = mem[_955]
                        t = t + 1
                        continue 
                    if s > -mem[_955] - 1:
                        revert with 'NH{q', 17
                    if _1862 == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    t = _1862 + 1
                    s = s + mem[_955]
                    continue 
                mem[64] = _955 + (32 * _951) + 192
                mem[_955 + (32 * _951) + 32] = 0
                mem[_955 + (32 * _951) + 64] = 0
                mem[_955 + (32 * _951) + 96] = 0
                mem[_955 + (32 * _951) + 128] = 0
                mem[_955 + (32 * _951) + 160] = 0
                mem[var46001] = _955 + (32 * _951) + 32
                u = var46001
                t = var46002
                while t - 1:
                    _941 = mem[96]
                    mem[64] = mem[64] + 160
                    mem[_955 + (32 * _951) + 32] = 0
                    mem[_955 + (32 * _951) + 64] = 0
                    mem[_955 + (32 * _951) + 96] = 0
                    mem[_955 + (32 * _951) + 128] = 0
                    mem[_955 + (32 * _951) + 160] = 0
                    mem[u + 32] = _955 + (32 * _951) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _2220 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2220:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2254 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2302 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2302)
                    require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
                    staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2302)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2394 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2394] == mem[_2394 + 12 len 20]
                    if not mem[_2394 + 12 len 20]:
                        _2443 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2443] = address(_2254)
                        mem[_2443 + 32] = address(_2302)
                        mem[_2443 + 64] = 0
                        mem[_2443 + 96] = 0
                        mem[_2443 + 128] = 2
                        if t >= mem[_955]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _955 + 32] = _2443
                    else:
                        require ext_code.size(mem[_2394 + 12 len 20])
                        staticcall mem[_2394 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2445 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2463 = mem[_2445]
                        require mem[_2445] == mem[_2445 + 18 len 14]
                        _2495 = mem[_2445 + 32]
                        require mem[_2445 + 32] == mem[_2445 + 50 len 14]
                        require mem[_2445 + 64] == mem[_2445 + 92 len 4]
                        _2521 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2521] = address(_2254)
                        mem[_2521 + 32] = address(_2302)
                        mem[_2521 + 64] = Mask(112, 0, _2463)
                        mem[_2521 + 96] = Mask(112, 0, _2495)
                        mem[_2521 + 128] = 2
                        if t >= mem[_955]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _955 + 32] = _2521
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _2220 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2543 = mem[_955]
                t = 0
                while t < _2543:
                    if t >= mem[_955]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _955 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _2543 = mem[_955]
                    t = t + 1
                    continue 
                if s > -mem[_955] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _941 = mem[96]
                idx = idx + 1
                s = s + mem[_955]
                continue 
            if mem[(32 * idx) + 128] == 3:
                _954 = mem[(32 * arg2.length) + 128]
                if mem[(32 * arg2.length) + 128] > test266151307():
                    revert with 'NH{q', 65
                _957 = mem[64]
                mem[mem[64]] = mem[(32 * arg2.length) + 128]
                mem[64] = mem[64] + (32 * _954) + 32
                if not _954:
                    _1407 = mem[(32 * arg2.length) + 128]
                    t = 0
                    while t < _1407:
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1430 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _1455 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                        mem[mem[64] + 36] = address(_1455)
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1455)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1632 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1632] == mem[_1632 + 12 len 20]
                        if not mem[_1632 + 12 len 20]:
                            _1691 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1691] = address(_1430)
                            mem[_1691 + 32] = address(_1455)
                            mem[_1691 + 64] = 0
                            mem[_1691 + 96] = 0
                            mem[_1691 + 128] = 3
                            if t >= mem[_957]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _957 + 32] = _1691
                        else:
                            require ext_code.size(mem[_1632 + 12 len 20])
                            staticcall mem[_1632 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1693 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1712 = mem[_1693]
                            require mem[_1693] == mem[_1693 + 18 len 14]
                            _1747 = mem[_1693 + 32]
                            require mem[_1693 + 32] == mem[_1693 + 50 len 14]
                            require mem[_1693 + 64] == mem[_1693 + 92 len 4]
                            _1814 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_1814] = address(_1430)
                            mem[_1814 + 32] = address(_1455)
                            mem[_1814 + 64] = Mask(112, 0, _1712)
                            mem[_1814 + 96] = Mask(112, 0, _1747)
                            mem[_1814 + 128] = 3
                            if t >= mem[_957]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _957 + 32] = _1814
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1407 = mem[(32 * arg2.length) + 128]
                        t = t + 1
                        continue 
                    _1860 = mem[_957]
                    t = 0
                    while t < _1860:
                        if t >= mem[_957]:
                            revert with 'NH{q', 50
                        if s > -t - 1:
                            revert with 'NH{q', 17
                        if s + t >= mem[_475]:
                            revert with 'NH{q', 50
                        mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _957 + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _1860 = mem[_957]
                        t = t + 1
                        continue 
                else:
                    mem[64] = _957 + (32 * _954) + 192
                    mem[_957 + (32 * _954) + 32] = 0
                    mem[_957 + (32 * _954) + 64] = 0
                    mem[_957 + (32 * _954) + 96] = 0
                    mem[_957 + (32 * _954) + 128] = 0
                    mem[_957 + (32 * _954) + 160] = 0
                    mem[var47001] = _957 + (32 * _954) + 32
                    u = var47001
                    t = var47002
                    while t - 1:
                        _941 = mem[96]
                        mem[64] = mem[64] + 160
                        mem[_957 + (32 * _954) + 32] = 0
                        mem[_957 + (32 * _954) + 64] = 0
                        mem[_957 + (32 * _954) + 96] = 0
                        mem[_957 + (32 * _954) + 128] = 0
                        mem[_957 + (32 * _954) + 160] = 0
                        mem[u + 32] = _957 + (32 * _954) + 32
                        u = u + 32
                        t = t - 1
                        continue 
                    _2219 = mem[(32 * arg2.length) + 128]
                    t = 0
                    while t < _2219:
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _2251 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                        if t >= mem[(32 * arg2.length) + 128]:
                            revert with 'NH{q', 50
                        _2300 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                        mem[mem[64] + 36] = address(_2300)
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_2300)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2393] == mem[_2393 + 12 len 20]
                        if not mem[_2393 + 12 len 20]:
                            _2440 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2440] = address(_2251)
                            mem[_2440 + 32] = address(_2300)
                            mem[_2440 + 64] = 0
                            mem[_2440 + 96] = 0
                            mem[_2440 + 128] = 3
                            if t >= mem[_957]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _957 + 32] = _2440
                        else:
                            require ext_code.size(mem[_2393 + 12 len 20])
                            staticcall mem[_2393 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2442 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _2462 = mem[_2442]
                            require mem[_2442] == mem[_2442 + 18 len 14]
                            _2494 = mem[_2442 + 32]
                            require mem[_2442 + 32] == mem[_2442 + 50 len 14]
                            require mem[_2442 + 64] == mem[_2442 + 92 len 4]
                            _2519 = mem[64]
                            mem[64] = mem[64] + 160
                            mem[_2519] = address(_2251)
                            mem[_2519 + 32] = address(_2300)
                            mem[_2519 + 64] = Mask(112, 0, _2462)
                            mem[_2519 + 96] = Mask(112, 0, _2494)
                            mem[_2519 + 128] = 3
                            if t >= mem[_957]:
                                revert with 'NH{q', 50
                            mem[(32 * t) + _957 + 32] = _2519
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _2219 = mem[(32 * arg2.length) + 128]
                        t = t + 1
                        continue 
                    _2542 = mem[_957]
                    t = 0
                    while t < _2542:
                        if t >= mem[_957]:
                            revert with 'NH{q', 50
                        if s > -t - 1:
                            revert with 'NH{q', 17
                        if s + t >= mem[_475]:
                            revert with 'NH{q', 50
                        mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _957 + 32]
                        if t == -1:
                            revert with 'NH{q', 17
                        _941 = mem[96]
                        _2542 = mem[_957]
                        t = t + 1
                        continue 
                if s > -mem[_957] - 1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                _941 = mem[96]
                idx = idx + 1
                s = s + mem[_957]
                continue 
            if mem[(32 * idx) + 128] != 4:
                revert with 'NH{q', 81
            _956 = mem[(32 * arg2.length) + 128]
            if mem[(32 * arg2.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _959 = mem[64]
            mem[mem[64]] = mem[(32 * arg2.length) + 128]
            mem[64] = mem[64] + (32 * _956) + 32
            if not _956:
                _1406 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _1406:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _1427 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _1452 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_1452)
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1452)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1631 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1631] == mem[_1631 + 12 len 20]
                    if not mem[_1631 + 12 len 20]:
                        _1688 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1688] = address(_1427)
                        mem[_1688 + 32] = address(_1452)
                        mem[_1688 + 64] = 0
                        mem[_1688 + 96] = 0
                        mem[_1688 + 128] = 4
                        if t >= mem[_959]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _959 + 32] = _1688
                    else:
                        require ext_code.size(mem[_1631 + 12 len 20])
                        staticcall mem[_1631 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1709 = mem[_1690]
                        require mem[_1690] == mem[_1690 + 18 len 14]
                        _1746 = mem[_1690 + 32]
                        require mem[_1690 + 32] == mem[_1690 + 50 len 14]
                        require mem[_1690 + 64] == mem[_1690 + 92 len 4]
                        _1812 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1812] = address(_1427)
                        mem[_1812 + 32] = address(_1452)
                        mem[_1812 + 64] = Mask(112, 0, _1709)
                        mem[_1812 + 96] = Mask(112, 0, _1746)
                        mem[_1812 + 128] = 4
                        if t >= mem[_959]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _959 + 32] = _1812
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _1406 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _1858 = mem[_959]
                t = 0
                while t < _1858:
                    if t >= mem[_959]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _959 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _1858 = mem[_959]
                    t = t + 1
                    continue 
            else:
                mem[64] = _959 + (32 * _956) + 192
                mem[_959 + (32 * _956) + 32] = 0
                mem[_959 + (32 * _956) + 64] = 0
                mem[_959 + (32 * _956) + 96] = 0
                mem[_959 + (32 * _956) + 128] = 0
                mem[_959 + (32 * _956) + 160] = 0
                mem[var48001] = _959 + (32 * _956) + 32
                u = var48001
                t = var48002
                while t - 1:
                    _941 = mem[96]
                    mem[64] = mem[64] + 160
                    mem[_959 + (32 * _956) + 32] = 0
                    mem[_959 + (32 * _956) + 64] = 0
                    mem[_959 + (32 * _956) + 96] = 0
                    mem[_959 + (32 * _956) + 128] = 0
                    mem[_959 + (32 * _956) + 160] = 0
                    mem[u + 32] = _959 + (32 * _956) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _2218 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2218:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2248 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2298 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2298)
                    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2298)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2392 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2392] == mem[_2392 + 12 len 20]
                    if not mem[_2392 + 12 len 20]:
                        _2437 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2437] = address(_2248)
                        mem[_2437 + 32] = address(_2298)
                        mem[_2437 + 64] = 0
                        mem[_2437 + 96] = 0
                        mem[_2437 + 128] = 4
                        if t >= mem[_959]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _959 + 32] = _2437
                    else:
                        require ext_code.size(mem[_2392 + 12 len 20])
                        staticcall mem[_2392 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2439 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2461 = mem[_2439]
                        require mem[_2439] == mem[_2439 + 18 len 14]
                        _2493 = mem[_2439 + 32]
                        require mem[_2439 + 32] == mem[_2439 + 50 len 14]
                        require mem[_2439 + 64] == mem[_2439 + 92 len 4]
                        _2517 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2517] = address(_2248)
                        mem[_2517 + 32] = address(_2298)
                        mem[_2517 + 64] = Mask(112, 0, _2461)
                        mem[_2517 + 96] = Mask(112, 0, _2493)
                        mem[_2517 + 128] = 4
                        if t >= mem[_959]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _959 + 32] = _2517
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _2218 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2541 = mem[_959]
                t = 0
                while t < _2541:
                    if t >= mem[_959]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _959 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _941 = mem[96]
                    _2541 = mem[_959]
                    t = t + 1
                    continue 
            if s > -mem[_959] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _941 = mem[96]
            idx = idx + 1
            s = s + mem[_959]
            continue 
        _945 = mem[64]
        mem[mem[64]] = 32
        _947 = mem[_475]
        mem[mem[64] + 32] = mem[_475]
        idx = 0
        s = _475 + 32
        t = mem[64] + 64
        while idx < _947:
            _1411 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1411 + 44 len 20]
            mem[t + 64] = mem[_1411 + 82 len 14]
            mem[t + 96] = mem[_1411 + 114 len 14]
            mem[t + 128] = mem[_1411 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _945 + (160 * _947) + -mem[64] + 64
    mem[64] = _475 + (32 * _474 * _473) + 192
    mem[_475 + (32 * _474 * _473) + 32] = 0
    mem[_475 + (32 * _474 * _473) + 64] = 0
    mem[_475 + (32 * _474 * _473) + 96] = 0
    mem[_475 + (32 * _474 * _473) + 128] = 0
    mem[_475 + (32 * _474 * _473) + 160] = 0
    mem[var34001] = _475 + (32 * _474 * _473) + 32
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_475 + (32 * _474 * _473) + 32] = 0
        mem[_475 + (32 * _474 * _473) + 64] = 0
        mem[_475 + (32 * _474 * _473) + 96] = 0
        mem[_475 + (32 * _474 * _473) + 128] = 0
        mem[_475 + (32 * _474 * _473) + 160] = 0
        mem[s + 32] = _475 + (32 * _474 * _473) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _1866 = mem[96]
    idx = 0
    s = 0
    while idx < _1866:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 128] == 1:
            _1907 = mem[(32 * arg2.length) + 128]
            if mem[(32 * arg2.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _1921 = mem[64]
            mem[mem[64]] = mem[(32 * arg2.length) + 128]
            mem[64] = mem[64] + (32 * _1907) + 32
            if not _1907:
                _2225 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2225:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2271 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2315 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2315)
                    require ext_code.size(0xe7fb3e833efe5f9c441105eb65ef8b261266423b)
                    staticcall 0xe7fb3e833efe5f9c441105eb65ef8b261266423b.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2315)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2399 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2399] == mem[_2399 + 12 len 20]
                    if not mem[_2399 + 12 len 20]:
                        _2458 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2458] = address(_2271)
                        mem[_2458 + 32] = address(_2315)
                        mem[_2458 + 64] = 0
                        mem[_2458 + 96] = 0
                        mem[_2458 + 128] = 1
                        if t >= mem[_1921]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1921 + 32] = _2458
                    else:
                        require ext_code.size(mem[_2399 + 12 len 20])
                        staticcall mem[_2399 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2474 = mem[_2460]
                        require mem[_2460] == mem[_2460 + 18 len 14]
                        _2500 = mem[_2460 + 32]
                        require mem[_2460 + 32] == mem[_2460 + 50 len 14]
                        require mem[_2460 + 64] == mem[_2460 + 92 len 4]
                        _2531 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2531] = address(_2271)
                        mem[_2531 + 32] = address(_2315)
                        mem[_2531 + 64] = Mask(112, 0, _2474)
                        mem[_2531 + 96] = Mask(112, 0, _2500)
                        mem[_2531 + 128] = 1
                        if t >= mem[_1921]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1921 + 32] = _2531
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2225 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2551 = mem[_1921]
                t = 0
                while t < _2551:
                    if t >= mem[_1921]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1921 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2551 = mem[_1921]
                    t = t + 1
                    continue 
            else:
                mem[64] = _1921 + (32 * _1907) + 192
                mem[_1921 + (32 * _1907) + 32] = 0
                mem[_1921 + (32 * _1907) + 64] = 0
                mem[_1921 + (32 * _1907) + 96] = 0
                mem[_1921 + (32 * _1907) + 128] = 0
                mem[_1921 + (32 * _1907) + 160] = 0
                mem[var52001] = _1921 + (32 * _1907) + 32
                u = var52001
                t = var52002
                while t - 1:
                    _1866 = mem[96]
                    mem[64] = mem[64] + 160
                    mem[_1921 + (32 * _1907) + 32] = 0
                    mem[_1921 + (32 * _1907) + 64] = 0
                    mem[_1921 + (32 * _1907) + 96] = 0
                    mem[_1921 + (32 * _1907) + 128] = 0
                    mem[_1921 + (32 * _1907) + 160] = 0
                    mem[u + 32] = _1921 + (32 * _1907) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _2692 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2692:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2711 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2732 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2732)
                    require ext_code.size(0xe7fb3e833efe5f9c441105eb65ef8b261266423b)
                    staticcall 0xe7fb3e833efe5f9c441105eb65ef8b261266423b.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2732)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2748] == mem[_2748 + 12 len 20]
                    if not mem[_2748 + 12 len 20]:
                        _2770 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2770] = address(_2711)
                        mem[_2770 + 32] = address(_2732)
                        mem[_2770 + 64] = 0
                        mem[_2770 + 96] = 0
                        mem[_2770 + 128] = 1
                        if t >= mem[_1921]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1921 + 32] = _2770
                    else:
                        require ext_code.size(mem[_2748 + 12 len 20])
                        staticcall mem[_2748 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2776 = mem[_2772]
                        require mem[_2772] == mem[_2772 + 18 len 14]
                        _2780 = mem[_2772 + 32]
                        require mem[_2772 + 32] == mem[_2772 + 50 len 14]
                        require mem[_2772 + 64] == mem[_2772 + 92 len 4]
                        _2791 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2791] = address(_2711)
                        mem[_2791 + 32] = address(_2732)
                        mem[_2791 + 64] = Mask(112, 0, _2776)
                        mem[_2791 + 96] = Mask(112, 0, _2780)
                        mem[_2791 + 128] = 1
                        if t >= mem[_1921]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1921 + 32] = _2791
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2692 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2796 = mem[_1921]
                t = 0
                while t < _2796:
                    if t >= mem[_1921]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1921 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2796 = mem[_1921]
                    t = t + 1
                    continue 
            if s > -mem[_1921] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _1866 = mem[96]
            idx = idx + 1
            s = s + mem[_1921]
            continue 
        if mem[(32 * idx) + 128] == 2:
            _1920 = mem[(32 * arg2.length) + 128]
            if mem[(32 * arg2.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _1935 = mem[64]
            mem[mem[64]] = mem[(32 * arg2.length) + 128]
            mem[64] = mem[64] + (32 * _1920) + 32
            if not _1920:
                _2224 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2224:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2268 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2312 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2312)
                    require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
                    staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2312)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2398 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2398] == mem[_2398 + 12 len 20]
                    if not mem[_2398 + 12 len 20]:
                        _2455 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2455] = address(_2268)
                        mem[_2455 + 32] = address(_2312)
                        mem[_2455 + 64] = 0
                        mem[_2455 + 96] = 0
                        mem[_2455 + 128] = 2
                        if t >= mem[_1935]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1935 + 32] = _2455
                    else:
                        require ext_code.size(mem[_2398 + 12 len 20])
                        staticcall mem[_2398 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2471 = mem[_2457]
                        require mem[_2457] == mem[_2457 + 18 len 14]
                        _2499 = mem[_2457 + 32]
                        require mem[_2457 + 32] == mem[_2457 + 50 len 14]
                        require mem[_2457 + 64] == mem[_2457 + 92 len 4]
                        _2529 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2529] = address(_2268)
                        mem[_2529 + 32] = address(_2312)
                        mem[_2529 + 64] = Mask(112, 0, _2471)
                        mem[_2529 + 96] = Mask(112, 0, _2499)
                        mem[_2529 + 128] = 2
                        if t >= mem[_1935]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1935 + 32] = _2529
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2224 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2549 = mem[_1935]
                t = 0
                while t < _2549:
                    if t >= mem[_1935]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1935 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2549 = mem[_1935]
                    t = t + 1
                    continue 
                if s > -mem[_1935] - 1:
                    revert with 'NH{q', 17
                if _2549 == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                t = _2549 + 1
                s = s + mem[_1935]
                continue 
            mem[64] = _1935 + (32 * _1920) + 192
            mem[_1935 + (32 * _1920) + 32] = 0
            mem[_1935 + (32 * _1920) + 64] = 0
            mem[_1935 + (32 * _1920) + 96] = 0
            mem[_1935 + (32 * _1920) + 128] = 0
            mem[_1935 + (32 * _1920) + 160] = 0
            mem[var53001] = _1935 + (32 * _1920) + 32
            u = var53001
            t = var53002
            while t - 1:
                _1866 = mem[96]
                mem[64] = mem[64] + 160
                mem[_1935 + (32 * _1920) + 32] = 0
                mem[_1935 + (32 * _1920) + 64] = 0
                mem[_1935 + (32 * _1920) + 96] = 0
                mem[_1935 + (32 * _1920) + 128] = 0
                mem[_1935 + (32 * _1920) + 160] = 0
                mem[u + 32] = _1935 + (32 * _1920) + 32
                u = u + 32
                t = t - 1
                continue 
            _2691 = mem[(32 * arg2.length) + 128]
            t = 0
            while t < _2691:
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2708 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2730 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                mem[mem[64] + 36] = address(_2730)
                require ext_code.size(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f)
                staticcall 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2730)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2747] == mem[_2747 + 12 len 20]
                if not mem[_2747 + 12 len 20]:
                    _2767 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2767] = address(_2708)
                    mem[_2767 + 32] = address(_2730)
                    mem[_2767 + 64] = 0
                    mem[_2767 + 96] = 0
                    mem[_2767 + 128] = 2
                    if t >= mem[_1935]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1935 + 32] = _2767
                else:
                    require ext_code.size(mem[_2747 + 12 len 20])
                    staticcall mem[_2747 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2775 = mem[_2769]
                    require mem[_2769] == mem[_2769 + 18 len 14]
                    _2779 = mem[_2769 + 32]
                    require mem[_2769 + 32] == mem[_2769 + 50 len 14]
                    require mem[_2769 + 64] == mem[_2769 + 92 len 4]
                    _2789 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2789] = address(_2708)
                    mem[_2789 + 32] = address(_2730)
                    mem[_2789 + 64] = Mask(112, 0, _2775)
                    mem[_2789 + 96] = Mask(112, 0, _2779)
                    mem[_2789 + 128] = 2
                    if t >= mem[_1935]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1935 + 32] = _2789
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2691 = mem[(32 * arg2.length) + 128]
                t = t + 1
                continue 
            _2795 = mem[_1935]
            t = 0
            while t < _2795:
                if t >= mem[_1935]:
                    revert with 'NH{q', 50
                if s > -t - 1:
                    revert with 'NH{q', 17
                if s + t >= mem[_475]:
                    revert with 'NH{q', 50
                mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1935 + 32]
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2795 = mem[_1935]
                t = t + 1
                continue 
            if s > -mem[_1935] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _1866 = mem[96]
            idx = idx + 1
            s = s + mem[_1935]
            continue 
        if mem[(32 * idx) + 128] == 3:
            _1934 = mem[(32 * arg2.length) + 128]
            if mem[(32 * arg2.length) + 128] > test266151307():
                revert with 'NH{q', 65
            _1941 = mem[64]
            mem[mem[64]] = mem[(32 * arg2.length) + 128]
            mem[64] = mem[64] + (32 * _1934) + 32
            if not _1934:
                _2223 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2223:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2265 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2309 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2309)
                    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2309)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2397 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2397] == mem[_2397 + 12 len 20]
                    if not mem[_2397 + 12 len 20]:
                        _2452 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2452] = address(_2265)
                        mem[_2452 + 32] = address(_2309)
                        mem[_2452 + 64] = 0
                        mem[_2452 + 96] = 0
                        mem[_2452 + 128] = 3
                        if t >= mem[_1941]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1941 + 32] = _2452
                    else:
                        require ext_code.size(mem[_2397 + 12 len 20])
                        staticcall mem[_2397 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2454 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2468 = mem[_2454]
                        require mem[_2454] == mem[_2454 + 18 len 14]
                        _2498 = mem[_2454 + 32]
                        require mem[_2454 + 32] == mem[_2454 + 50 len 14]
                        require mem[_2454 + 64] == mem[_2454 + 92 len 4]
                        _2527 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2527] = address(_2265)
                        mem[_2527 + 32] = address(_2309)
                        mem[_2527 + 64] = Mask(112, 0, _2468)
                        mem[_2527 + 96] = Mask(112, 0, _2498)
                        mem[_2527 + 128] = 3
                        if t >= mem[_1941]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1941 + 32] = _2527
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2223 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2547 = mem[_1941]
                t = 0
                while t < _2547:
                    if t >= mem[_1941]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1941 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2547 = mem[_1941]
                    t = t + 1
                    continue 
            else:
                mem[64] = _1941 + (32 * _1934) + 192
                mem[_1941 + (32 * _1934) + 32] = 0
                mem[_1941 + (32 * _1934) + 64] = 0
                mem[_1941 + (32 * _1934) + 96] = 0
                mem[_1941 + (32 * _1934) + 128] = 0
                mem[_1941 + (32 * _1934) + 160] = 0
                mem[var54001] = _1941 + (32 * _1934) + 32
                u = var54001
                t = var54002
                while t - 1:
                    _1866 = mem[96]
                    mem[64] = mem[64] + 160
                    mem[_1941 + (32 * _1934) + 32] = 0
                    mem[_1941 + (32 * _1934) + 64] = 0
                    mem[_1941 + (32 * _1934) + 96] = 0
                    mem[_1941 + (32 * _1934) + 128] = 0
                    mem[_1941 + (32 * _1934) + 160] = 0
                    mem[u + 32] = _1941 + (32 * _1934) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _2690 = mem[(32 * arg2.length) + 128]
                t = 0
                while t < _2690:
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2705 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                    if t >= mem[(32 * arg2.length) + 128]:
                        revert with 'NH{q', 50
                    _2728 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                    mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                    mem[mem[64] + 36] = address(_2728)
                    require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                    staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2728)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2746] == mem[_2746 + 12 len 20]
                    if not mem[_2746 + 12 len 20]:
                        _2764 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2764] = address(_2705)
                        mem[_2764 + 32] = address(_2728)
                        mem[_2764 + 64] = 0
                        mem[_2764 + 96] = 0
                        mem[_2764 + 128] = 3
                        if t >= mem[_1941]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1941 + 32] = _2764
                    else:
                        require ext_code.size(mem[_2746 + 12 len 20])
                        staticcall mem[_2746 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2766 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2774 = mem[_2766]
                        require mem[_2766] == mem[_2766 + 18 len 14]
                        _2778 = mem[_2766 + 32]
                        require mem[_2766 + 32] == mem[_2766 + 50 len 14]
                        require mem[_2766 + 64] == mem[_2766 + 92 len 4]
                        _2787 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2787] = address(_2705)
                        mem[_2787 + 32] = address(_2728)
                        mem[_2787 + 64] = Mask(112, 0, _2774)
                        mem[_2787 + 96] = Mask(112, 0, _2778)
                        mem[_2787 + 128] = 3
                        if t >= mem[_1941]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1941 + 32] = _2787
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2690 = mem[(32 * arg2.length) + 128]
                    t = t + 1
                    continue 
                _2794 = mem[_1941]
                t = 0
                while t < _2794:
                    if t >= mem[_1941]:
                        revert with 'NH{q', 50
                    if s > -t - 1:
                        revert with 'NH{q', 17
                    if s + t >= mem[_475]:
                        revert with 'NH{q', 50
                    mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1941 + 32]
                    if t == -1:
                        revert with 'NH{q', 17
                    _1866 = mem[96]
                    _2794 = mem[_1941]
                    t = t + 1
                    continue 
            if s > -mem[_1941] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _1866 = mem[96]
            idx = idx + 1
            s = s + mem[_1941]
            continue 
        if mem[(32 * idx) + 128] != 4:
            revert with 'NH{q', 81
        _1940 = mem[(32 * arg2.length) + 128]
        if mem[(32 * arg2.length) + 128] > test266151307():
            revert with 'NH{q', 65
        _1943 = mem[64]
        mem[mem[64]] = mem[(32 * arg2.length) + 128]
        mem[64] = mem[64] + (32 * _1940) + 32
        if not _1940:
            _2222 = mem[(32 * arg2.length) + 128]
            t = 0
            while t < _2222:
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2262 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2306 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                mem[mem[64] + 36] = address(_2306)
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2306)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2396 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2396] == mem[_2396 + 12 len 20]
                if not mem[_2396 + 12 len 20]:
                    _2449 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2449] = address(_2262)
                    mem[_2449 + 32] = address(_2306)
                    mem[_2449 + 64] = 0
                    mem[_2449 + 96] = 0
                    mem[_2449 + 128] = 4
                    if t >= mem[_1943]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1943 + 32] = _2449
                else:
                    require ext_code.size(mem[_2396 + 12 len 20])
                    staticcall mem[_2396 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2451 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2465 = mem[_2451]
                    require mem[_2451] == mem[_2451 + 18 len 14]
                    _2497 = mem[_2451 + 32]
                    require mem[_2451 + 32] == mem[_2451 + 50 len 14]
                    require mem[_2451 + 64] == mem[_2451 + 92 len 4]
                    _2525 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2525] = address(_2262)
                    mem[_2525 + 32] = address(_2306)
                    mem[_2525 + 64] = Mask(112, 0, _2465)
                    mem[_2525 + 96] = Mask(112, 0, _2497)
                    mem[_2525 + 128] = 4
                    if t >= mem[_1943]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1943 + 32] = _2525
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2222 = mem[(32 * arg2.length) + 128]
                t = t + 1
                continue 
            _2545 = mem[_1943]
            t = 0
            while t < _2545:
                if t >= mem[_1943]:
                    revert with 'NH{q', 50
                if s > -t - 1:
                    revert with 'NH{q', 17
                if s + t >= mem[_475]:
                    revert with 'NH{q', 50
                mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1943 + 32]
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2545 = mem[_1943]
                t = t + 1
                continue 
        else:
            mem[64] = _1943 + (32 * _1940) + 192
            mem[_1943 + (32 * _1940) + 32] = 0
            mem[_1943 + (32 * _1940) + 64] = 0
            mem[_1943 + (32 * _1940) + 96] = 0
            mem[_1943 + (32 * _1940) + 128] = 0
            mem[_1943 + (32 * _1940) + 160] = 0
            mem[var55001] = _1943 + (32 * _1940) + 32
            u = var55001
            t = var55002
            while t - 1:
                _1866 = mem[96]
                mem[64] = mem[64] + 160
                mem[_1943 + (32 * _1940) + 32] = 0
                mem[_1943 + (32 * _1940) + 64] = 0
                mem[_1943 + (32 * _1940) + 96] = 0
                mem[_1943 + (32 * _1940) + 128] = 0
                mem[_1943 + (32 * _1940) + 160] = 0
                mem[u + 32] = _1943 + (32 * _1940) + 32
                u = u + 32
                t = t - 1
                continue 
            _2689 = mem[(32 * arg2.length) + 128]
            t = 0
            while t < _2689:
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2702 = mem[mem[(32 * t) + (32 * arg2.length) + 160]]
                if t >= mem[(32 * arg2.length) + 128]:
                    revert with 'NH{q', 50
                _2726 = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 32]
                mem[mem[64] + 4] = mem[mem[(32 * t) + (32 * arg2.length) + 160] + 12 len 20]
                mem[mem[64] + 36] = address(_2726)
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_2726)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2745] == mem[_2745 + 12 len 20]
                if not mem[_2745 + 12 len 20]:
                    _2761 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2761] = address(_2702)
                    mem[_2761 + 32] = address(_2726)
                    mem[_2761 + 64] = 0
                    mem[_2761 + 96] = 0
                    mem[_2761 + 128] = 4
                    if t >= mem[_1943]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1943 + 32] = _2761
                else:
                    require ext_code.size(mem[_2745 + 12 len 20])
                    staticcall mem[_2745 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2773 = mem[_2763]
                    require mem[_2763] == mem[_2763 + 18 len 14]
                    _2777 = mem[_2763 + 32]
                    require mem[_2763 + 32] == mem[_2763 + 50 len 14]
                    require mem[_2763 + 64] == mem[_2763 + 92 len 4]
                    _2785 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2785] = address(_2702)
                    mem[_2785 + 32] = address(_2726)
                    mem[_2785 + 64] = Mask(112, 0, _2773)
                    mem[_2785 + 96] = Mask(112, 0, _2777)
                    mem[_2785 + 128] = 4
                    if t >= mem[_1943]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + _1943 + 32] = _2785
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2689 = mem[(32 * arg2.length) + 128]
                t = t + 1
                continue 
            _2793 = mem[_1943]
            t = 0
            while t < _2793:
                if t >= mem[_1943]:
                    revert with 'NH{q', 50
                if s > -t - 1:
                    revert with 'NH{q', 17
                if s + t >= mem[_475]:
                    revert with 'NH{q', 50
                mem[(32 * s + t) + _475 + 32] = mem[(32 * t) + _1943 + 32]
                if t == -1:
                    revert with 'NH{q', 17
                _1866 = mem[96]
                _2793 = mem[_1943]
                t = t + 1
                continue 
        if s > -mem[_1943] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _1866 = mem[96]
        idx = idx + 1
        s = s + mem[_1943]
        continue 
    _1881 = mem[64]
    mem[mem[64]] = 32
    _1894 = mem[_475]
    mem[mem[64] + 32] = mem[_475]
    idx = 0
    s = _475 + 32
    t = mem[64] + 64
    while idx < _1894:
        _2230 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2230 + 44 len 20]
        mem[t + 64] = mem[_2230 + 82 len 14]
        mem[t + 96] = mem[_2230 + 114 len 14]
        mem[t + 128] = mem[_2230 + 146 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _1881 + (160 * _1894) + -mem[64] + 64
}



}
