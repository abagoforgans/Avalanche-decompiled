contract main {




// =====================  Runtime code  =====================


const name = 'ERC20-Resolver-v1', 0


function _fallback() payable {
    revert
}

function getBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
            else:
                require idx < mem[96]
                _78 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_78))
                staticcall address(_78).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _89 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_89] == mem[_89]
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_89]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _82 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _82] = mem[(32 * arg2.length) + 160 len 32 * _82]
        return 32, mem[mem[64] + 32 len (32 * _82) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = eth.balance(arg1)
        else:
            require idx < mem[96]
            _80 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_80))
            staticcall address(_80).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91]
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_91]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _83 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _83] = mem[(32 * arg2.length) + 160 len 32 * _83]
    return 32, mem[mem[64] + 32 len (32 * _83) + 32]
}

function getAllowances(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require (32 * arg3.length) + 128 <= test266151307() and (32 * arg3.length) + 128 >= 96
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
    require arg3.length <= test266151307()
    mem[(32 * arg3.length) + 128] = arg3.length
    mem[64] = (64 * arg3.length) + 160
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                require idx < mem[(32 * arg3.length) + 128]
                mem[(32 * idx) + (32 * arg3.length) + 160] = 0
            else:
                require idx < mem[96]
                _78 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg1
                mem[mem[64] + 36] = arg2
                require ext_code.size(address(_78))
                staticcall address(_78).allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), arg2
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _90 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_90] == mem[_90]
                require idx < mem[(32 * arg3.length) + 128]
                mem[(32 * idx) + (32 * arg3.length) + 160] = mem[_90]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _82 = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
        mem[mem[64] + 64 len 32 * _82] = mem[(32 * arg3.length) + 160 len 32 * _82]
        return 32, mem[mem[64] + 32 len (32 * _82) + 32]
    mem[(32 * arg3.length) + 160 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = 0
        else:
            require idx < mem[96]
            _80 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = arg2
            require ext_code.size(address(_80))
            staticcall address(_80).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91]
            require idx < mem[(32 * arg3.length) + 128]
            mem[(32 * idx) + (32 * arg3.length) + 160] = mem[_91]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _83 = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg3.length) + 128]
    mem[mem[64] + 64 len 32 * _83] = mem[(32 * arg3.length) + 160 len 32 * _83]
    return 32, mem[mem[64] + 32 len (32 * _83) + 32]
}

