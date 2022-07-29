contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg5.length >= 256
    require cd[(arg5 + 36)] == address(cd[(arg5 + 36)])
    require cd[(arg5 + 68)] == address(cd[(arg5 + 68)])
    require cd[(arg5 + 100)] == address(cd[(arg5 + 100)])
    require cd[(arg5 + 132)] == address(cd[(arg5 + 132)])
    require cd[(arg5 + 228)] <= test266151307()
    require arg5 + cd[(arg5 + 228)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 228)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 128 >= 96 and (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 128 <= test266151307()
    mem[96] = cd[(arg5 + cd[(arg5 + 228)] + 36)]
    require cd[(arg5 + 228)] + (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 68 <= arg5.length + 36
    s = arg5 + cd[(arg5 + 228)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg5 + cd[(arg5 + 228)] + 36)]:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg5 + 260)] <= test266151307()
    require arg5 + cd[(arg5 + 260)] + 67 < arg5 + arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 260)] + 36)] <= test266151307()
    require (32 * cd[(arg5 + cd[(arg5 + 260)] + 36)]) + 160 >= 128 and (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 260)] + 36)]) + 160 <= test266151307()
    mem[64] = (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 260)] + 36)]) + 160
    mem[(32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 260)] + 36)]
    idx = 0
    s = arg5 + cd[(arg5 + 260)] + 68
    t = (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 160
    while idx < cd[(arg5 + cd[(arg5 + 260)] + 36)]:
        require arg5 + cd[(arg5 + 260)] + cd[s] + 99 < arg5 + arg5.length + 36
        require cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)] <= test266151307()
        _723 = mem[64]
        require mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]) + 32
        mem[_723] = cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]
        require cd[(arg5 + 260)] + cd[s] + cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)] + 100 <= arg5.length + 36
        mem[_723 + 32 len cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]] = call.data[arg5 + cd[(arg5 + 260)] + cd[s] + 100 len cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)]]
        mem[_723 + cd[(arg5 + cd[(arg5 + 260)] + cd[s] + 68)] + 32] = 0
        mem[t] = _723
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = address(cd[(arg5 + 68)])
    mem[mem[64] + 36] = cd[(arg5 + 164)]
    require ext_code.size(address(cd[(arg5 + 100)]))
    call address(cd[(arg5 + 100)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg5 + 68)]), cd[(arg5 + 164)]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _725 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_725] == bool(mem[_725])
    _727 = mem[64]
    mem[mem[64]] = 0x62598fb300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[(arg5 + 100)])
    mem[mem[64] + 36] = address(cd[(arg5 + 132)])
    mem[mem[64] + 68] = cd[(arg5 + 164)]
    mem[mem[64] + 100] = cd[(arg5 + 196)]
    mem[mem[64] + 132] = 192
    _728 = mem[96]
    mem[mem[64] + 196] = mem[96]
    mem[mem[64] + 228 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 164] = (32 * mem[96]) + 224
    _1081 = mem[(32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 128]
    mem[mem[64] + (32 * mem[96]) + 228] = mem[(32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 128]
    idx = 0
    s = (32 * cd[(arg5 + cd[(arg5 + 228)] + 36)]) + 160
    t = mem[64] + (32 * mem[96]) + (32 * _1081) + 260
    u = mem[64] + (32 * mem[96]) + 260
    while idx < _1081:
        mem[u] = t + -_727 + -(32 * _728) - 260
        _1433 = mem[s]
        _1434 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1434:
            mem[v + t + 32] = mem[v + _1433 + 32]
            v = v + 32
            continue 
        if ceil32(_1434) > _1434:
            mem[t + _1434 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1434) + t + 32
        u = u + 32
        continue 
    require ext_code.size(address(cd[(arg5 + 68)]))
    call address(cd[(arg5 + 68)]).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1436 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1438 = mem[_1436]
    if mem[_1436] <= arg4 + arg3:
        revert with 0, 'Final amount is lower than initial amount with flashloan fee'
    _1440 = mem[64]
    mem[mem[64] + 36] = address(cd[(arg5 + 36)])
    mem[mem[64] + 68] = _1438 - arg4 - arg3
    _1442 = mem[64]
    mem[mem[64]] = 68
    mem[64] = mem[64] + 100
    mem[_1442 + 32 len 4] = unknown_0xa9059cbb(?????)
    _1445 = mem[_1442]
    mem[_1440 + 100 len ceil32(mem[_1442])] = mem[_1442 + 32 len ceil32(mem[_1442])]
    if ceil32(_1445) <= _1445:
        call arg2 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1445 + _1440 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not mem[96]:
                _1805 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1813 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1813 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1821 = mem[_1813]
                mem[_1805 + 100 len ceil32(mem[_1813])] = mem[_1813 + 32 len ceil32(mem[_1813])]
                if ceil32(_1821) <= _1821:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1821 + _1805 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2137 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2137 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2137 + 32] == bool(mem[_2137 + 32])
                            if not mem[_2137 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1805 + _1821 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1821 + _1805 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2153 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2153 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2153 + 32] == bool(mem[_2153 + 32])
                            if not mem[_2153 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _1831 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1842 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1842 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1849 = mem[_1842]
                mem[_1831 + 100 len ceil32(mem[_1842])] = mem[_1842 + 32 len ceil32(mem[_1842])]
                if ceil32(_1849) <= _1849:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1849 + _1831 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2139 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2139 + 32] == bool(mem[_2139 + 32])
                            if not mem[_2139 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1831 + _1849 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1849 + _1831 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2154 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2154 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2154 + 32] == bool(mem[_2154 + 32])
                            if not mem[_2154 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            _1786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1786] = return_data.size
            mem[_1786 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not return_data.size:
                _1806 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1817 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1817 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1822 = mem[_1817]
                mem[_1806 + 100 len ceil32(mem[_1817])] = mem[_1817 + 32 len ceil32(mem[_1817])]
                if ceil32(_1822) <= _1822:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1822 + _1806 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2141 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2141 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2141 + 32] == bool(mem[_2141 + 32])
                            if not mem[_2141 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1806 + _1822 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1822 + _1806 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2155 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2155 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2155 + 32] == bool(mem[_2155 + 32])
                            if not mem[_2155 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                require return_data.size >= 32
                require mem[_1786 + 32] == bool(mem[_1786 + 32])
                if not mem[_1786 + 32]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _1833 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1846 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1846 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1850 = mem[_1846]
                mem[_1833 + 100 len ceil32(mem[_1846])] = mem[_1846 + 32 len ceil32(mem[_1846])]
                if ceil32(_1850) <= _1850:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1850 + _1833 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2143 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2143 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2143 + 32] == bool(mem[_2143 + 32])
                            if not mem[_2143 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1833 + _1850 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1850 + _1833 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2156 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2156 + 32] == bool(mem[_2156 + 32])
                            if not mem[_2156 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
    else:
        mem[_1440 + _1445 + 100] = 0
        call arg2 with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _1445 + _1440 + -mem[64] + 96]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not mem[96]:
                _1811 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1823 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1823 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1835 = mem[_1823]
                mem[_1811 + 100 len ceil32(mem[_1823])] = mem[_1823 + 32 len ceil32(mem[_1823])]
                if ceil32(_1835) <= _1835:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1835 + _1811 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2145 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2145 + 32] == bool(mem[_2145 + 32])
                            if not mem[_2145 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1811 + _1835 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1835 + _1811 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2157 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2157 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2157 + 32] == bool(mem[_2157 + 32])
                            if not mem[_2157 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _1837 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1852 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1852 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1859 = mem[_1852]
                mem[_1837 + 100 len ceil32(mem[_1852])] = mem[_1852 + 32 len ceil32(mem[_1852])]
                if ceil32(_1859) <= _1859:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1859 + _1837 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2147 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2147 + 32] == bool(mem[_2147 + 32])
                            if not mem[_2147 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1837 + _1859 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1859 + _1837 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2158 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2158 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2158 + 32] == bool(mem[_2158 + 32])
                            if not mem[_2158 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        else:
            _1788 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1788] = return_data.size
            mem[_1788 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            if not return_data.size:
                _1812 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1827 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1827 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1836 = mem[_1827]
                mem[_1812 + 100 len ceil32(mem[_1827])] = mem[_1827 + 32 len ceil32(mem[_1827])]
                if ceil32(_1836) <= _1836:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1836 + _1812 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2149 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2149 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2149 + 32] == bool(mem[_2149 + 32])
                            if not mem[_2149 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1812 + _1836 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1836 + _1812 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2159 + 32] == bool(mem[_2159 + 32])
                            if not mem[_2159 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            else:
                require return_data.size >= 32
                require mem[_1788 + 32] == bool(mem[_1788 + 32])
                if not mem[_1788 + 32]:
                    revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                _1839 = mem[64]
                mem[mem[64] + 36] = arg1
                mem[mem[64] + 68] = arg4 + arg3
                _1856 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1856 + 32 len 4] = unknown_0xa9059cbb(?????)
                _1860 = mem[_1856]
                mem[_1839 + 100 len ceil32(mem[_1856])] = mem[_1856 + 32 len ceil32(mem[_1856])]
                if ceil32(_1860) <= _1860:
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1860 + _1839 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2151 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2151 + 32] == bool(mem[_2151 + 32])
                            if not mem[_2151 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                else:
                    mem[_1839 + _1860 + 100] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1860 + _1839 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                    else:
                        _2160 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2160 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_2160 + 32] == bool(mem[_2160 + 32])
                            if not mem[_2160 + 32]:
                                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
}



}
