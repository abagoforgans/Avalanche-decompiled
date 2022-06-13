contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _50 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _55 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            _59 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _62 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_62 + 32] = Mask(112, 0, _55)
            mem[_59] = Mask(112, 0, _50)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _39:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var15001] = (32 * arg1.length) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _102 = mem[_101]
            require mem[_101] == mem[_101 + 18 len 14]
            _103 = mem[_101 + 32]
            require mem[_101 + 32] == mem[_101 + 50 len 14]
            require mem[_101 + 64] == mem[_101 + 92 len 4]
            if idx >= mem[96]:
                revert with 0, 50
            _106 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            _108 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_101 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _102)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _95 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _95:
            u = 0
            v = s
            w = mem[t]
            while u < 3:
                mem[v] = mem[w]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            u = 4
            s = s + 96
            t = t + 32
            continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function getPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 <= ext_call.return_data[0]:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        if arg3 - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _193 = mem[_186]
                require mem[_186] == mem[_186 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_186 + 12 len 20]
                staticcall address(_193).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_223] == mem[_223 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_223 + 12 len 20]
                staticcall address(_193).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_247] == mem[_247 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[_247 + 12 len 20]
                staticcall address(_193).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _271 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _281 = mem[_271]
                require mem[_271] == mem[_271 + 18 len 14]
                require mem[_271 + 32] == mem[_271 + 50 len 14]
                require mem[_271 + 64] == mem[_271 + 92 len 4]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                _295 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] = mem[_271 + 50 len 14]
                mem[_295 + 64] = Mask(112, 0, _281)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _163 = mem[64]
            mem[mem[64]] = 32
            _165 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _165:
                _311 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_311 + 44 len 20]
                mem[t + 64] = mem[_311 + 82 len 14]
                mem[t + 96] = mem[_311 + 108 len 20]
                mem[t + 128] = mem[_311 + 146 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _163 + (160 * _165) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 288
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
        mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        s = ceil32(return_data.size) + 128
        idx = arg3 - arg2
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3 - arg2:
            if arg2 > !idx:
                revert with 0, 17
            mem[mem[64] + 4] = arg2 + idx
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_346]
            require mem[_346] == mem[_346 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_346 + 12 len 20]
            staticcall address(_349).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _359 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_359] == mem[_359 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_359 + 12 len 20]
            staticcall address(_349).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_371] == mem[_371 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[_371 + 12 len 20]
            staticcall address(_349).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _385 = mem[_383]
            require mem[_383] == mem[_383 + 18 len 14]
            require mem[_383 + 32] == mem[_383 + 50 len 14]
            require mem[_383 + 64] == mem[_383 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _393 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] = mem[_383 + 50 len 14]
            mem[_393 + 64] = Mask(112, 0, _385)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _324 = mem[64]
        mem[mem[64]] = 32
        _327 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _327:
            _399 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_399 + 44 len 20]
            mem[t + 64] = mem[_399 + 82 len 14]
            mem[t + 96] = mem[_399 + 108 len 20]
            mem[t + 128] = mem[_399 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _324 + (160 * _327) + -mem[64] + 64
    if ext_call.return_data[0] < arg2:
        revert with 0, 'start cannot be higher than stop'
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > !idx:
                revert with 0, 17
            mem[mem[64] + 4] = arg2 + idx
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _201 = mem[_189]
            require mem[_189] == mem[_189 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_189 + 12 len 20]
            staticcall address(_201).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_224] == mem[_224 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_224 + 12 len 20]
            staticcall address(_201).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _248 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_248] == mem[_248 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[_248 + 12 len 20]
            staticcall address(_201).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _272 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _283 = mem[_272]
            require mem[_272] == mem[_272 + 18 len 14]
            require mem[_272 + 32] == mem[_272 + 50 len 14]
            require mem[_272 + 64] == mem[_272 + 92 len 4]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _298 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] = mem[_272 + 50 len 14]
            mem[_298 + 64] = Mask(112, 0, _283)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _164 = mem[64]
        mem[mem[64]] = 32
        _166 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _166:
            _317 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_317 + 44 len 20]
            mem[t + 64] = mem[_317 + 82 len 14]
            mem[t + 96] = mem[_317 + 108 len 20]
            mem[t + 128] = mem[_317 + 146 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _164 + (160 * _166) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
    mem[ceil32(return_data.size) + 128] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = ceil32(return_data.size) + 128
    idx = ext_call.return_data[0] - arg2
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > !idx:
            revert with 0, 17
        mem[mem[64] + 4] = arg2 + idx
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _350 = mem[_348]
        require mem[_348] == mem[_348 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_348 + 12 len 20]
        staticcall address(_350).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _360 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_360] == mem[_360 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_360 + 12 len 20]
        staticcall address(_350).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_372] == mem[_372 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 96] = mem[_372 + 12 len 20]
        staticcall address(_350).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _384 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _386 = mem[_384]
        require mem[_384] == mem[_384 + 18 len 14]
        require mem[_384 + 32] == mem[_384 + 50 len 14]
        require mem[_384 + 64] == mem[_384 + 92 len 4]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _395 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 128] = mem[_384 + 50 len 14]
        mem[_395 + 64] = Mask(112, 0, _386)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _326 = mem[64]
    mem[mem[64]] = 32
    _328 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _328:
        _405 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_405 + 44 len 20]
        mem[t + 64] = mem[_405 + 82 len 14]
        mem[t + 96] = mem[_405 + 108 len 20]
        mem[t + 128] = mem[_405 + 146 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _326 + (160 * _328) + -mem[64] + 64
}



}