function getTokenDetails(address[] arg1) payable {
    require calldata.size - 4 >= 32
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
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _942 = mem[64]
                mem[64] = mem[64] + 128
                mem[_942] = 1
                _943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_943] = 5
                mem[_943 + 32] = 'ETHER'
                mem[_942 + 32] = _943
                _944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_944] = 3
                mem[_944 + 32] = 'ETH'
                mem[_942 + 64] = _944
                mem[_942 + 96] = 18
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = _942
            else:
                require idx < mem[96]
                _946 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_946))
                staticcall address(_946).symbol() with:
                        gas gas_remaining wei
                if ext_call.success:
                    _951 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _955 = mem[_951]
                    require mem[_951] <= test266151307()
                    require _951 + mem[_951] + 31 < _951 + return_data.size
                    _965 = mem[_951 + mem[_951]]
                    require mem[_951 + mem[_951]] <= test266151307()
                    require _951 + ceil32(return_data.size) + ceil32(mem[_951 + mem[_951]]) + 32 <= test266151307() and ceil32(mem[_951 + mem[_951]]) + 32 >= 0
                    mem[64] = _951 + ceil32(return_data.size) + ceil32(mem[_951 + mem[_951]]) + 32
                    mem[_951 + ceil32(return_data.size)] = _965
                    require _955 + _965 + 32 <= return_data.size
                    s = 0
                    while s < _965:
                        mem[_951 + ceil32(return_data.size) + s + 32] = mem[_951 + _955 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_965) <= _965:
                        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_946))
                        staticcall address(_946).name() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            _1424 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1428 = mem[_1424]
                            require mem[_1424] <= test266151307()
                            require _1424 + mem[_1424] + 31 < _1424 + return_data.size
                            _1431 = mem[_1424 + mem[_1424]]
                            require mem[_1424 + mem[_1424]] <= test266151307()
                            require _1424 + ceil32(return_data.size) + ceil32(mem[_1424 + mem[_1424]]) + 32 <= test266151307() and ceil32(mem[_1424 + mem[_1424]]) + 32 >= 0
                            mem[64] = _1424 + ceil32(return_data.size) + ceil32(mem[_1424 + mem[_1424]]) + 32
                            mem[_1424 + ceil32(return_data.size)] = _1431
                            require _1428 + _1431 + 32 <= return_data.size
                            s = 0
                            while s < _1431:
                                mem[_1424 + ceil32(return_data.size) + s + 32] = mem[_1424 + _1428 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1431) <= _1431:
                                require ext_code.size(address(_946))
                                staticcall address(_946).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1879 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1879] == mem[_1879]
                                    _1900 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_1900] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_946))
                                    staticcall address(_946).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1913 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1917 = mem[_1913]
                                    require mem[_1913] <= test266151307()
                                    require _1913 + mem[_1913] + 31 < _1913 + return_data.size
                                    _1924 = mem[_1913 + mem[_1913]]
                                    require mem[_1913 + mem[_1913]] <= test266151307()
                                    require _1913 + ceil32(return_data.size) + ceil32(mem[_1913 + mem[_1913]]) + 32 <= test266151307() and ceil32(mem[_1913 + mem[_1913]]) + 32 >= 0
                                    mem[64] = _1913 + ceil32(return_data.size) + ceil32(mem[_1913 + mem[_1913]]) + 32
                                    mem[_1913 + ceil32(return_data.size)] = _1924
                                    require _1917 + _1924 + 32 <= return_data.size
                                    s = 0
                                    while s < _1924:
                                        mem[_1913 + ceil32(return_data.size) + s + 32] = mem[_1913 + _1917 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1924) <= _1924:
                                        mem[_1900 + 32] = _1913 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2308 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2321 = mem[_2308]
                                        require mem[_2308] <= test266151307()
                                        require _2308 + mem[_2308] + 31 < _2308 + return_data.size
                                        _2333 = mem[_2308 + mem[_2308]]
                                        require mem[_2308 + mem[_2308]] <= test266151307()
                                        require _2308 + ceil32(return_data.size) + ceil32(mem[_2308 + mem[_2308]]) + 32 <= test266151307() and ceil32(mem[_2308 + mem[_2308]]) + 32 >= 0
                                        mem[64] = _2308 + ceil32(return_data.size) + ceil32(mem[_2308 + mem[_2308]]) + 32
                                        mem[_2308 + ceil32(return_data.size)] = _2333
                                        require _2321 + _2333 + 32 <= return_data.size
                                        s = 0
                                        while s < _2333:
                                            mem[_2308 + ceil32(return_data.size) + s + 32] = mem[_2308 + _2321 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2333) <= _2333:
                                            mem[_1900 + 64] = _2308 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2683 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2683] == mem[_2683]
                                            mem[_1900 + 96] = mem[_2683]
                                        else:
                                            mem[_2308 + ceil32(return_data.size) + _2333 + 32] = 0
                                            mem[_1900 + 64] = _2308 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2696 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2696] == mem[_2696]
                                            mem[_1900 + 96] = mem[_2696]
                                    else:
                                        mem[_1913 + ceil32(return_data.size) + _1924 + 32] = 0
                                        mem[_1900 + 32] = _1913 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2315 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2327 = mem[_2315]
                                        require mem[_2315] <= test266151307()
                                        require _2315 + mem[_2315] + 31 < _2315 + return_data.size
                                        _2338 = mem[_2315 + mem[_2315]]
                                        require mem[_2315 + mem[_2315]] <= test266151307()
                                        require _2315 + ceil32(return_data.size) + ceil32(mem[_2315 + mem[_2315]]) + 32 <= test266151307() and ceil32(mem[_2315 + mem[_2315]]) + 32 >= 0
                                        mem[64] = _2315 + ceil32(return_data.size) + ceil32(mem[_2315 + mem[_2315]]) + 32
                                        mem[_2315 + ceil32(return_data.size)] = _2338
                                        require _2327 + _2338 + 32 <= return_data.size
                                        s = 0
                                        while s < _2338:
                                            mem[_2315 + ceil32(return_data.size) + s + 32] = mem[_2315 + _2327 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2338) <= _2338:
                                            mem[_1900 + 64] = _2315 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2684 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2684] == mem[_2684]
                                            mem[_1900 + 96] = mem[_2684]
                                        else:
                                            mem[_2315 + ceil32(return_data.size) + _2338 + 32] = 0
                                            mem[_1900 + 64] = _2315 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2697 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2697] == mem[_2697]
                                            mem[_1900 + 96] = mem[_2697]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1900
                            else:
                                mem[_1424 + ceil32(return_data.size) + _1431 + 32] = 0
                                require ext_code.size(address(_946))
                                staticcall address(_946).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1881 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1881] == mem[_1881]
                                    _1907 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_1907] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_946))
                                    staticcall address(_946).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1915 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1919 = mem[_1915]
                                    require mem[_1915] <= test266151307()
                                    require _1915 + mem[_1915] + 31 < _1915 + return_data.size
                                    _1928 = mem[_1915 + mem[_1915]]
                                    require mem[_1915 + mem[_1915]] <= test266151307()
                                    require _1915 + ceil32(return_data.size) + ceil32(mem[_1915 + mem[_1915]]) + 32 <= test266151307() and ceil32(mem[_1915 + mem[_1915]]) + 32 >= 0
                                    mem[64] = _1915 + ceil32(return_data.size) + ceil32(mem[_1915 + mem[_1915]]) + 32
                                    mem[_1915 + ceil32(return_data.size)] = _1928
                                    require _1919 + _1928 + 32 <= return_data.size
                                    s = 0
                                    while s < _1928:
                                        mem[_1915 + ceil32(return_data.size) + s + 32] = mem[_1915 + _1919 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1928) <= _1928:
                                        mem[_1907 + 32] = _1915 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2309 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2322 = mem[_2309]
                                        require mem[_2309] <= test266151307()
                                        require _2309 + mem[_2309] + 31 < _2309 + return_data.size
                                        _2334 = mem[_2309 + mem[_2309]]
                                        require mem[_2309 + mem[_2309]] <= test266151307()
                                        require _2309 + ceil32(return_data.size) + ceil32(mem[_2309 + mem[_2309]]) + 32 <= test266151307() and ceil32(mem[_2309 + mem[_2309]]) + 32 >= 0
                                        mem[64] = _2309 + ceil32(return_data.size) + ceil32(mem[_2309 + mem[_2309]]) + 32
                                        mem[_2309 + ceil32(return_data.size)] = _2334
                                        require _2322 + _2334 + 32 <= return_data.size
                                        s = 0
                                        while s < _2334:
                                            mem[_2309 + ceil32(return_data.size) + s + 32] = mem[_2309 + _2322 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2334) <= _2334:
                                            mem[_1907 + 64] = _2309 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2685 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2685] == mem[_2685]
                                            mem[_1907 + 96] = mem[_2685]
                                        else:
                                            mem[_2309 + ceil32(return_data.size) + _2334 + 32] = 0
                                            mem[_1907 + 64] = _2309 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2698 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2698] == mem[_2698]
                                            mem[_1907 + 96] = mem[_2698]
                                    else:
                                        mem[_1915 + ceil32(return_data.size) + _1928 + 32] = 0
                                        mem[_1907 + 32] = _1915 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2316 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2328 = mem[_2316]
                                        require mem[_2316] <= test266151307()
                                        require _2316 + mem[_2316] + 31 < _2316 + return_data.size
                                        _2339 = mem[_2316 + mem[_2316]]
                                        require mem[_2316 + mem[_2316]] <= test266151307()
                                        require _2316 + ceil32(return_data.size) + ceil32(mem[_2316 + mem[_2316]]) + 32 <= test266151307() and ceil32(mem[_2316 + mem[_2316]]) + 32 >= 0
                                        mem[64] = _2316 + ceil32(return_data.size) + ceil32(mem[_2316 + mem[_2316]]) + 32
                                        mem[_2316 + ceil32(return_data.size)] = _2339
                                        require _2328 + _2339 + 32 <= return_data.size
                                        s = 0
                                        while s < _2339:
                                            mem[_2316 + ceil32(return_data.size) + s + 32] = mem[_2316 + _2328 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2339) <= _2339:
                                            mem[_1907 + 64] = _2316 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2686 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2686] == mem[_2686]
                                            mem[_1907 + 96] = mem[_2686]
                                        else:
                                            mem[_2316 + ceil32(return_data.size) + _2339 + 32] = 0
                                            mem[_1907 + 64] = _2316 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2699 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2699] == mem[_2699]
                                            mem[_1907 + 96] = mem[_2699]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1907
                    else:
                        mem[_951 + ceil32(return_data.size) + _965 + 32] = 0
                        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_946))
                        staticcall address(_946).name() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            _1426 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1429 = mem[_1426]
                            require mem[_1426] <= test266151307()
                            require _1426 + mem[_1426] + 31 < _1426 + return_data.size
                            _1433 = mem[_1426 + mem[_1426]]
                            require mem[_1426 + mem[_1426]] <= test266151307()
                            require _1426 + ceil32(return_data.size) + ceil32(mem[_1426 + mem[_1426]]) + 32 <= test266151307() and ceil32(mem[_1426 + mem[_1426]]) + 32 >= 0
                            mem[64] = _1426 + ceil32(return_data.size) + ceil32(mem[_1426 + mem[_1426]]) + 32
                            mem[_1426 + ceil32(return_data.size)] = _1433
                            require _1429 + _1433 + 32 <= return_data.size
                            s = 0
                            while s < _1433:
                                mem[_1426 + ceil32(return_data.size) + s + 32] = mem[_1426 + _1429 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(_1433) <= _1433:
                                require ext_code.size(address(_946))
                                staticcall address(_946).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1880 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1880] == mem[_1880]
                                    _1903 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_1903] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_946))
                                    staticcall address(_946).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1914 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1918 = mem[_1914]
                                    require mem[_1914] <= test266151307()
                                    require _1914 + mem[_1914] + 31 < _1914 + return_data.size
                                    _1925 = mem[_1914 + mem[_1914]]
                                    require mem[_1914 + mem[_1914]] <= test266151307()
                                    require _1914 + ceil32(return_data.size) + ceil32(mem[_1914 + mem[_1914]]) + 32 <= test266151307() and ceil32(mem[_1914 + mem[_1914]]) + 32 >= 0
                                    mem[64] = _1914 + ceil32(return_data.size) + ceil32(mem[_1914 + mem[_1914]]) + 32
                                    mem[_1914 + ceil32(return_data.size)] = _1925
                                    require _1918 + _1925 + 32 <= return_data.size
                                    s = 0
                                    while s < _1925:
                                        mem[_1914 + ceil32(return_data.size) + s + 32] = mem[_1914 + _1918 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1925) <= _1925:
                                        mem[_1903 + 32] = _1914 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2310 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2323 = mem[_2310]
                                        require mem[_2310] <= test266151307()
                                        require _2310 + mem[_2310] + 31 < _2310 + return_data.size
                                        _2335 = mem[_2310 + mem[_2310]]
                                        require mem[_2310 + mem[_2310]] <= test266151307()
                                        require _2310 + ceil32(return_data.size) + ceil32(mem[_2310 + mem[_2310]]) + 32 <= test266151307() and ceil32(mem[_2310 + mem[_2310]]) + 32 >= 0
                                        mem[64] = _2310 + ceil32(return_data.size) + ceil32(mem[_2310 + mem[_2310]]) + 32
                                        mem[_2310 + ceil32(return_data.size)] = _2335
                                        require _2323 + _2335 + 32 <= return_data.size
                                        s = 0
                                        while s < _2335:
                                            mem[_2310 + ceil32(return_data.size) + s + 32] = mem[_2310 + _2323 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2335) <= _2335:
                                            mem[_1903 + 64] = _2310 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2687 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2687] == mem[_2687]
                                            mem[_1903 + 96] = mem[_2687]
                                        else:
                                            mem[_2310 + ceil32(return_data.size) + _2335 + 32] = 0
                                            mem[_1903 + 64] = _2310 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2700 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2700] == mem[_2700]
                                            mem[_1903 + 96] = mem[_2700]
                                    else:
                                        mem[_1914 + ceil32(return_data.size) + _1925 + 32] = 0
                                        mem[_1903 + 32] = _1914 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2317 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2329 = mem[_2317]
                                        require mem[_2317] <= test266151307()
                                        require _2317 + mem[_2317] + 31 < _2317 + return_data.size
                                        _2340 = mem[_2317 + mem[_2317]]
                                        require mem[_2317 + mem[_2317]] <= test266151307()
                                        require _2317 + ceil32(return_data.size) + ceil32(mem[_2317 + mem[_2317]]) + 32 <= test266151307() and ceil32(mem[_2317 + mem[_2317]]) + 32 >= 0
                                        mem[64] = _2317 + ceil32(return_data.size) + ceil32(mem[_2317 + mem[_2317]]) + 32
                                        mem[_2317 + ceil32(return_data.size)] = _2340
                                        require _2329 + _2340 + 32 <= return_data.size
                                        s = 0
                                        while s < _2340:
                                            mem[_2317 + ceil32(return_data.size) + s + 32] = mem[_2317 + _2329 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2340) <= _2340:
                                            mem[_1903 + 64] = _2317 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2688 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2688] == mem[_2688]
                                            mem[_1903 + 96] = mem[_2688]
                                        else:
                                            mem[_2317 + ceil32(return_data.size) + _2340 + 32] = 0
                                            mem[_1903 + 64] = _2317 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2701 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2701] == mem[_2701]
                                            mem[_1903 + 96] = mem[_2701]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1903
                            else:
                                mem[_1426 + ceil32(return_data.size) + _1433 + 32] = 0
                                require ext_code.size(address(_946))
                                staticcall address(_946).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _1882 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1882] == mem[_1882]
                                    _1910 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_1910] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_946))
                                    staticcall address(_946).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1916 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1920 = mem[_1916]
                                    require mem[_1916] <= test266151307()
                                    require _1916 + mem[_1916] + 31 < _1916 + return_data.size
                                    _1929 = mem[_1916 + mem[_1916]]
                                    require mem[_1916 + mem[_1916]] <= test266151307()
                                    require _1916 + ceil32(return_data.size) + ceil32(mem[_1916 + mem[_1916]]) + 32 <= test266151307() and ceil32(mem[_1916 + mem[_1916]]) + 32 >= 0
                                    mem[64] = _1916 + ceil32(return_data.size) + ceil32(mem[_1916 + mem[_1916]]) + 32
                                    mem[_1916 + ceil32(return_data.size)] = _1929
                                    require _1920 + _1929 + 32 <= return_data.size
                                    s = 0
                                    while s < _1929:
                                        mem[_1916 + ceil32(return_data.size) + s + 32] = mem[_1916 + _1920 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_1929) <= _1929:
                                        mem[_1910 + 32] = _1916 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2311 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2324 = mem[_2311]
                                        require mem[_2311] <= test266151307()
                                        require _2311 + mem[_2311] + 31 < _2311 + return_data.size
                                        _2336 = mem[_2311 + mem[_2311]]
                                        require mem[_2311 + mem[_2311]] <= test266151307()
                                        require _2311 + ceil32(return_data.size) + ceil32(mem[_2311 + mem[_2311]]) + 32 <= test266151307() and ceil32(mem[_2311 + mem[_2311]]) + 32 >= 0
                                        mem[64] = _2311 + ceil32(return_data.size) + ceil32(mem[_2311 + mem[_2311]]) + 32
                                        mem[_2311 + ceil32(return_data.size)] = _2336
                                        require _2324 + _2336 + 32 <= return_data.size
                                        s = 0
                                        while s < _2336:
                                            mem[_2311 + ceil32(return_data.size) + s + 32] = mem[_2311 + _2324 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2336) <= _2336:
                                            mem[_1910 + 64] = _2311 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2689 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2689] == mem[_2689]
                                            mem[_1910 + 96] = mem[_2689]
                                        else:
                                            mem[_2311 + ceil32(return_data.size) + _2336 + 32] = 0
                                            mem[_1910 + 64] = _2311 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2702 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2702] == mem[_2702]
                                            mem[_1910 + 96] = mem[_2702]
                                    else:
                                        mem[_1916 + ceil32(return_data.size) + _1929 + 32] = 0
                                        mem[_1910 + 32] = _1916 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_946))
                                        staticcall address(_946).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2318 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2330 = mem[_2318]
                                        require mem[_2318] <= test266151307()
                                        require _2318 + mem[_2318] + 31 < _2318 + return_data.size
                                        _2341 = mem[_2318 + mem[_2318]]
                                        require mem[_2318 + mem[_2318]] <= test266151307()
                                        require _2318 + ceil32(return_data.size) + ceil32(mem[_2318 + mem[_2318]]) + 32 <= test266151307() and ceil32(mem[_2318 + mem[_2318]]) + 32 >= 0
                                        mem[64] = _2318 + ceil32(return_data.size) + ceil32(mem[_2318 + mem[_2318]]) + 32
                                        mem[_2318 + ceil32(return_data.size)] = _2341
                                        require _2330 + _2341 + 32 <= return_data.size
                                        s = 0
                                        while s < _2341:
                                            mem[_2318 + ceil32(return_data.size) + s + 32] = mem[_2318 + _2330 + s + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2341) <= _2341:
                                            mem[_1910 + 64] = _2318 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2690 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2690] == mem[_2690]
                                            mem[_1910 + 96] = mem[_2690]
                                        else:
                                            mem[_2318 + ceil32(return_data.size) + _2341 + 32] = 0
                                            mem[_1910 + 64] = _2318 + ceil32(return_data.size)
                                            require ext_code.size(address(_946))
                                            staticcall address(_946).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2703 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_2703] == mem[_2703]
                                            mem[_1910 + 96] = mem[_2703]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _1910
            idx = idx + 1
            continue 
        _939 = mem[64]
        mem[mem[64]] = 32
        _949 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + (32 * _949) + 64
        u = mem[64] + 64
        while idx < _949:
            mem[u] = t + -_939 - 64
            _1402 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _1410 = mem[_1402 + 32]
            mem[t + 32] = 128
            _1423 = mem[_1410]
            mem[t + 128] = mem[_1410]
            v = 0
            while v < _1423:
                mem[t + v + 160] = mem[_1410 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1423) <= _1423:
                _1865 = mem[_1402 + 64]
                mem[t + 64] = ceil32(_1423) + 160
                _1872 = mem[_1865]
                mem[t + ceil32(_1423) + 160] = mem[_1865]
                v = 0
                while v < _1872:
                    mem[t + ceil32(_1423) + v + 192] = mem[_1865 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1872) > _1872:
                    mem[t + ceil32(_1423) + _1872 + 192] = 0
                mem[t + 96] = mem[_1402 + 96]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1423) + ceil32(_1872) + 192
                u = u + 32
                continue 
            mem[t + _1423 + 160] = 0
            _1867 = mem[_1402 + 64]
            mem[t + 64] = ceil32(_1423) + 160
            _1878 = mem[_1867]
            mem[t + ceil32(_1423) + 160] = mem[_1867]
            v = 0
            while v < _1878:
                mem[t + ceil32(_1423) + v + 192] = mem[_1867 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1878) > _1878:
                mem[t + ceil32(_1423) + _1878 + 192] = 0
            mem[t + 96] = mem[_1402 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1423) + ceil32(_1878) + 192
            u = u + 32
            continue 
    else:
        mem[64] = (64 * arg1.length) + 288
        mem[(64 * arg1.length) + 160] = 0
        mem[(64 * arg1.length) + 192] = 96
        mem[(64 * arg1.length) + 224] = 96
        mem[(64 * arg1.length) + 256] = 0
        mem[arg1.length] = (64 * arg1.length) + 160
        s = arg1.length
        idx = arg1 + (32 * arg1.length) + 36
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(64 * arg1.length) + 160] = 0
            mem[(64 * arg1.length) + 192] = 96
            mem[(64 * arg1.length) + 224] = 96
            mem[(64 * arg1.length) + 256] = 0
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _1849 = mem[96]
        idx = 0
        while idx < _1849:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                _1857 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1857] = 1
                _1858 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1858] = 5
                mem[_1858 + 32] = 'ETHER'
                mem[_1857 + 32] = _1858
                _1859 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1859] = 3
                mem[_1859 + 32] = 'ETH'
                mem[_1857 + 64] = _1859
                mem[_1857 + 96] = 18
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = _1857
            else:
                require idx < mem[96]
                _1861 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1861))
                staticcall address(_1861).symbol() with:
                        gas gas_remaining wei
                if ext_call.success:
                    _1866 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1877 = mem[_1866]
                    require mem[_1866] <= test266151307()
                    require _1866 + mem[_1866] + 31 < _1866 + return_data.size
                    _1883 = mem[_1866 + mem[_1866]]
                    require mem[_1866 + mem[_1866]] <= test266151307()
                    require _1866 + ceil32(return_data.size) + ceil32(mem[_1866 + mem[_1866]]) + 32 <= test266151307() and ceil32(mem[_1866 + mem[_1866]]) + 32 >= 0
                    mem[64] = _1866 + ceil32(return_data.size) + ceil32(mem[_1866 + mem[_1866]]) + 32
                    mem[_1866 + ceil32(return_data.size)] = _1883
                    require _1877 + _1883 + 32 <= return_data.size
                    s = 0
                    while s < _1883:
                        mem[_1866 + ceil32(return_data.size) + s + 32] = mem[_1866 + _1877 + s + 32]
                        _1849 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1883) <= _1883:
                        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1861))
                        staticcall address(_1861).name() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            _2326 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2332 = mem[_2326]
                            require mem[_2326] <= test266151307()
                            require _2326 + mem[_2326] + 31 < _2326 + return_data.size
                            _2342 = mem[_2326 + mem[_2326]]
                            require mem[_2326 + mem[_2326]] <= test266151307()
                            require _2326 + ceil32(return_data.size) + ceil32(mem[_2326 + mem[_2326]]) + 32 <= test266151307() and ceil32(mem[_2326 + mem[_2326]]) + 32 >= 0
                            mem[64] = _2326 + ceil32(return_data.size) + ceil32(mem[_2326 + mem[_2326]]) + 32
                            mem[_2326 + ceil32(return_data.size)] = _2342
                            require _2332 + _2342 + 32 <= return_data.size
                            s = 0
                            while s < _2342:
                                mem[_2326 + ceil32(return_data.size) + s + 32] = mem[_2326 + _2332 + s + 32]
                                _1849 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_2342) <= _2342:
                                require ext_code.size(address(_1861))
                                staticcall address(_1861).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _2710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2710] == mem[_2710]
                                    _2756 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2756] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_1861))
                                    staticcall address(_1861).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2768 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2772 = mem[_2768]
                                    require mem[_2768] <= test266151307()
                                    require _2768 + mem[_2768] + 31 < _2768 + return_data.size
                                    _2776 = mem[_2768 + mem[_2768]]
                                    require mem[_2768 + mem[_2768]] <= test266151307()
                                    require _2768 + ceil32(return_data.size) + ceil32(mem[_2768 + mem[_2768]]) + 32 <= test266151307() and ceil32(mem[_2768 + mem[_2768]]) + 32 >= 0
                                    mem[64] = _2768 + ceil32(return_data.size) + ceil32(mem[_2768 + mem[_2768]]) + 32
                                    mem[_2768 + ceil32(return_data.size)] = _2776
                                    require _2772 + _2776 + 32 <= return_data.size
                                    s = 0
                                    while s < _2776:
                                        mem[_2768 + ceil32(return_data.size) + s + 32] = mem[_2768 + _2772 + s + 32]
                                        _1849 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2776) <= _2776:
                                        mem[_2756 + 32] = _2768 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2950 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2958 = mem[_2950]
                                        require mem[_2950] <= test266151307()
                                        require _2950 + mem[_2950] + 31 < _2950 + return_data.size
                                        _2966 = mem[_2950 + mem[_2950]]
                                        require mem[_2950 + mem[_2950]] <= test266151307()
                                        require _2950 + ceil32(return_data.size) + ceil32(mem[_2950 + mem[_2950]]) + 32 <= test266151307() and ceil32(mem[_2950 + mem[_2950]]) + 32 >= 0
                                        mem[64] = _2950 + ceil32(return_data.size) + ceil32(mem[_2950 + mem[_2950]]) + 32
                                        mem[_2950 + ceil32(return_data.size)] = _2966
                                        require _2958 + _2966 + 32 <= return_data.size
                                        s = 0
                                        while s < _2966:
                                            mem[_2950 + ceil32(return_data.size) + s + 32] = mem[_2950 + _2958 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2966) <= _2966:
                                            mem[_2756 + 64] = _2950 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3110 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3110] == mem[_3110]
                                            mem[_2756 + 96] = mem[_3110]
                                        else:
                                            mem[_2950 + ceil32(return_data.size) + _2966 + 32] = 0
                                            mem[_2756 + 64] = _2950 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3118 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3118] == mem[_3118]
                                            mem[_2756 + 96] = mem[_3118]
                                    else:
                                        mem[_2768 + ceil32(return_data.size) + _2776 + 32] = 0
                                        mem[_2756 + 32] = _2768 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2954 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2962 = mem[_2954]
                                        require mem[_2954] <= test266151307()
                                        require _2954 + mem[_2954] + 31 < _2954 + return_data.size
                                        _2970 = mem[_2954 + mem[_2954]]
                                        require mem[_2954 + mem[_2954]] <= test266151307()
                                        require _2954 + ceil32(return_data.size) + ceil32(mem[_2954 + mem[_2954]]) + 32 <= test266151307() and ceil32(mem[_2954 + mem[_2954]]) + 32 >= 0
                                        mem[64] = _2954 + ceil32(return_data.size) + ceil32(mem[_2954 + mem[_2954]]) + 32
                                        mem[_2954 + ceil32(return_data.size)] = _2970
                                        require _2962 + _2970 + 32 <= return_data.size
                                        s = 0
                                        while s < _2970:
                                            mem[_2954 + ceil32(return_data.size) + s + 32] = mem[_2954 + _2962 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2970) <= _2970:
                                            mem[_2756 + 64] = _2954 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3111 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3111] == mem[_3111]
                                            mem[_2756 + 96] = mem[_3111]
                                        else:
                                            mem[_2954 + ceil32(return_data.size) + _2970 + 32] = 0
                                            mem[_2756 + 64] = _2954 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3119 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3119] == mem[_3119]
                                            mem[_2756 + 96] = mem[_3119]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _2756
                            else:
                                mem[_2326 + ceil32(return_data.size) + _2342 + 32] = 0
                                require ext_code.size(address(_1861))
                                staticcall address(_1861).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _2720 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2720] == mem[_2720]
                                    _2762 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2762] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_1861))
                                    staticcall address(_1861).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2770 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2774 = mem[_2770]
                                    require mem[_2770] <= test266151307()
                                    require _2770 + mem[_2770] + 31 < _2770 + return_data.size
                                    _2778 = mem[_2770 + mem[_2770]]
                                    require mem[_2770 + mem[_2770]] <= test266151307()
                                    require _2770 + ceil32(return_data.size) + ceil32(mem[_2770 + mem[_2770]]) + 32 <= test266151307() and ceil32(mem[_2770 + mem[_2770]]) + 32 >= 0
                                    mem[64] = _2770 + ceil32(return_data.size) + ceil32(mem[_2770 + mem[_2770]]) + 32
                                    mem[_2770 + ceil32(return_data.size)] = _2778
                                    require _2774 + _2778 + 32 <= return_data.size
                                    s = 0
                                    while s < _2778:
                                        mem[_2770 + ceil32(return_data.size) + s + 32] = mem[_2770 + _2774 + s + 32]
                                        _1849 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2778) <= _2778:
                                        mem[_2762 + 32] = _2770 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2951 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2959 = mem[_2951]
                                        require mem[_2951] <= test266151307()
                                        require _2951 + mem[_2951] + 31 < _2951 + return_data.size
                                        _2967 = mem[_2951 + mem[_2951]]
                                        require mem[_2951 + mem[_2951]] <= test266151307()
                                        require _2951 + ceil32(return_data.size) + ceil32(mem[_2951 + mem[_2951]]) + 32 <= test266151307() and ceil32(mem[_2951 + mem[_2951]]) + 32 >= 0
                                        mem[64] = _2951 + ceil32(return_data.size) + ceil32(mem[_2951 + mem[_2951]]) + 32
                                        mem[_2951 + ceil32(return_data.size)] = _2967
                                        require _2959 + _2967 + 32 <= return_data.size
                                        s = 0
                                        while s < _2967:
                                            mem[_2951 + ceil32(return_data.size) + s + 32] = mem[_2951 + _2959 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2967) <= _2967:
                                            mem[_2762 + 64] = _2951 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3112 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3112] == mem[_3112]
                                            mem[_2762 + 96] = mem[_3112]
                                        else:
                                            mem[_2951 + ceil32(return_data.size) + _2967 + 32] = 0
                                            mem[_2762 + 64] = _2951 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3120 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3120] == mem[_3120]
                                            mem[_2762 + 96] = mem[_3120]
                                    else:
                                        mem[_2770 + ceil32(return_data.size) + _2778 + 32] = 0
                                        mem[_2762 + 32] = _2770 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2955 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2963 = mem[_2955]
                                        require mem[_2955] <= test266151307()
                                        require _2955 + mem[_2955] + 31 < _2955 + return_data.size
                                        _2971 = mem[_2955 + mem[_2955]]
                                        require mem[_2955 + mem[_2955]] <= test266151307()
                                        require _2955 + ceil32(return_data.size) + ceil32(mem[_2955 + mem[_2955]]) + 32 <= test266151307() and ceil32(mem[_2955 + mem[_2955]]) + 32 >= 0
                                        mem[64] = _2955 + ceil32(return_data.size) + ceil32(mem[_2955 + mem[_2955]]) + 32
                                        mem[_2955 + ceil32(return_data.size)] = _2971
                                        require _2963 + _2971 + 32 <= return_data.size
                                        s = 0
                                        while s < _2971:
                                            mem[_2955 + ceil32(return_data.size) + s + 32] = mem[_2955 + _2963 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2971) <= _2971:
                                            mem[_2762 + 64] = _2955 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3113 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3113] == mem[_3113]
                                            mem[_2762 + 96] = mem[_3113]
                                        else:
                                            mem[_2955 + ceil32(return_data.size) + _2971 + 32] = 0
                                            mem[_2762 + 64] = _2955 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3121 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3121] == mem[_3121]
                                            mem[_2762 + 96] = mem[_3121]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _2762
                    else:
                        mem[_1866 + ceil32(return_data.size) + _1883 + 32] = 0
                        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_1861))
                        staticcall address(_1861).name() with:
                                gas gas_remaining wei
                        if ext_call.success:
                            _2331 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2337 = mem[_2331]
                            require mem[_2331] <= test266151307()
                            require _2331 + mem[_2331] + 31 < _2331 + return_data.size
                            _2344 = mem[_2331 + mem[_2331]]
                            require mem[_2331 + mem[_2331]] <= test266151307()
                            require _2331 + ceil32(return_data.size) + ceil32(mem[_2331 + mem[_2331]]) + 32 <= test266151307() and ceil32(mem[_2331 + mem[_2331]]) + 32 >= 0
                            mem[64] = _2331 + ceil32(return_data.size) + ceil32(mem[_2331 + mem[_2331]]) + 32
                            mem[_2331 + ceil32(return_data.size)] = _2344
                            require _2337 + _2344 + 32 <= return_data.size
                            s = 0
                            while s < _2344:
                                mem[_2331 + ceil32(return_data.size) + s + 32] = mem[_2331 + _2337 + s + 32]
                                _1849 = mem[96]
                                s = s + 32
                                continue 
                            if ceil32(_2344) <= _2344:
                                require ext_code.size(address(_1861))
                                staticcall address(_1861).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _2711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2711] == mem[_2711]
                                    _2759 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2759] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_1861))
                                    staticcall address(_1861).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2769 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2773 = mem[_2769]
                                    require mem[_2769] <= test266151307()
                                    require _2769 + mem[_2769] + 31 < _2769 + return_data.size
                                    _2777 = mem[_2769 + mem[_2769]]
                                    require mem[_2769 + mem[_2769]] <= test266151307()
                                    require _2769 + ceil32(return_data.size) + ceil32(mem[_2769 + mem[_2769]]) + 32 <= test266151307() and ceil32(mem[_2769 + mem[_2769]]) + 32 >= 0
                                    mem[64] = _2769 + ceil32(return_data.size) + ceil32(mem[_2769 + mem[_2769]]) + 32
                                    mem[_2769 + ceil32(return_data.size)] = _2777
                                    require _2773 + _2777 + 32 <= return_data.size
                                    s = 0
                                    while s < _2777:
                                        mem[_2769 + ceil32(return_data.size) + s + 32] = mem[_2769 + _2773 + s + 32]
                                        _1849 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2777) <= _2777:
                                        mem[_2759 + 32] = _2769 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2952 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2960 = mem[_2952]
                                        require mem[_2952] <= test266151307()
                                        require _2952 + mem[_2952] + 31 < _2952 + return_data.size
                                        _2968 = mem[_2952 + mem[_2952]]
                                        require mem[_2952 + mem[_2952]] <= test266151307()
                                        require _2952 + ceil32(return_data.size) + ceil32(mem[_2952 + mem[_2952]]) + 32 <= test266151307() and ceil32(mem[_2952 + mem[_2952]]) + 32 >= 0
                                        mem[64] = _2952 + ceil32(return_data.size) + ceil32(mem[_2952 + mem[_2952]]) + 32
                                        mem[_2952 + ceil32(return_data.size)] = _2968
                                        require _2960 + _2968 + 32 <= return_data.size
                                        s = 0
                                        while s < _2968:
                                            mem[_2952 + ceil32(return_data.size) + s + 32] = mem[_2952 + _2960 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2968) <= _2968:
                                            mem[_2759 + 64] = _2952 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3114 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3114] == mem[_3114]
                                            mem[_2759 + 96] = mem[_3114]
                                        else:
                                            mem[_2952 + ceil32(return_data.size) + _2968 + 32] = 0
                                            mem[_2759 + 64] = _2952 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3122 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3122] == mem[_3122]
                                            mem[_2759 + 96] = mem[_3122]
                                    else:
                                        mem[_2769 + ceil32(return_data.size) + _2777 + 32] = 0
                                        mem[_2759 + 32] = _2769 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2956 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2964 = mem[_2956]
                                        require mem[_2956] <= test266151307()
                                        require _2956 + mem[_2956] + 31 < _2956 + return_data.size
                                        _2972 = mem[_2956 + mem[_2956]]
                                        require mem[_2956 + mem[_2956]] <= test266151307()
                                        require _2956 + ceil32(return_data.size) + ceil32(mem[_2956 + mem[_2956]]) + 32 <= test266151307() and ceil32(mem[_2956 + mem[_2956]]) + 32 >= 0
                                        mem[64] = _2956 + ceil32(return_data.size) + ceil32(mem[_2956 + mem[_2956]]) + 32
                                        mem[_2956 + ceil32(return_data.size)] = _2972
                                        require _2964 + _2972 + 32 <= return_data.size
                                        s = 0
                                        while s < _2972:
                                            mem[_2956 + ceil32(return_data.size) + s + 32] = mem[_2956 + _2964 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2972) <= _2972:
                                            mem[_2759 + 64] = _2956 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3115 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3115] == mem[_3115]
                                            mem[_2759 + 96] = mem[_3115]
                                        else:
                                            mem[_2956 + ceil32(return_data.size) + _2972 + 32] = 0
                                            mem[_2759 + 64] = _2956 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3123 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3123] == mem[_3123]
                                            mem[_2759 + 96] = mem[_3123]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _2759
                            else:
                                mem[_2331 + ceil32(return_data.size) + _2344 + 32] = 0
                                require ext_code.size(address(_1861))
                                staticcall address(_1861).decimals() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if ext_call.success:
                                    _2721 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2721] == mem[_2721]
                                    _2765 = mem[64]
                                    mem[64] = mem[64] + 128
                                    mem[_2765] = 1
                                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                                    require ext_code.size(address(_1861))
                                    staticcall address(_1861).name() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2771 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2775 = mem[_2771]
                                    require mem[_2771] <= test266151307()
                                    require _2771 + mem[_2771] + 31 < _2771 + return_data.size
                                    _2779 = mem[_2771 + mem[_2771]]
                                    require mem[_2771 + mem[_2771]] <= test266151307()
                                    require _2771 + ceil32(return_data.size) + ceil32(mem[_2771 + mem[_2771]]) + 32 <= test266151307() and ceil32(mem[_2771 + mem[_2771]]) + 32 >= 0
                                    mem[64] = _2771 + ceil32(return_data.size) + ceil32(mem[_2771 + mem[_2771]]) + 32
                                    mem[_2771 + ceil32(return_data.size)] = _2779
                                    require _2775 + _2779 + 32 <= return_data.size
                                    s = 0
                                    while s < _2779:
                                        mem[_2771 + ceil32(return_data.size) + s + 32] = mem[_2771 + _2775 + s + 32]
                                        _1849 = mem[96]
                                        s = s + 32
                                        continue 
                                    if ceil32(_2779) <= _2779:
                                        mem[_2765 + 32] = _2771 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2953 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2961 = mem[_2953]
                                        require mem[_2953] <= test266151307()
                                        require _2953 + mem[_2953] + 31 < _2953 + return_data.size
                                        _2969 = mem[_2953 + mem[_2953]]
                                        require mem[_2953 + mem[_2953]] <= test266151307()
                                        require _2953 + ceil32(return_data.size) + ceil32(mem[_2953 + mem[_2953]]) + 32 <= test266151307() and ceil32(mem[_2953 + mem[_2953]]) + 32 >= 0
                                        mem[64] = _2953 + ceil32(return_data.size) + ceil32(mem[_2953 + mem[_2953]]) + 32
                                        mem[_2953 + ceil32(return_data.size)] = _2969
                                        require _2961 + _2969 + 32 <= return_data.size
                                        s = 0
                                        while s < _2969:
                                            mem[_2953 + ceil32(return_data.size) + s + 32] = mem[_2953 + _2961 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2969) <= _2969:
                                            mem[_2765 + 64] = _2953 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3116 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3116] == mem[_3116]
                                            mem[_2765 + 96] = mem[_3116]
                                        else:
                                            mem[_2953 + ceil32(return_data.size) + _2969 + 32] = 0
                                            mem[_2765 + 64] = _2953 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3124 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3124] == mem[_3124]
                                            mem[_2765 + 96] = mem[_3124]
                                    else:
                                        mem[_2771 + ceil32(return_data.size) + _2779 + 32] = 0
                                        mem[_2765 + 32] = _2771 + ceil32(return_data.size)
                                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                                        require ext_code.size(address(_1861))
                                        staticcall address(_1861).symbol() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2957 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2965 = mem[_2957]
                                        require mem[_2957] <= test266151307()
                                        require _2957 + mem[_2957] + 31 < _2957 + return_data.size
                                        _2973 = mem[_2957 + mem[_2957]]
                                        require mem[_2957 + mem[_2957]] <= test266151307()
                                        require _2957 + ceil32(return_data.size) + ceil32(mem[_2957 + mem[_2957]]) + 32 <= test266151307() and ceil32(mem[_2957 + mem[_2957]]) + 32 >= 0
                                        mem[64] = _2957 + ceil32(return_data.size) + ceil32(mem[_2957 + mem[_2957]]) + 32
                                        mem[_2957 + ceil32(return_data.size)] = _2973
                                        require _2965 + _2973 + 32 <= return_data.size
                                        s = 0
                                        while s < _2973:
                                            mem[_2957 + ceil32(return_data.size) + s + 32] = mem[_2957 + _2965 + s + 32]
                                            _1849 = mem[96]
                                            s = s + 32
                                            continue 
                                        if ceil32(_2973) <= _2973:
                                            mem[_2765 + 64] = _2957 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3117 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3117] == mem[_3117]
                                            mem[_2765 + 96] = mem[_3117]
                                        else:
                                            mem[_2957 + ceil32(return_data.size) + _2973 + 32] = 0
                                            mem[_2765 + 64] = _2957 + ceil32(return_data.size)
                                            require ext_code.size(address(_1861))
                                            staticcall address(_1861).decimals() with:
                                                    gas gas_remaining wei
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3125 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3125] == mem[_3125]
                                            mem[_2765 + 96] = mem[_3125]
                                    require idx < mem[(32 * arg1.length) + 128]
                                    mem[(32 * idx) + (32 * arg1.length) + 160] = _2765
            _1849 = mem[96]
            idx = idx + 1
            continue 
        _1854 = mem[64]
        mem[mem[64]] = 32
        _1864 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + (32 * _1864) + 64
        u = mem[64] + 64
        while idx < _1864:
            mem[u] = t + -_1854 - 64
            _2284 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _2312 = mem[_2284 + 32]
            mem[t + 32] = 128
            _2325 = mem[_2312]
            mem[t + 128] = mem[_2312]
            v = 0
            while v < _2325:
                mem[t + v + 160] = mem[_2312 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2325) <= _2325:
                _2682 = mem[_2284 + 64]
                mem[t + 64] = ceil32(_2325) + 160
                _2704 = mem[_2682]
                mem[t + ceil32(_2325) + 160] = mem[_2682]
                v = 0
                while v < _2704:
                    mem[t + ceil32(_2325) + v + 192] = mem[_2682 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_2704) > _2704:
                    mem[t + ceil32(_2325) + _2704 + 192] = 0
                mem[t + 96] = mem[_2284 + 96]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_2325) + ceil32(_2704) + 192
                u = u + 32
                continue 
            mem[t + _2325 + 160] = 0
            _2691 = mem[_2284 + 64]
            mem[t + 64] = ceil32(_2325) + 160
            _2709 = mem[_2691]
            mem[t + ceil32(_2325) + 160] = mem[_2691]
            v = 0
            while v < _2709:
                mem[t + ceil32(_2325) + v + 192] = mem[_2691 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2709) > _2709:
                mem[t + ceil32(_2325) + _2709 + 192] = 0
            mem[t + 96] = mem[_2284 + 96]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2325) + ceil32(_2709) + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
