contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f3e191e3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160 > test266151307() or (32 * ('cd', 68).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160] = ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192
    if not ('cd', 68).length:
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            _792 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _795 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _792) + 32
            if not _792:
                _1056 = mem[96]
                t = 0
                u = 0
                while t < _1056:
                    if t >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * t) + 140 len 20])
                    staticcall mem[(32 * t) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1070 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1079 = mem[_1070]
                    require mem[_1070] == mem[_1070 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1113 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1113)
                    require ext_code.size(address(_1079))
                    staticcall address(_1079).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1113)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1135] == mem[_1135 + 12 len 20]
                    if not mem[_1135 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        _1056 = mem[96]
                        t = t + 1
                        u = u
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1151 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1151)
                    require ext_code.size(address(_1079))
                    staticcall address(_1079).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1151)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1170 = mem[_1168]
                    require mem[_1168] == mem[_1168 + 12 len 20]
                    require ext_code.size(mem[_1168 + 12 len 20])
                    staticcall mem[_1168 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1183 = mem[_1181]
                    require mem[_1181] == mem[_1181 + 18 len 14]
                    _1191 = mem[_1181 + 32]
                    require mem[_1181 + 32] == mem[_1181 + 50 len 14]
                    require mem[_1181 + 64] == mem[_1181 + 92 len 4]
                    require ext_code.size(address(_1170))
                    staticcall address(_1170).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1205] == mem[_1205 + 12 len 20]
                    if mem[_1205 + 12 len 20] == address(cd[36]):
                        _1218 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1170))
                        staticcall address(_1170).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1225 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1225] == mem[_1225 + 12 len 20]
                        mem[_1218] = mem[_1225 + 12 len 20]
                        require ext_code.size(address(_1170))
                        staticcall address(_1170).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1262] == mem[_1262 + 12 len 20]
                        mem[_1218 + 32] = mem[_1262 + 12 len 20]
                        mem[_1218 + 64] = address(_1170)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1218 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1218 + 128] = Mask(112, 0, _1183)
                        mem[_1218 + 160] = Mask(112, 0, _1191)
                        if u >= mem[_795]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _795 + 32] = _1218
                    else:
                        _1221 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1170))
                        staticcall address(_1170).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1226] == mem[_1226 + 12 len 20]
                        mem[_1221] = mem[_1226 + 12 len 20]
                        require ext_code.size(address(_1170))
                        staticcall address(_1170).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1263] == mem[_1263 + 12 len 20]
                        mem[_1221 + 32] = mem[_1263 + 12 len 20]
                        mem[_1221 + 64] = address(_1170)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1221 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1221 + 128] = Mask(112, 0, _1191)
                        mem[_1221 + 160] = Mask(112, 0, _1183)
                        if u >= mem[_795]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _795 + 32] = _1221
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    _1056 = mem[96]
                    t = t + 1
                    u = u + 1
                    continue 
                _1059 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1059] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1059 + 32] = _795
                if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1059
            else:
                mem[64] = _795 + (32 * _792) + 224
                mem[_795 + (32 * _792) + 32] = 0
                mem[_795 + (32 * _792) + 64] = 0
                mem[_795 + (32 * _792) + 96] = 0
                mem[_795 + (32 * _792) + 128] = 0
                mem[_795 + (32 * _792) + 160] = 0
                mem[_795 + (32 * _792) + 192] = 0
                mem[var57001] = _795 + (32 * _792) + 32
                u = var57001
                t = var57002
                while t - 1:
                    mem[64] = mem[64] + 192
                    mem[_795 + (32 * _792) + 32] = 0
                    mem[_795 + (32 * _792) + 64] = 0
                    mem[_795 + (32 * _792) + 96] = 0
                    mem[_795 + (32 * _792) + 128] = 0
                    mem[_795 + (32 * _792) + 160] = 0
                    mem[_795 + (32 * _792) + 192] = 0
                    mem[u + 32] = _795 + (32 * _792) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _1513 = mem[96]
                t = 0
                u = 0
                while t < _1513:
                    if t >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * t) + 140 len 20])
                    staticcall mem[(32 * t) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1541 = mem[_1535]
                    require mem[_1535] == mem[_1535 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1554 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1554)
                    require ext_code.size(address(_1541))
                    staticcall address(_1541).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1554)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1567] == mem[_1567 + 12 len 20]
                    if not mem[_1567 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        _1513 = mem[96]
                        t = t + 1
                        u = u
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1578 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1578)
                    require ext_code.size(address(_1541))
                    staticcall address(_1541).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1578)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1588 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1590 = mem[_1588]
                    require mem[_1588] == mem[_1588 + 12 len 20]
                    require ext_code.size(mem[_1588 + 12 len 20])
                    staticcall mem[_1588 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1601 = mem[_1599]
                    require mem[_1599] == mem[_1599 + 18 len 14]
                    _1607 = mem[_1599 + 32]
                    require mem[_1599 + 32] == mem[_1599 + 50 len 14]
                    require mem[_1599 + 64] == mem[_1599 + 92 len 4]
                    require ext_code.size(address(_1590))
                    staticcall address(_1590).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1617] == mem[_1617 + 12 len 20]
                    if mem[_1617 + 12 len 20] == address(cd[36]):
                        _1625 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1590))
                        staticcall address(_1590).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1637 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1637] == mem[_1637 + 12 len 20]
                        mem[_1625] = mem[_1637 + 12 len 20]
                        require ext_code.size(address(_1590))
                        staticcall address(_1590).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1663 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1663] == mem[_1663 + 12 len 20]
                        mem[_1625 + 32] = mem[_1663 + 12 len 20]
                        mem[_1625 + 64] = address(_1590)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1625 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1625 + 128] = Mask(112, 0, _1601)
                        mem[_1625 + 160] = Mask(112, 0, _1607)
                        if u >= mem[_795]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _795 + 32] = _1625
                    else:
                        _1628 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1590))
                        staticcall address(_1590).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1638] == mem[_1638 + 12 len 20]
                        mem[_1628] = mem[_1638 + 12 len 20]
                        require ext_code.size(address(_1590))
                        staticcall address(_1590).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1664 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1664] == mem[_1664 + 12 len 20]
                        mem[_1628 + 32] = mem[_1664 + 12 len 20]
                        mem[_1628 + 64] = address(_1590)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1628 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1628 + 128] = Mask(112, 0, _1607)
                        mem[_1628 + 160] = Mask(112, 0, _1601)
                        if u >= mem[_795]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _795 + 32] = _1628
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    _1513 = mem[96]
                    t = t + 1
                    u = u + 1
                    continue 
                _1515 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1515] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1515 + 32] = _795
                if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1515
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            continue 
        _794 = mem[64]
        mem[mem[64]] = 32
        _797 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + (32 * _797) + 64
        u = mem[64] + 64
        while idx < _797:
            mem[u] = t + -_794 - 64
            _1058 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1086 = mem[_1058 + 32]
            mem[t + 32] = 64
            _1098 = mem[_1086]
            mem[t + 64] = mem[_1086]
            v = 0
            w = _1086 + 32
            x = t + 96
            while v < _1098:
                _1318 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1318 + 44 len 20]
                mem[x + 64] = mem[_1318 + 76 len 20]
                mem[x + 96] = mem[_1318 + 108 len 20]
                mem[x + 128] = mem[_1318 + 128]
                mem[x + 160] = mem[_1318 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1098) + 96
            u = u + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 256
        mem[(32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 224] = 96
        mem[var52001] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192
        s = var52001
        idx = var52002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192] = 0
            mem[(32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 224] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + (64 * ('cd', 68).length) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _1317 = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = 0
        while idx < _1317:
            _1319 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _1321 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _1319) + 32
            if not _1319:
                _1514 = mem[96]
                t = 0
                u = 0
                while t < _1514:
                    if t >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * t) + 140 len 20])
                    staticcall mem[(32 * t) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1542 = mem[_1536]
                    require mem[_1536] == mem[_1536 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1556 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1556)
                    require ext_code.size(address(_1542))
                    staticcall address(_1542).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1556)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1568] == mem[_1568 + 12 len 20]
                    if not mem[_1568 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        _1317 = mem[(32 * ('cd', 4).length) + 128]
                        _1514 = mem[96]
                        t = t + 1
                        u = u
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1580 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1580)
                    require ext_code.size(address(_1542))
                    staticcall address(_1542).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1580)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1589 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1591 = mem[_1589]
                    require mem[_1589] == mem[_1589 + 12 len 20]
                    require ext_code.size(mem[_1589 + 12 len 20])
                    staticcall mem[_1589 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1600 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1602 = mem[_1600]
                    require mem[_1600] == mem[_1600 + 18 len 14]
                    _1608 = mem[_1600 + 32]
                    require mem[_1600 + 32] == mem[_1600 + 50 len 14]
                    require mem[_1600 + 64] == mem[_1600 + 92 len 4]
                    require ext_code.size(address(_1591))
                    staticcall address(_1591).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1618] == mem[_1618 + 12 len 20]
                    if mem[_1618 + 12 len 20] == address(cd[36]):
                        _1631 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1591))
                        staticcall address(_1591).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1639] == mem[_1639 + 12 len 20]
                        mem[_1631] = mem[_1639 + 12 len 20]
                        require ext_code.size(address(_1591))
                        staticcall address(_1591).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1665 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1665] == mem[_1665 + 12 len 20]
                        mem[_1631 + 32] = mem[_1665 + 12 len 20]
                        mem[_1631 + 64] = address(_1591)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1631 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1631 + 128] = Mask(112, 0, _1602)
                        mem[_1631 + 160] = Mask(112, 0, _1608)
                        if u >= mem[_1321]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _1321 + 32] = _1631
                    else:
                        _1634 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1591))
                        staticcall address(_1591).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1640 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1640] == mem[_1640 + 12 len 20]
                        mem[_1634] = mem[_1640 + 12 len 20]
                        require ext_code.size(address(_1591))
                        staticcall address(_1591).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1666 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1666] == mem[_1666 + 12 len 20]
                        mem[_1634 + 32] = mem[_1666 + 12 len 20]
                        mem[_1634 + 64] = address(_1591)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1634 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1634 + 128] = Mask(112, 0, _1608)
                        mem[_1634 + 160] = Mask(112, 0, _1602)
                        if u >= mem[_1321]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _1321 + 32] = _1634
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    _1317 = mem[(32 * ('cd', 4).length) + 128]
                    _1514 = mem[96]
                    t = t + 1
                    u = u + 1
                    continue 
                _1519 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1519] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1519 + 32] = _1321
                if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1519
            else:
                mem[64] = _1321 + (32 * _1319) + 224
                mem[_1321 + (32 * _1319) + 32] = 0
                mem[_1321 + (32 * _1319) + 64] = 0
                mem[_1321 + (32 * _1319) + 96] = 0
                mem[_1321 + (32 * _1319) + 128] = 0
                mem[_1321 + (32 * _1319) + 160] = 0
                mem[_1321 + (32 * _1319) + 192] = 0
                mem[var64001] = _1321 + (32 * _1319) + 32
                u = var64001
                t = var64002
                while t - 1:
                    _1317 = mem[(32 * ('cd', 4).length) + 128]
                    mem[64] = mem[64] + 192
                    mem[_1321 + (32 * _1319) + 32] = 0
                    mem[_1321 + (32 * _1319) + 64] = 0
                    mem[_1321 + (32 * _1319) + 96] = 0
                    mem[_1321 + (32 * _1319) + 128] = 0
                    mem[_1321 + (32 * _1319) + 160] = 0
                    mem[_1321 + (32 * _1319) + 192] = 0
                    mem[u + 32] = _1321 + (32 * _1319) + 32
                    u = u + 32
                    t = t - 1
                    continue 
                _1762 = mem[96]
                t = 0
                u = 0
                while t < _1762:
                    if t >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * t) + 140 len 20])
                    staticcall mem[(32 * t) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1771 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1772 = mem[_1771]
                    require mem[_1771] == mem[_1771 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1774 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1774)
                    require ext_code.size(address(_1772))
                    staticcall address(_1772).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1774)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1777] == mem[_1777 + 12 len 20]
                    if not mem[_1777 + 12 len 20]:
                        if t == -1:
                            revert with 'NH{q', 17
                        _1317 = mem[(32 * ('cd', 4).length) + 128]
                        _1762 = mem[96]
                        t = t + 1
                        u = u
                        continue 
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1780 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1780)
                    require ext_code.size(address(_1772))
                    staticcall address(_1772).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1780)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1784 = mem[_1783]
                    require mem[_1783] == mem[_1783 + 12 len 20]
                    require ext_code.size(mem[_1783 + 12 len 20])
                    staticcall mem[_1783 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1788 = mem[_1787]
                    require mem[_1787] == mem[_1787 + 18 len 14]
                    _1789 = mem[_1787 + 32]
                    require mem[_1787 + 32] == mem[_1787 + 50 len 14]
                    require mem[_1787 + 64] == mem[_1787 + 92 len 4]
                    require ext_code.size(address(_1784))
                    staticcall address(_1784).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1793 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1793] == mem[_1793 + 12 len 20]
                    if mem[_1793 + 12 len 20] == address(cd[36]):
                        _1795 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1784))
                        staticcall address(_1784).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1801] == mem[_1801 + 12 len 20]
                        mem[_1795] = mem[_1801 + 12 len 20]
                        require ext_code.size(address(_1784))
                        staticcall address(_1784).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1809 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1809] == mem[_1809 + 12 len 20]
                        mem[_1795 + 32] = mem[_1809 + 12 len 20]
                        mem[_1795 + 64] = address(_1784)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1795 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1795 + 128] = Mask(112, 0, _1788)
                        mem[_1795 + 160] = Mask(112, 0, _1789)
                        if u >= mem[_1321]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _1321 + 32] = _1795
                    else:
                        _1798 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1784))
                        staticcall address(_1784).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1802] == mem[_1802 + 12 len 20]
                        mem[_1798] = mem[_1802 + 12 len 20]
                        require ext_code.size(address(_1784))
                        staticcall address(_1784).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1810 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1810] == mem[_1810 + 12 len 20]
                        mem[_1798 + 32] = mem[_1810 + 12 len 20]
                        mem[_1798 + 64] = address(_1784)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1798 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1798 + 128] = Mask(112, 0, _1789)
                        mem[_1798 + 160] = Mask(112, 0, _1788)
                        if u >= mem[_1321]:
                            revert with 'NH{q', 50
                        mem[(32 * u) + _1321 + 32] = _1798
                    if u == -1:
                        revert with 'NH{q', 17
                    if t == -1:
                        revert with 'NH{q', 17
                    _1317 = mem[(32 * ('cd', 4).length) + 128]
                    _1762 = mem[96]
                    t = t + 1
                    u = u + 1
                    continue 
                _1763 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1763] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1763 + 32] = _1321
                if s >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1763
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _1317 = mem[(32 * ('cd', 4).length) + 128]
            idx = idx + 1
            s = s + 1
            continue 
        _1320 = mem[64]
        mem[mem[64]] = 32
        _1328 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + (32 * _1328) + 64
        u = mem[64] + 64
        while idx < _1328:
            mem[u] = t + -_1320 - 64
            _1518 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1548 = mem[_1518 + 32]
            mem[t + 32] = 64
            _1550 = mem[_1548]
            mem[t + 64] = mem[_1548]
            v = 0
            w = _1548 + 32
            x = t + 96
            while v < _1550:
                _1698 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1698 + 44 len 20]
                mem[x + 64] = mem[_1698 + 76 len 20]
                mem[x + 96] = mem[_1698 + 108 len 20]
                mem[x + 128] = mem[_1698 + 128]
                mem[x + 160] = mem[_1698 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1550) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
