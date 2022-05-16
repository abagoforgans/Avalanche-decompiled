contract main {




// =====================  Runtime code  =====================


#
#  - getTeamId(uint256 arg1)
#
address owner;
address stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_f0d94f33(?) payable {
    require calldata.size - 4 >= 128
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 > test266151307() or ceil32(32 * ('cd', 68).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = 128
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98 > test266151307() or ceil32(32 * ('cd', 100).length) + 98 < 97:
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 100).length
    require calldata.size >= cd[100] + (32 * ('cd', 100).length) + 36
    s = cd[100] + 36
    idx = 0
    t = ceil32(32 * ('cd', 68).length) + 129
    while idx < ('cd', 100).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] > !cd[36]:
        revert with 0, 17
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98] = ('cd', 68).length
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 68).length) + 130
    if not ('cd', 68).length:
        idx = cd[4]
        while idx <= cd[4] + cd[36]:
            _1324 = mem[64]
            mem[mem[64] + 36] = idx
            _1326 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_1326 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_1326 + 36 len 28]
            _1332 = mem[_1326]
            s = 0
            while s < _1332:
                mem[s + _1324 + 68] = mem[_1326 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1332) <= _1332:
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1332 + _1324 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1778 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1842] == mem[_1842 + 30 len 2]
                    require mem[_1842 + 32] == mem[_1842 + 62 len 2]
                    if not mem[_1842 + 30 len 2]:
                        _2186 = mem[96]
                        s = 0
                        while s < _2186:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2218 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2234 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1778
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2258] == mem[_2258 + 12 len 20]
                                require mem[_2258 + 128] == mem[_2258 + 158 len 2]
                                require mem[_2258 + 160] == mem[_2258 + 190 len 2]
                                _2314 = mem[_2258 + 192]
                                require mem[_2258 + 224] == mem[_2258 + 240 len 16]
                                if mem[_2258 + 192] != 0:
                                    if mem[_2258 + 158 len 2] < _2234:
                                        _2330 = mem[64]
                                        mem[mem[64] + 36] = mem[_2258 + 192]
                                        mem[mem[64] + 68] = _2218
                                        _2331 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2331 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2331 + 36 len 28]
                                        _2362 = mem[_2331]
                                        idx = 0
                                        while idx < _2362:
                                            mem[idx + _2330 + 100] = mem[_2331 + idx + 32]
                                            _2186 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2362) <= _2362:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2362 + _2330 + -mem[64] + 96]
                                            if return_data.size:
                                                _2522 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2522] = return_data.size
                                                mem[_2522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2330 + _2362 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2362 + _2330 + -mem[64] + 96]
                                            if return_data.size:
                                                _2538 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2538] = return_data.size
                                                mem[_2538 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2314
                                            mem[mem[64] + 32] = _1778
                                            mem[mem[64] + 64] = _2218
                                            emit 0x3add227a: _2314, _1778, _2218
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2186 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1764 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1764] = return_data.size
                    mem[_1764 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1779 = mem[_1764 + 32]
                    require mem[_1764 + 64] == mem[_1764 + 80 len 16]
                    require mem[_1764 + 96] == mem[_1764 + 112 len 16]
                    require mem[_1764 + 128] == mem[_1764 + 156 len 4]
                    require mem[_1764 + 160] == mem[_1764 + 188 len 4]
                    require mem[_1764 + 192] == mem[_1764 + 220 len 4]
                    if not mem[_1764 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1843 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1843] == mem[_1843 + 30 len 2]
                    require mem[_1843 + 32] == mem[_1843 + 62 len 2]
                    if not mem[_1843 + 30 len 2]:
                        _2187 = mem[96]
                        s = 0
                        while s < _2187:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2220 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2235 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1779
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2259 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2259] == mem[_2259 + 12 len 20]
                                require mem[_2259 + 128] == mem[_2259 + 158 len 2]
                                require mem[_2259 + 160] == mem[_2259 + 190 len 2]
                                _2315 = mem[_2259 + 192]
                                require mem[_2259 + 224] == mem[_2259 + 240 len 16]
                                if mem[_2259 + 192] != 0:
                                    if mem[_2259 + 158 len 2] < _2235:
                                        _2334 = mem[64]
                                        mem[mem[64] + 36] = mem[_2259 + 192]
                                        mem[mem[64] + 68] = _2220
                                        _2335 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2335 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2335 + 36 len 28]
                                        _2363 = mem[_2335]
                                        idx = 0
                                        while idx < _2363:
                                            mem[idx + _2334 + 100] = mem[_2335 + idx + 32]
                                            _2187 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2363) <= _2363:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2363 + _2334 + -mem[64] + 96]
                                            if return_data.size:
                                                _2524 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2524] = return_data.size
                                                mem[_2524 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2334 + _2363 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2363 + _2334 + -mem[64] + 96]
                                            if return_data.size:
                                                _2539 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2539] = return_data.size
                                                mem[_2539 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2315
                                            mem[mem[64] + 32] = _1779
                                            mem[mem[64] + 64] = _2220
                                            emit 0x3add227a: _2315, _1779, _2220
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2187 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[_1324 + _1332 + 68] = 0
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1332 + _1324 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1784 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1846 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1846] == mem[_1846 + 30 len 2]
                    require mem[_1846 + 32] == mem[_1846 + 62 len 2]
                    if not mem[_1846 + 30 len 2]:
                        _2188 = mem[96]
                        s = 0
                        while s < _2188:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2222 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2236 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1784
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2260 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2260] == mem[_2260 + 12 len 20]
                                require mem[_2260 + 128] == mem[_2260 + 158 len 2]
                                require mem[_2260 + 160] == mem[_2260 + 190 len 2]
                                _2316 = mem[_2260 + 192]
                                require mem[_2260 + 224] == mem[_2260 + 240 len 16]
                                if mem[_2260 + 192] != 0:
                                    if mem[_2260 + 158 len 2] < _2236:
                                        _2338 = mem[64]
                                        mem[mem[64] + 36] = mem[_2260 + 192]
                                        mem[mem[64] + 68] = _2222
                                        _2339 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2339 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2339 + 36 len 28]
                                        _2364 = mem[_2339]
                                        idx = 0
                                        while idx < _2364:
                                            mem[idx + _2338 + 100] = mem[_2339 + idx + 32]
                                            _2188 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2364) <= _2364:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2364 + _2338 + -mem[64] + 96]
                                            if return_data.size:
                                                _2526 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2526] = return_data.size
                                                mem[_2526 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2338 + _2364 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2364 + _2338 + -mem[64] + 96]
                                            if return_data.size:
                                                _2540 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2540] = return_data.size
                                                mem[_2540 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2316
                                            mem[mem[64] + 32] = _1784
                                            mem[mem[64] + 64] = _2222
                                            emit 0x3add227a: _2316, _1784, _2222
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2188 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1768 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1768] = return_data.size
                    mem[_1768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1785 = mem[_1768 + 32]
                    require mem[_1768 + 64] == mem[_1768 + 80 len 16]
                    require mem[_1768 + 96] == mem[_1768 + 112 len 16]
                    require mem[_1768 + 128] == mem[_1768 + 156 len 4]
                    require mem[_1768 + 160] == mem[_1768 + 188 len 4]
                    require mem[_1768 + 192] == mem[_1768 + 220 len 4]
                    if not mem[_1768 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1847] == mem[_1847 + 30 len 2]
                    require mem[_1847 + 32] == mem[_1847 + 62 len 2]
                    if not mem[_1847 + 30 len 2]:
                        _2189 = mem[96]
                        s = 0
                        while s < _2189:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2224 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2237 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1785
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2261 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2261] == mem[_2261 + 12 len 20]
                                require mem[_2261 + 128] == mem[_2261 + 158 len 2]
                                require mem[_2261 + 160] == mem[_2261 + 190 len 2]
                                _2317 = mem[_2261 + 192]
                                require mem[_2261 + 224] == mem[_2261 + 240 len 16]
                                if mem[_2261 + 192] != 0:
                                    if mem[_2261 + 158 len 2] < _2237:
                                        _2342 = mem[64]
                                        mem[mem[64] + 36] = mem[_2261 + 192]
                                        mem[mem[64] + 68] = _2224
                                        _2343 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2343 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2343 + 36 len 28]
                                        _2365 = mem[_2343]
                                        idx = 0
                                        while idx < _2365:
                                            mem[idx + _2342 + 100] = mem[_2343 + idx + 32]
                                            _2189 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2365) <= _2365:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2365 + _2342 + -mem[64] + 96]
                                            if return_data.size:
                                                _2528 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2528] = return_data.size
                                                mem[_2528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2342 + _2365 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2365 + _2342 + -mem[64] + 96]
                                            if return_data.size:
                                                _2541 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2541] = return_data.size
                                                mem[_2541 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2317
                                            mem[mem[64] + 32] = _1785
                                            mem[mem[64] + 64] = _2224
                                            emit 0x3add227a: _2317, _1785, _2224
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2189 = mem[96]
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = cd[4]
        while idx <= cd[4] + cd[36]:
            _1325 = mem[64]
            mem[mem[64] + 36] = idx
            _1329 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_1329 + 32] = 0xf0344e3600000000000000000000000000000000000000000000000000000000 or mem[_1329 + 36 len 28]
            _1333 = mem[_1329]
            s = 0
            while s < _1333:
                mem[s + _1325 + 68] = mem[_1329 + s + 32]
                s = s + 32
                continue 
            if ceil32(_1333) <= _1333:
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1333 + _1325 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1780 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1844 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1844] == mem[_1844 + 30 len 2]
                    require mem[_1844 + 32] == mem[_1844 + 62 len 2]
                    if not mem[_1844 + 30 len 2]:
                        _2190 = mem[96]
                        s = 0
                        while s < _2190:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2226 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2238 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1780
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2262 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2262] == mem[_2262 + 12 len 20]
                                require mem[_2262 + 128] == mem[_2262 + 158 len 2]
                                require mem[_2262 + 160] == mem[_2262 + 190 len 2]
                                _2318 = mem[_2262 + 192]
                                require mem[_2262 + 224] == mem[_2262 + 240 len 16]
                                if mem[_2262 + 192] != 0:
                                    if mem[_2262 + 158 len 2] < _2238:
                                        _2346 = mem[64]
                                        mem[mem[64] + 36] = mem[_2262 + 192]
                                        mem[mem[64] + 68] = _2226
                                        _2347 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2347 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2347 + 36 len 28]
                                        _2366 = mem[_2347]
                                        idx = 0
                                        while idx < _2366:
                                            mem[idx + _2346 + 100] = mem[_2347 + idx + 32]
                                            _2190 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2366) <= _2366:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2366 + _2346 + -mem[64] + 96]
                                            if return_data.size:
                                                _2530 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2530] = return_data.size
                                                mem[_2530 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2346 + _2366 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2366 + _2346 + -mem[64] + 96]
                                            if return_data.size:
                                                _2542 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2542] = return_data.size
                                                mem[_2542 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2318
                                            mem[mem[64] + 32] = _1780
                                            mem[mem[64] + 64] = _2226
                                            emit 0x3add227a: _2318, _1780, _2226
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2190 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1766 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1766] = return_data.size
                    mem[_1766 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1781 = mem[_1766 + 32]
                    require mem[_1766 + 64] == mem[_1766 + 80 len 16]
                    require mem[_1766 + 96] == mem[_1766 + 112 len 16]
                    require mem[_1766 + 128] == mem[_1766 + 156 len 4]
                    require mem[_1766 + 160] == mem[_1766 + 188 len 4]
                    require mem[_1766 + 192] == mem[_1766 + 220 len 4]
                    if not mem[_1766 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1845 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1845] == mem[_1845 + 30 len 2]
                    require mem[_1845 + 32] == mem[_1845 + 62 len 2]
                    if not mem[_1845 + 30 len 2]:
                        _2191 = mem[96]
                        s = 0
                        while s < _2191:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2228 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2239 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1781
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2263 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2263] == mem[_2263 + 12 len 20]
                                require mem[_2263 + 128] == mem[_2263 + 158 len 2]
                                require mem[_2263 + 160] == mem[_2263 + 190 len 2]
                                _2319 = mem[_2263 + 192]
                                require mem[_2263 + 224] == mem[_2263 + 240 len 16]
                                if mem[_2263 + 192] != 0:
                                    if mem[_2263 + 158 len 2] < _2239:
                                        _2350 = mem[64]
                                        mem[mem[64] + 36] = mem[_2263 + 192]
                                        mem[mem[64] + 68] = _2228
                                        _2351 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2351 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2351 + 36 len 28]
                                        _2367 = mem[_2351]
                                        idx = 0
                                        while idx < _2367:
                                            mem[idx + _2350 + 100] = mem[_2351 + idx + 32]
                                            _2191 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2367) <= _2367:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2367 + _2350 + -mem[64] + 96]
                                            if return_data.size:
                                                _2532 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2532] = return_data.size
                                                mem[_2532 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2350 + _2367 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2367 + _2350 + -mem[64] + 96]
                                            if return_data.size:
                                                _2543 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2543] = return_data.size
                                                mem[_2543 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2319
                                            mem[mem[64] + 32] = _1781
                                            mem[mem[64] + 64] = _2228
                                            emit 0x3add227a: _2319, _1781, _2228
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2191 = mem[96]
                            s = s + 1
                            continue 
            else:
                mem[_1325 + _1333 + 68] = 0
                staticcall stor1.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _1333 + _1325 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                    require mem[96] >= 192
                    _1788 = mem[128]
                    require mem[160] == mem[176 len 16]
                    require mem[192] == mem[208 len 16]
                    require mem[224] == mem[252 len 4]
                    require mem[256] == mem[284 len 4]
                    require mem[288] == mem[316 len 4]
                    if not mem[128]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1848] == mem[_1848 + 30 len 2]
                    require mem[_1848 + 32] == mem[_1848 + 62 len 2]
                    if not mem[_1848 + 30 len 2]:
                        _2192 = mem[96]
                        s = 0
                        while s < _2192:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2230 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2240 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1788
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2264 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2264] == mem[_2264 + 12 len 20]
                                require mem[_2264 + 128] == mem[_2264 + 158 len 2]
                                require mem[_2264 + 160] == mem[_2264 + 190 len 2]
                                _2320 = mem[_2264 + 192]
                                require mem[_2264 + 224] == mem[_2264 + 240 len 16]
                                if mem[_2264 + 192] != 0:
                                    if mem[_2264 + 158 len 2] < _2240:
                                        _2354 = mem[64]
                                        mem[mem[64] + 36] = mem[_2264 + 192]
                                        mem[mem[64] + 68] = _2230
                                        _2355 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2355 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2355 + 36 len 28]
                                        _2368 = mem[_2355]
                                        idx = 0
                                        while idx < _2368:
                                            mem[idx + _2354 + 100] = mem[_2355 + idx + 32]
                                            _2192 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2368) <= _2368:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2368 + _2354 + -mem[64] + 96]
                                            if return_data.size:
                                                _2534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2534] = return_data.size
                                                mem[_2534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2354 + _2368 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2368 + _2354 + -mem[64] + 96]
                                            if return_data.size:
                                                _2544 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2544] = return_data.size
                                                mem[_2544 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2320
                                            mem[mem[64] + 32] = _1788
                                            mem[mem[64] + 64] = _2230
                                            emit 0x3add227a: _2320, _1788, _2230
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2192 = mem[96]
                            s = s + 1
                            continue 
                else:
                    _1769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1769] = return_data.size
                    mem[_1769 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                    require return_data.size >= 192
                    _1789 = mem[_1769 + 32]
                    require mem[_1769 + 64] == mem[_1769 + 80 len 16]
                    require mem[_1769 + 96] == mem[_1769 + 112 len 16]
                    require mem[_1769 + 128] == mem[_1769 + 156 len 4]
                    require mem[_1769 + 160] == mem[_1769 + 188 len 4]
                    require mem[_1769 + 192] == mem[_1769 + 220 len 4]
                    if not mem[_1769 + 32]:
                    require ext_code.size(stor1)
                    staticcall stor1.0xab0c8f8d with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_1849] == mem[_1849 + 30 len 2]
                    require mem[_1849 + 32] == mem[_1849 + 62 len 2]
                    if not mem[_1849 + 30 len 2]:
                        _2193 = mem[96]
                        s = 0
                        while s < _2193:
                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                revert with 0, 50
                            if not mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130]:
                                if s >= mem[96]:
                                    revert with 0, 50
                                _2232 = mem[(32 * s) + 128]
                                if s >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                                    revert with 0, 50
                                _2241 = mem[(32 * s) + ceil32(32 * ('cd', 68).length) + 129]
                                require ext_code.size(stor1)
                                staticcall stor1.0x969215ba with:
                                        gas gas_remaining wei
                                       args _1789
                                mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2265 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 256
                                require mem[_2265] == mem[_2265 + 12 len 20]
                                require mem[_2265 + 128] == mem[_2265 + 158 len 2]
                                require mem[_2265 + 160] == mem[_2265 + 190 len 2]
                                _2321 = mem[_2265 + 192]
                                require mem[_2265 + 224] == mem[_2265 + 240 len 16]
                                if mem[_2265 + 192] != 0:
                                    if mem[_2265 + 158 len 2] < _2241:
                                        _2358 = mem[64]
                                        mem[mem[64] + 36] = mem[_2265 + 192]
                                        mem[mem[64] + 68] = _2232
                                        _2359 = mem[64]
                                        mem[mem[64]] = 68
                                        mem[64] = mem[64] + 100
                                        mem[_2359 + 32] = 0xe1fa763800000000000000000000000000000000000000000000000000000000 or mem[_2359 + 36 len 28]
                                        _2369 = mem[_2359]
                                        idx = 0
                                        while idx < _2369:
                                            mem[idx + _2358 + 100] = mem[_2359 + idx + 32]
                                            _2193 = mem[96]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_2369) <= _2369:
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2369 + _2358 + -mem[64] + 96]
                                            if return_data.size:
                                                _2536 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2536] = return_data.size
                                                mem[_2536 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        else:
                                            mem[_2358 + _2369 + 100] = 0
                                            delegate stor1.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2369 + _2358 + -mem[64] + 96]
                                            if return_data.size:
                                                _2545 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2545] = return_data.size
                                                mem[_2545 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if delegate.return_code:
                                            mem[mem[64]] = _2321
                                            mem[mem[64] + 32] = _1789
                                            mem[mem[64] + 64] = _2232
                                            emit 0x3add227a: _2321, _1789, _2232
                                            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 98]:
                                                revert with 0, 50
                                            mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(32 * ('cd', 100).length) + 130] = 1
                                            if not ('cd', 68).length:
                                                revert with 0, 17
                                            if not ('cd', 68).length - 1:
                            if s == -1:
                                revert with 0, 17
                            _2193 = mem[96]
                            s = s + 1
                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
