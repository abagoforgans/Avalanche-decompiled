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
        while idx < ('cd', 68).length:
            _734 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _737 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _734) + 32
            if not _734:
                _974 = mem[96]
                s = 0
                t = 0
                while s < _974:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _997 = mem[_988]
                    require mem[_988] == mem[_988 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1031 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1031)
                    require ext_code.size(address(_997))
                    staticcall address(_997).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1031)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1053 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1056 = mem[_1053]
                    require mem[_1053] == mem[_1053 + 12 len 20]
                    require ext_code.size(mem[_1053 + 12 len 20])
                    staticcall mem[_1053 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1070 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1074 = mem[_1070]
                    require mem[_1070] == mem[_1070 + 18 len 14]
                    _1083 = mem[_1070 + 32]
                    require mem[_1070 + 32] == mem[_1070 + 50 len 14]
                    require mem[_1070 + 64] == mem[_1070 + 92 len 4]
                    require ext_code.size(address(_1056))
                    staticcall address(_1056).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1099 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1099] == mem[_1099 + 12 len 20]
                    if mem[_1099 + 12 len 20] == address(cd[36]):
                        _1112 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1056))
                        staticcall address(_1056).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1119 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1119] == mem[_1119 + 12 len 20]
                        mem[_1112] = mem[_1119 + 12 len 20]
                        require ext_code.size(address(_1056))
                        staticcall address(_1056).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1156] == mem[_1156 + 12 len 20]
                        mem[_1112 + 32] = mem[_1156 + 12 len 20]
                        mem[_1112 + 64] = address(_1056)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1112 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1112 + 128] = Mask(112, 0, _1074)
                        mem[_1112 + 160] = Mask(112, 0, _1083)
                        if t >= mem[_737]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _737 + 32] = _1112
                    else:
                        _1115 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1056))
                        staticcall address(_1056).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1120] == mem[_1120 + 12 len 20]
                        mem[_1115] = mem[_1120 + 12 len 20]
                        require ext_code.size(address(_1056))
                        staticcall address(_1056).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1157] == mem[_1157 + 12 len 20]
                        mem[_1115 + 32] = mem[_1157 + 12 len 20]
                        mem[_1115 + 64] = address(_1056)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1115 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1115 + 128] = Mask(112, 0, _1083)
                        mem[_1115 + 160] = Mask(112, 0, _1074)
                        if t >= mem[_737]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _737 + 32] = _1115
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _974 = mem[96]
                    s = s + 1
                    t = t + 1
                    continue 
                _977 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_977] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_977 + 32] = _737
                if 0 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _977
            else:
                mem[64] = _737 + (32 * _734) + 224
                mem[_737 + (32 * _734) + 32] = 0
                mem[_737 + (32 * _734) + 64] = 0
                mem[_737 + (32 * _734) + 96] = 0
                mem[_737 + (32 * _734) + 128] = 0
                mem[_737 + (32 * _734) + 160] = 0
                mem[_737 + (32 * _734) + 192] = 0
                mem[var57001] = _737 + (32 * _734) + 32
                t = var57001
                s = var57002
                while s - 1:
                    mem[64] = mem[64] + 192
                    mem[_737 + (32 * _734) + 32] = 0
                    mem[_737 + (32 * _734) + 64] = 0
                    mem[_737 + (32 * _734) + 96] = 0
                    mem[_737 + (32 * _734) + 128] = 0
                    mem[_737 + (32 * _734) + 160] = 0
                    mem[_737 + (32 * _734) + 192] = 0
                    mem[t + 32] = _737 + (32 * _734) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _1389 = mem[96]
                s = 0
                t = 0
                while s < _1389:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1411 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1417 = mem[_1411]
                    require mem[_1411] == mem[_1411 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1430 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1430)
                    require ext_code.size(address(_1417))
                    staticcall address(_1417).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1430)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1443 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1445 = mem[_1443]
                    require mem[_1443] == mem[_1443 + 12 len 20]
                    require ext_code.size(mem[_1443 + 12 len 20])
                    staticcall mem[_1443 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1456 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1459 = mem[_1456]
                    require mem[_1456] == mem[_1456 + 18 len 14]
                    _1465 = mem[_1456 + 32]
                    require mem[_1456 + 32] == mem[_1456 + 50 len 14]
                    require mem[_1456 + 64] == mem[_1456 + 92 len 4]
                    require ext_code.size(address(_1445))
                    staticcall address(_1445).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1475 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1475] == mem[_1475 + 12 len 20]
                    if mem[_1475 + 12 len 20] == address(cd[36]):
                        _1483 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1445))
                        staticcall address(_1445).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1495 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1495] == mem[_1495 + 12 len 20]
                        mem[_1483] = mem[_1495 + 12 len 20]
                        require ext_code.size(address(_1445))
                        staticcall address(_1445).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1521] == mem[_1521 + 12 len 20]
                        mem[_1483 + 32] = mem[_1521 + 12 len 20]
                        mem[_1483 + 64] = address(_1445)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1483 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1483 + 128] = Mask(112, 0, _1459)
                        mem[_1483 + 160] = Mask(112, 0, _1465)
                        if t >= mem[_737]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _737 + 32] = _1483
                    else:
                        _1486 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1445))
                        staticcall address(_1445).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1496] == mem[_1496 + 12 len 20]
                        mem[_1486] = mem[_1496 + 12 len 20]
                        require ext_code.size(address(_1445))
                        staticcall address(_1445).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1522] == mem[_1522 + 12 len 20]
                        mem[_1486 + 32] = mem[_1522 + 12 len 20]
                        mem[_1486 + 64] = address(_1445)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1486 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1486 + 128] = Mask(112, 0, _1465)
                        mem[_1486 + 160] = Mask(112, 0, _1459)
                        if t >= mem[_737]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _737 + 32] = _1486
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _1389 = mem[96]
                    s = s + 1
                    t = t + 1
                    continue 
                _1391 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1391] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1391 + 32] = _737
                if 0 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1391
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _736 = mem[64]
        mem[mem[64]] = 32
        _739 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + (32 * _739) + 64
        u = mem[64] + 64
        while idx < _739:
            mem[u] = t + -_736 - 64
            _976 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1004 = mem[_976 + 32]
            mem[t + 32] = 64
            _1016 = mem[_1004]
            mem[t + 64] = mem[_1004]
            v = 0
            w = _1004 + 32
            x = t + 96
            while v < _1016:
                _1212 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1212 + 44 len 20]
                mem[x + 64] = mem[_1212 + 76 len 20]
                mem[x + 96] = mem[_1212 + 108 len 20]
                mem[x + 128] = mem[_1212 + 128]
                mem[x + 160] = mem[_1212 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1016) + 96
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
        _1211 = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        while idx < _1211:
            _1213 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _1215 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _1213) + 32
            if not _1213:
                _1390 = mem[96]
                s = 0
                t = 0
                while s < _1390:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1412 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1418 = mem[_1412]
                    require mem[_1412] == mem[_1412 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1432 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1432)
                    require ext_code.size(address(_1418))
                    staticcall address(_1418).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1432)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1446 = mem[_1444]
                    require mem[_1444] == mem[_1444 + 12 len 20]
                    require ext_code.size(mem[_1444 + 12 len 20])
                    staticcall mem[_1444 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1457 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1460 = mem[_1457]
                    require mem[_1457] == mem[_1457 + 18 len 14]
                    _1466 = mem[_1457 + 32]
                    require mem[_1457 + 32] == mem[_1457 + 50 len 14]
                    require mem[_1457 + 64] == mem[_1457 + 92 len 4]
                    require ext_code.size(address(_1446))
                    staticcall address(_1446).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1476] == mem[_1476 + 12 len 20]
                    if mem[_1476 + 12 len 20] == address(cd[36]):
                        _1489 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1446))
                        staticcall address(_1446).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1497 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1497] == mem[_1497 + 12 len 20]
                        mem[_1489] = mem[_1497 + 12 len 20]
                        require ext_code.size(address(_1446))
                        staticcall address(_1446).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1523 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1523] == mem[_1523 + 12 len 20]
                        mem[_1489 + 32] = mem[_1523 + 12 len 20]
                        mem[_1489 + 64] = address(_1446)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1489 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1489 + 128] = Mask(112, 0, _1460)
                        mem[_1489 + 160] = Mask(112, 0, _1466)
                        if t >= mem[_1215]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1215 + 32] = _1489
                    else:
                        _1492 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1446))
                        staticcall address(_1446).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1498] == mem[_1498 + 12 len 20]
                        mem[_1492] = mem[_1498 + 12 len 20]
                        require ext_code.size(address(_1446))
                        staticcall address(_1446).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1524 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1524] == mem[_1524 + 12 len 20]
                        mem[_1492 + 32] = mem[_1524 + 12 len 20]
                        mem[_1492 + 64] = address(_1446)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1492 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1492 + 128] = Mask(112, 0, _1466)
                        mem[_1492 + 160] = Mask(112, 0, _1460)
                        if t >= mem[_1215]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1215 + 32] = _1492
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _1211 = mem[(32 * ('cd', 4).length) + 128]
                    _1390 = mem[96]
                    s = s + 1
                    t = t + 1
                    continue 
                _1395 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1395] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1395 + 32] = _1215
                if 0 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1395
            else:
                mem[64] = _1215 + (32 * _1213) + 224
                mem[_1215 + (32 * _1213) + 32] = 0
                mem[_1215 + (32 * _1213) + 64] = 0
                mem[_1215 + (32 * _1213) + 96] = 0
                mem[_1215 + (32 * _1213) + 128] = 0
                mem[_1215 + (32 * _1213) + 160] = 0
                mem[_1215 + (32 * _1213) + 192] = 0
                mem[var64001] = _1215 + (32 * _1213) + 32
                t = var64001
                s = var64002
                while s - 1:
                    _1211 = mem[(32 * ('cd', 4).length) + 128]
                    mem[64] = mem[64] + 192
                    mem[_1215 + (32 * _1213) + 32] = 0
                    mem[_1215 + (32 * _1213) + 64] = 0
                    mem[_1215 + (32 * _1213) + 96] = 0
                    mem[_1215 + (32 * _1213) + 128] = 0
                    mem[_1215 + (32 * _1213) + 160] = 0
                    mem[_1215 + (32 * _1213) + 192] = 0
                    mem[t + 32] = _1215 + (32 * _1213) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _1614 = mem[96]
                s = 0
                t = 0
                while s < _1614:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1623 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1624 = mem[_1623]
                    require mem[_1623] == mem[_1623 + 12 len 20]
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    _1626 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
                    mem[mem[64] + 4] = address(cd[36])
                    mem[mem[64] + 36] = address(_1626)
                    require ext_code.size(address(_1624))
                    staticcall address(_1624).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[36]), address(_1626)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1629 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1630 = mem[_1629]
                    require mem[_1629] == mem[_1629 + 12 len 20]
                    require ext_code.size(mem[_1629 + 12 len 20])
                    staticcall mem[_1629 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1634 = mem[_1633]
                    require mem[_1633] == mem[_1633 + 18 len 14]
                    _1635 = mem[_1633 + 32]
                    require mem[_1633 + 32] == mem[_1633 + 50 len 14]
                    require mem[_1633 + 64] == mem[_1633 + 92 len 4]
                    require ext_code.size(address(_1630))
                    staticcall address(_1630).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1639] == mem[_1639 + 12 len 20]
                    if mem[_1639 + 12 len 20] == address(cd[36]):
                        _1641 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1630))
                        staticcall address(_1630).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1647] == mem[_1647 + 12 len 20]
                        mem[_1641] = mem[_1647 + 12 len 20]
                        require ext_code.size(address(_1630))
                        staticcall address(_1630).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1655] == mem[_1655 + 12 len 20]
                        mem[_1641 + 32] = mem[_1655 + 12 len 20]
                        mem[_1641 + 64] = address(_1630)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1641 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1641 + 128] = Mask(112, 0, _1634)
                        mem[_1641 + 160] = Mask(112, 0, _1635)
                        if t >= mem[_1215]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1215 + 32] = _1641
                    else:
                        _1644 = mem[64]
                        mem[64] = mem[64] + 192
                        require ext_code.size(address(_1630))
                        staticcall address(_1630).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1648 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1648] == mem[_1648 + 12 len 20]
                        mem[_1644] = mem[_1648 + 12 len 20]
                        require ext_code.size(address(_1630))
                        staticcall address(_1630).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1656] == mem[_1656 + 12 len 20]
                        mem[_1644 + 32] = mem[_1656 + 12 len 20]
                        mem[_1644 + 64] = address(_1630)
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[_1644 + 96] = mem[(32 * idx) + 140 len 20]
                        mem[_1644 + 128] = Mask(112, 0, _1635)
                        mem[_1644 + 160] = Mask(112, 0, _1634)
                        if t >= mem[_1215]:
                            revert with 'NH{q', 50
                        mem[(32 * t) + _1215 + 32] = _1644
                    if t == -1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    _1211 = mem[(32 * ('cd', 4).length) + 128]
                    _1614 = mem[96]
                    s = s + 1
                    t = t + 1
                    continue 
                _1615 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[_1615] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
                mem[_1615 + 32] = _1215
                if 0 >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]:
                    revert with 'NH{q', 50
                mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192] = _1615
            if idx == -1:
                revert with 'NH{q', 17
            _1211 = mem[(32 * ('cd', 4).length) + 128]
            idx = idx + 1
            continue 
        _1214 = mem[64]
        mem[mem[64]] = 32
        _1222 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 160]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 68).length) + 192
        t = mem[64] + (32 * _1222) + 64
        u = mem[64] + 64
        while idx < _1222:
            mem[u] = t + -_1214 - 64
            _1394 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1424 = mem[_1394 + 32]
            mem[t + 32] = 64
            _1426 = mem[_1424]
            mem[t + 64] = mem[_1424]
            v = 0
            w = _1424 + 32
            x = t + 96
            while v < _1426:
                _1556 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1556 + 44 len 20]
                mem[x + 64] = mem[_1556 + 76 len 20]
                mem[x + 96] = mem[_1556 + 108 len 20]
                mem[x + 128] = mem[_1556 + 128]
                mem[x + 160] = mem[_1556 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1426) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
