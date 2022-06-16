contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_e740972f(?) payable {
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
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
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307() or (32 * ('cd', 68).length) + 192 < 160:
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
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
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = ('cd', 68).length
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 224
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            _1205 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _1209 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _1205) + 32
            if not _1205:
                _1508 = mem[96]
                s = 0
                while s < _1508:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1533 = mem[_1521]
                    require mem[_1521] == mem[_1521 + 12 len 20]
                    if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _1573 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_1573)
                    require ext_code.size(address(_1533))
                    staticcall address(_1533).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_1573)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1598 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1598] == mem[_1598 + 12 len 20]
                    if mem[_1598 + 12 len 20]:
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        _1619 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                        mem[mem[64] + 36] = address(_1619)
                        require ext_code.size(address(_1533))
                        staticcall address(_1533).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_1619)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1642 = mem[_1641]
                        require mem[_1641] == mem[_1641 + 12 len 20]
                        require ext_code.size(mem[_1641 + 12 len 20])
                        staticcall mem[_1641 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1655 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1658 = mem[_1655]
                        require mem[_1655] == mem[_1655 + 18 len 14]
                        _1667 = mem[_1655 + 32]
                        require mem[_1655 + 32] == mem[_1655 + 50 len 14]
                        require mem[_1655 + 64] == mem[_1655 + 92 len 4]
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        _1679 = mem[(32 * ('cd', 4).length) + 160]
                        require ext_code.size(address(_1642))
                        staticcall address(_1642).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1683 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1683] == mem[_1683 + 12 len 20]
                        if mem[_1683 + 12 len 20] == address(_1679):
                            _1702 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_1642))
                            staticcall address(_1642).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1709 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1709] == mem[_1709 + 12 len 20]
                            mem[_1702] = mem[_1709 + 12 len 20]
                            require ext_code.size(address(_1642))
                            staticcall address(_1642).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1746 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1746] == mem[_1746 + 12 len 20]
                            mem[_1702 + 32] = mem[_1746 + 12 len 20]
                            mem[_1702 + 64] = address(_1642)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_1702 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_1702 + 128] = Mask(112, 0, _1658)
                            mem[_1702 + 160] = Mask(112, 0, _1667)
                            if s >= mem[_1209]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1209 + 32] = _1702
                        else:
                            _1705 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_1642))
                            staticcall address(_1642).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1710] == mem[_1710 + 12 len 20]
                            mem[_1705] = mem[_1710 + 12 len 20]
                            require ext_code.size(address(_1642))
                            staticcall address(_1642).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1747 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1747] == mem[_1747 + 12 len 20]
                            mem[_1705 + 32] = mem[_1747 + 12 len 20]
                            mem[_1705 + 64] = address(_1642)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_1705 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_1705 + 128] = Mask(112, 0, _1667)
                            mem[_1705 + 160] = Mask(112, 0, _1658)
                            if s >= mem[_1209]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1209 + 32] = _1705
                    if s == -1:
                        revert with 'NH{q', 17
                    _1508 = mem[96]
                    s = s + 1
                    continue 
                _1511 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[_1511] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                mem[_1511 + 32] = _1209
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _1511
            else:
                mem[64] = _1209 + (32 * _1205) + 224
                mem[_1209 + (32 * _1205) + 32] = 0
                mem[_1209 + (32 * _1205) + 64] = 0
                mem[_1209 + (32 * _1205) + 96] = 0
                mem[_1209 + (32 * _1205) + 128] = 0
                mem[_1209 + (32 * _1205) + 160] = 0
                mem[_1209 + (32 * _1205) + 192] = 0
                mem[var64001] = _1209 + (32 * _1205) + 32
                t = var64001
                s = var64002
                while s - 1:
                    mem[64] = mem[64] + 192
                    mem[_1209 + (32 * _1205) + 32] = 0
                    mem[_1209 + (32 * _1205) + 64] = 0
                    mem[_1209 + (32 * _1205) + 96] = 0
                    mem[_1209 + (32 * _1205) + 128] = 0
                    mem[_1209 + (32 * _1205) + 160] = 0
                    mem[_1209 + (32 * _1205) + 192] = 0
                    mem[t + 32] = _1209 + (32 * _1205) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _2023 = mem[96]
                s = 0
                while s < _2023:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2044 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2050 = mem[_2044]
                    require mem[_2044] == mem[_2044 + 12 len 20]
                    if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _2068 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_2068)
                    require ext_code.size(address(_2050))
                    staticcall address(_2050).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2068)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2083 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2083] == mem[_2083 + 12 len 20]
                    if mem[_2083 + 12 len 20]:
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        _2099 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                        mem[mem[64] + 36] = address(_2099)
                        require ext_code.size(address(_2050))
                        staticcall address(_2050).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_2099)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2110 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2112 = mem[_2110]
                        require mem[_2110] == mem[_2110 + 12 len 20]
                        require ext_code.size(mem[_2110 + 12 len 20])
                        staticcall mem[_2110 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2121 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2123 = mem[_2121]
                        require mem[_2121] == mem[_2121 + 18 len 14]
                        _2129 = mem[_2121 + 32]
                        require mem[_2121 + 32] == mem[_2121 + 50 len 14]
                        require mem[_2121 + 64] == mem[_2121 + 92 len 4]
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        _2137 = mem[(32 * ('cd', 4).length) + 160]
                        require ext_code.size(address(_2112))
                        staticcall address(_2112).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2143] == mem[_2143 + 12 len 20]
                        if mem[_2143 + 12 len 20] == address(_2137):
                            _2153 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2112))
                            staticcall address(_2112).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2165 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2165] == mem[_2165 + 12 len 20]
                            mem[_2153] = mem[_2165 + 12 len 20]
                            require ext_code.size(address(_2112))
                            staticcall address(_2112).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2191 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2191] == mem[_2191 + 12 len 20]
                            mem[_2153 + 32] = mem[_2191 + 12 len 20]
                            mem[_2153 + 64] = address(_2112)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2153 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2153 + 128] = Mask(112, 0, _2123)
                            mem[_2153 + 160] = Mask(112, 0, _2129)
                            if s >= mem[_1209]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1209 + 32] = _2153
                        else:
                            _2156 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2112))
                            staticcall address(_2112).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2166 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2166] == mem[_2166 + 12 len 20]
                            mem[_2156] = mem[_2166 + 12 len 20]
                            require ext_code.size(address(_2112))
                            staticcall address(_2112).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2192 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2192] == mem[_2192 + 12 len 20]
                            mem[_2156 + 32] = mem[_2192 + 12 len 20]
                            mem[_2156 + 64] = address(_2112)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2156 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2156 + 128] = Mask(112, 0, _2129)
                            mem[_2156 + 160] = Mask(112, 0, _2123)
                            if s >= mem[_1209]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1209 + 32] = _2156
                    if s == -1:
                        revert with 'NH{q', 17
                    _2023 = mem[96]
                    s = s + 1
                    continue 
                _2025 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[_2025] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                mem[_2025 + 32] = _1209
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _2025
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _1207 = mem[(32 * ('cd', 4).length) + 160]
        if 1 >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _1210 = mem[(32 * ('cd', 4).length) + 192]
        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 204 len 20]
        require ext_code.size(address(_1207))
        staticcall address(_1207).0x70a08231 with:
                gas gas_remaining wei
               args address(_1210)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1252 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1259 = mem[_1252]
        require mem[_1252] == mem[_1252]
        _1277 = mem[64]
        mem[mem[64]] = 64
        _1284 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        t = mem[64] + (32 * _1284) + 96
        u = mem[64] + 96
        while idx < _1284:
            mem[u] = t + -_1277 - 96
            _1510 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1542 = mem[_1510 + 32]
            mem[t + 32] = 64
            _1553 = mem[_1542]
            mem[t + 64] = mem[_1542]
            v = 0
            w = _1542 + 32
            x = t + 96
            while v < _1553:
                _1802 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_1802 + 44 len 20]
                mem[x + 64] = mem[_1802 + 76 len 20]
                mem[x + 96] = mem[_1802 + 108 len 20]
                mem[x + 128] = mem[_1802 + 128]
                mem[x + 160] = mem[_1802 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _1553) + 96
            u = u + 32
            continue 
        mem[_1277 + 32] = _1259
    else:
        mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 288
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 256] = 96
        mem[var59001] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 224
        s = var59001
        idx = var59002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 224] = 0
            mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 256] = 96
            mem[s + 32] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (64 * ('cd', 68).length) + 224
            s = s + 32
            idx = idx - 1
            continue 
        _1801 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
        idx = 0
        while idx < _1801:
            _1804 = mem[96]
            if mem[96] > test266151307():
                revert with 'NH{q', 65
            _1807 = mem[64]
            mem[mem[64]] = mem[96]
            mem[64] = mem[64] + (32 * _1804) + 32
            if not _1804:
                _2024 = mem[96]
                s = 0
                while s < _2024:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2045 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2052 = mem[_2045]
                    require mem[_2045] == mem[_2045 + 12 len 20]
                    if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _2071 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_2071)
                    require ext_code.size(address(_2052))
                    staticcall address(_2052).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2071)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2084] == mem[_2084 + 12 len 20]
                    if mem[_2084 + 12 len 20]:
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        _2101 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                        mem[mem[64] + 36] = address(_2101)
                        require ext_code.size(address(_2052))
                        staticcall address(_2052).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_2101)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2111 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2113 = mem[_2111]
                        require mem[_2111] == mem[_2111 + 12 len 20]
                        require ext_code.size(mem[_2111 + 12 len 20])
                        staticcall mem[_2111 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2122 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2124 = mem[_2122]
                        require mem[_2122] == mem[_2122 + 18 len 14]
                        _2130 = mem[_2122 + 32]
                        require mem[_2122 + 32] == mem[_2122 + 50 len 14]
                        require mem[_2122 + 64] == mem[_2122 + 92 len 4]
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        _2140 = mem[(32 * ('cd', 4).length) + 160]
                        require ext_code.size(address(_2113))
                        staticcall address(_2113).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2144 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2144] == mem[_2144 + 12 len 20]
                        if mem[_2144 + 12 len 20] == address(_2140):
                            _2159 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2113))
                            staticcall address(_2113).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2167 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2167] == mem[_2167 + 12 len 20]
                            mem[_2159] = mem[_2167 + 12 len 20]
                            require ext_code.size(address(_2113))
                            staticcall address(_2113).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2193 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2193] == mem[_2193 + 12 len 20]
                            mem[_2159 + 32] = mem[_2193 + 12 len 20]
                            mem[_2159 + 64] = address(_2113)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2159 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2159 + 128] = Mask(112, 0, _2124)
                            mem[_2159 + 160] = Mask(112, 0, _2130)
                            if s >= mem[_1807]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1807 + 32] = _2159
                        else:
                            _2162 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2113))
                            staticcall address(_2113).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2168 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2168] == mem[_2168 + 12 len 20]
                            mem[_2162] = mem[_2168 + 12 len 20]
                            require ext_code.size(address(_2113))
                            staticcall address(_2113).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2194 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2194] == mem[_2194 + 12 len 20]
                            mem[_2162 + 32] = mem[_2194 + 12 len 20]
                            mem[_2162 + 64] = address(_2113)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2162 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2162 + 128] = Mask(112, 0, _2130)
                            mem[_2162 + 160] = Mask(112, 0, _2124)
                            if s >= mem[_1807]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1807 + 32] = _2162
                    if s == -1:
                        revert with 'NH{q', 17
                    _1801 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    _2024 = mem[96]
                    s = s + 1
                    continue 
                _2029 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[_2029] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                mem[_2029 + 32] = _1807
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _2029
            else:
                mem[64] = _1807 + (32 * _1804) + 224
                mem[_1807 + (32 * _1804) + 32] = 0
                mem[_1807 + (32 * _1804) + 64] = 0
                mem[_1807 + (32 * _1804) + 96] = 0
                mem[_1807 + (32 * _1804) + 128] = 0
                mem[_1807 + (32 * _1804) + 160] = 0
                mem[_1807 + (32 * _1804) + 192] = 0
                mem[var71001] = _1807 + (32 * _1804) + 32
                t = var71001
                s = var71002
                while s - 1:
                    _1801 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    mem[64] = mem[64] + 192
                    mem[_1807 + (32 * _1804) + 32] = 0
                    mem[_1807 + (32 * _1804) + 64] = 0
                    mem[_1807 + (32 * _1804) + 96] = 0
                    mem[_1807 + (32 * _1804) + 128] = 0
                    mem[_1807 + (32 * _1804) + 160] = 0
                    mem[_1807 + (32 * _1804) + 192] = 0
                    mem[t + 32] = _1807 + (32 * _1804) + 32
                    t = t + 32
                    s = s - 1
                    continue 
                _2296 = mem[96]
                s = 0
                while s < _2296:
                    if s >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * s) + 140 len 20])
                    staticcall mem[(32 * s) + 140 len 20].factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2306 = mem[_2305]
                    require mem[_2305] == mem[_2305 + 12 len 20]
                    if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                        revert with 'NH{q', 50
                    _2310 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                    mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                    mem[mem[64] + 36] = address(_2310)
                    require ext_code.size(address(_2306))
                    staticcall address(_2306).getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(_2310)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2313] == mem[_2313 + 12 len 20]
                    if mem[_2313 + 12 len 20]:
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                            revert with 'NH{q', 50
                        _2318 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
                        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 172 len 20]
                        mem[mem[64] + 36] = address(_2318)
                        require ext_code.size(address(_2306))
                        staticcall address(_2306).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(_2318)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2322 = mem[_2321]
                        require mem[_2321] == mem[_2321 + 12 len 20]
                        require ext_code.size(mem[_2321 + 12 len 20])
                        staticcall mem[_2321 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2325 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2326 = mem[_2325]
                        require mem[_2325] == mem[_2325 + 18 len 14]
                        _2327 = mem[_2325 + 32]
                        require mem[_2325 + 32] == mem[_2325 + 50 len 14]
                        require mem[_2325 + 64] == mem[_2325 + 92 len 4]
                        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 'NH{q', 50
                        _2330 = mem[(32 * ('cd', 4).length) + 160]
                        require ext_code.size(address(_2322))
                        staticcall address(_2322).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2333] == mem[_2333 + 12 len 20]
                        if mem[_2333 + 12 len 20] == address(_2330):
                            _2335 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2322))
                            staticcall address(_2322).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2341] == mem[_2341 + 12 len 20]
                            mem[_2335] = mem[_2341 + 12 len 20]
                            require ext_code.size(address(_2322))
                            staticcall address(_2322).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2349 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2349] == mem[_2349 + 12 len 20]
                            mem[_2335 + 32] = mem[_2349 + 12 len 20]
                            mem[_2335 + 64] = address(_2322)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2335 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2335 + 128] = Mask(112, 0, _2326)
                            mem[_2335 + 160] = Mask(112, 0, _2327)
                            if s >= mem[_1807]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1807 + 32] = _2335
                        else:
                            _2338 = mem[64]
                            mem[64] = mem[64] + 192
                            require ext_code.size(address(_2322))
                            staticcall address(_2322).token1() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2342 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2342] == mem[_2342 + 12 len 20]
                            mem[_2338] = mem[_2342 + 12 len 20]
                            require ext_code.size(address(_2322))
                            staticcall address(_2322).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2350] == mem[_2350 + 12 len 20]
                            mem[_2338 + 32] = mem[_2350 + 12 len 20]
                            mem[_2338 + 64] = address(_2322)
                            if s >= mem[96]:
                                revert with 'NH{q', 50
                            mem[_2338 + 96] = mem[(32 * s) + 140 len 20]
                            mem[_2338 + 128] = Mask(112, 0, _2327)
                            mem[_2338 + 160] = Mask(112, 0, _2326)
                            if s >= mem[_1807]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _1807 + 32] = _2338
                    if s == -1:
                        revert with 'NH{q', 17
                    _1801 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
                    _2296 = mem[96]
                    s = s + 1
                    continue 
                _2297 = mem[64]
                mem[64] = mem[64] + 64
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                    revert with 'NH{q', 50
                mem[_2297] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 204 len 20]
                mem[_2297 + 32] = _1807
                if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = _2297
            if idx == -1:
                revert with 'NH{q', 17
            _1801 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]
            idx = idx + 1
            continue 
        if 0 >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _1805 = mem[(32 * ('cd', 4).length) + 160]
        if 1 >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _1809 = mem[(32 * ('cd', 4).length) + 192]
        mem[mem[64] + 4] = mem[(32 * ('cd', 4).length) + 204 len 20]
        require ext_code.size(address(_1805))
        staticcall address(_1805).0x70a08231 with:
                gas gas_remaining wei
               args address(_1809)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1845 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1848 = mem[_1845]
        require mem[_1845] == mem[_1845]
        _1861 = mem[64]
        mem[mem[64]] = 64
        _1866 = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        mem[mem[64] + 64] = mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192]
        idx = 0
        s = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224
        t = mem[64] + (32 * _1866) + 96
        u = mem[64] + 96
        while idx < _1866:
            mem[u] = t + -_1861 - 96
            _2028 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _2058 = mem[_2028 + 32]
            mem[t + 32] = 64
            _2060 = mem[_2058]
            mem[t + 64] = mem[_2058]
            v = 0
            w = _2058 + 32
            x = t + 96
            while v < _2060:
                _2226 = mem[w]
                mem[x] = mem[mem[w] + 12 len 20]
                mem[x + 32] = mem[_2226 + 44 len 20]
                mem[x + 64] = mem[_2226 + 76 len 20]
                mem[x + 96] = mem[_2226 + 108 len 20]
                mem[x + 128] = mem[_2226 + 128]
                mem[x + 160] = mem[_2226 + 160]
                v = v + 1
                w = w + 32
                x = x + 192
                continue 
            idx = idx + 1
            s = s + 32
            t = t + (192 * _2060) + 96
            u = u + 32
            continue 
        mem[_1861 + 32] = _1848
    return memory
      from mem[64]
       len t - mem[64]
}



}
