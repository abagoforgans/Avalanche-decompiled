contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8080ef99(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0 == ext_call.return_data[18 len 14]:
        if not ext_call.return_data[50 len 14]:
            return arg2, arg3, 0
    if arg2 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not ext_call.return_data[50 len 14]:
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        if 0 / ext_call.return_data[18 len 14] <= arg3:
            if 0 / ext_call.return_data[18 len 14] >= arg5:
                return arg2, 0 / Mask(112, 0, ext_call.return_data[0]), 0
            return arg2, 0 / Mask(112, 0, ext_call.return_data[0]), 1
    else:
        if arg2 and ext_call.return_data[50 len 14] > -1 / arg2:
            revert with 0, 17
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != arg2:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            revert with 0, 18
        if arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] <= arg3:
            if arg2 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] >= arg5:
                return arg2, arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0
            return arg2, arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 1
    if arg3 <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_AMOUNT'
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY'
    if not ext_call.return_data[18 len 14]:
        if not ext_call.return_data[50 len 14]:
            revert with 0, 18
        if 0 / ext_call.return_data[50 len 14] <= arg2:
            if 0 / ext_call.return_data[50 len 14] >= arg4:
                return 0 / ext_call.return_data[50 len 14], arg3, 0
        else:
        return 0 / ext_call.return_data[50 len 14], arg3, 1
    if arg3 and ext_call.return_data[18 len 14] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[18 len 14]:
        revert with 0, 18
    if arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[50 len 14]:
        revert with 0, 18
    if arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] <= arg2:
        if arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] >= arg4:
            return arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14], arg3, 0
    else:
    return arg3 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14], arg3, 1
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
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
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
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
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
    require ext_code.size(arg1)
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
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _127 = mem[_120]
                require mem[_120] == mem[_120 + 12 len 20]
                require ext_code.size(mem[_120 + 12 len 20])
                staticcall mem[_120 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_147] == mem[_147 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_147 + 12 len 20]
                require ext_code.size(address(_127))
                staticcall address(_127).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_167] == mem[_167 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_167 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_127)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _109 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _109:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 224
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var24001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = var24001
            idx = var24002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _271 = mem[_268]
                require mem[_268] == mem[_268 + 12 len 20]
                require ext_code.size(mem[_268 + 12 len 20])
                staticcall mem[_268 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == mem[_277 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_277 + 12 len 20]
                require ext_code.size(address(_271))
                staticcall address(_271).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == mem[_289 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_289 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_271)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _256 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _256:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
    else:
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
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _129 = mem[_123]
                require mem[_123] == mem[_123 + 12 len 20]
                require ext_code.size(mem[_123 + 12 len 20])
                staticcall mem[_123 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_148] == mem[_148 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_148 + 12 len 20]
                require ext_code.size(address(_129))
                staticcall address(_129).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_168] == mem[_168 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_168 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_129)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _110 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _110:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                u = 4
                s = s + 96
                t = t + 32
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var25001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var25001
            idx = var25002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg2 > !idx:
                    revert with 0, 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _272 = mem[_270]
                require mem[_270] == mem[_270 + 12 len 20]
                require ext_code.size(mem[_270 + 12 len 20])
                staticcall mem[_270 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == mem[_278 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_278 + 12 len 20]
                require ext_code.size(address(_272))
                staticcall address(_272).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_290 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_272)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _258 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = mem[64] + 64
            t = ceil32(return_data.size) + 128
            while idx < _258:
                u = 0
                v = s
                w = mem[t]
                while u < 3:
                    mem[v] = mem[w + 12 len 20]
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

function sub_7e42111e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    staticcall address(arg2).kLast() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    staticcall address(arg1).feeTo() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[32]):
        if ext_call.return_data[0] <= 3:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if 1 > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 0 <= t:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if 0 < t:
            revert with 0, 17
        if -t > 0:
            revert with 0, 'ds-math-sub-underflow'
        if not -t:
            if 0 > !t:
                revert with 0, 17
            if t < 0:
                revert with 0, 'ds-math-add-overflow'
            if not t:
                revert with 0, 18
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if 0 / t <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(0 / t):
                revert with 0, 17
            if ext_call.return_data[0] + (0 / t) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / t):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / t):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (0 / t), 0 / ext_call.return_data[0] + (0 / t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / t):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (0 / t), arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / t):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / t):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t), 0 / ext_call.return_data[0] + (0 / t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / t):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t)
        if ext_call.return_data[0] and -t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not -t:
            revert with 0, 18
        if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 0 > !t:
            revert with 0, 17
        if t < 0:
            revert with 0, 'ds-math-add-overflow'
        if not t:
            revert with 0, 18
        if not ext_call.return_data[12 len 20]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if -1 * ext_call.return_data[0] * t / t <= 0:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] > !(-1 * ext_call.return_data[0] * t / t):
            revert with 0, 17
        if ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t) < ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                       0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                revert with 0, 18
            return 0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                   0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
               arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
    if Mask(112, 0, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
        revert with 0, 'ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) <= 3:
        if not Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]):
            if ext_call.return_data[0] <= 3:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if 1 > !(ext_call.return_data[0] / 2):
                revert with 0, 17
            s = (ext_call.return_data[0] / 2) + 1
            t = ext_call.return_data[0]
            while s < t:
                if not s:
                    revert with 0, 18
                if ext_call.return_data[0] / s > !s:
                    revert with 0, 17
                s = (ext_call.return_data[0] / s) + s / 2
                t = s
                continue 
            if 0 <= t:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if 0 < t:
                revert with 0, 17
            if -t > 0:
                revert with 0, 'ds-math-sub-underflow'
            if not -t:
                if 0 > !t:
                    revert with 0, 17
                if t < 0:
                    revert with 0, 'ds-math-add-overflow'
                if not t:
                    revert with 0, 18
                if not ext_call.return_data[12 len 20]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if 0 / t <= 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if ext_call.return_data[0] > !(0 / t):
                    revert with 0, 17
                if ext_call.return_data[0] + (0 / t) < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / t):
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (0 / t):
                            revert with 0, 18
                        return 0 / ext_call.return_data[0] + (0 / t), 0 / ext_call.return_data[0] + (0 / t)
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0] + (0 / t):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (0 / t), arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / t):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / t):
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t), 0 / ext_call.return_data[0] + (0 / t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / t):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t)
            if ext_call.return_data[0] and -t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not -t:
                revert with 0, 18
            if -1 * ext_call.return_data[0] * t / -t != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if 0 > !t:
                revert with 0, 17
            if t < 0:
                revert with 0, 'ds-math-add-overflow'
            if not t:
                revert with 0, 18
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if -1 * ext_call.return_data[0] * t / t <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(-1 * ext_call.return_data[0] * t / t):
                revert with 0, 17
            if ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                           0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                       0 / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-1 * ext_call.return_data[0] * t / t)
        if ext_call.return_data[0] <= 3:
            if ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] / 5 <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(ext_call.return_data[0] / 5):
                revert with 0, 17
            if ext_call.return_data[0] + (ext_call.return_data[0] / 5) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (ext_call.return_data[0] / 5), 
                           0 / ext_call.return_data[0] + (ext_call.return_data[0] / 5)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (ext_call.return_data[0] / 5), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] / 5)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] / 5), 
                       0 / ext_call.return_data[0] + (ext_call.return_data[0] / 5)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (ext_call.return_data[0] / 5):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] / 5), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] / 5)
        if 1 > !(ext_call.return_data[0] / 2):
            revert with 0, 17
        s = (ext_call.return_data[0] / 2) + 1
        t = ext_call.return_data[0]
        while s < t:
            if not s:
                revert with 0, 18
            if ext_call.return_data[0] / s > !s:
                revert with 0, 17
            s = (ext_call.return_data[0] / s) + s / 2
            t = s
            continue 
        if 1 <= t:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if 1 < t:
            revert with 0, 17
        if -t + 1 > 1:
            revert with 0, 'ds-math-sub-underflow'
        if not -t + 1:
            if 5 > !t:
                revert with 0, 17
            if t + 5 < 5:
                revert with 0, 'ds-math-add-overflow'
            if not t + 5:
                revert with 0, 18
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if 0 / t + 5 <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(0 / t + 5):
                revert with 0, 17
            if ext_call.return_data[0] + (0 / t + 5) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / t + 5):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / t + 5):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (0 / t + 5), 0 / ext_call.return_data[0] + (0 / t + 5)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / t + 5):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (0 / t + 5), arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t + 5)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / t + 5):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / t + 5):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t + 5), 0 / ext_call.return_data[0] + (0 / t + 5)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / t + 5):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t + 5), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / t + 5)
        if ext_call.return_data[0] and -t + 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not -t + 1:
            revert with 0, 18
        if ext_call.return_data[0] - (t * ext_call.return_data[0]) / -t + 1 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if 5 > !t:
            revert with 0, 17
        if t + 5 < 5:
            revert with 0, 'ds-math-add-overflow'
        if not t + 5:
            revert with 0, 18
        if not ext_call.return_data[12 len 20]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5 <= 0:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] > !(ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
            revert with 0, 17
        if ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5) < ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5), 
                       0 / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
                revert with 0, 18
            return 0 / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5), 
                   0 / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5):
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5), 
               arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] - (t * ext_call.return_data[0]) / t + 5)
    if 1 > !(Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 2):
        revert with 0, 17
    s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 2) + 1
    t = Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])
    while s < t:
        if not s:
            revert with 0, 18
        if Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s > !s:
            revert with 0, 17
        s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
        t = s
        continue 
    if ext_call.return_data[0] <= 3:
        if not ext_call.return_data[0]:
            if t <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if t < 0:
                revert with 0, 17
            if t > t:
                revert with 0, 'ds-math-sub-underflow'
            if not t:
                if t and 5 > -1 / t:
                    revert with 0, 17
                if 5 * t / 5 != t:
                    revert with 0, 'ds-math-mul-overflow'
                if 5 * t > -1:
                    revert with 0, 17
                if 5 * t < 5 * t:
                    revert with 0, 'ds-math-add-overflow'
                if not 5 * t:
                    revert with 0, 18
                if not ext_call.return_data[12 len 20]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if 0 / 5 * t <= 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if not ext_call.return_data[0]:
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                        if arg3 and ext_call.return_data[0] > -1 / arg3:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                            revert with 0, 'ds-math-mul-overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if ext_call.return_data[0] > !(0 / 5 * t):
                    revert with 0, 17
                if ext_call.return_data[0] + (0 / 5 * t) < ext_call.return_data[0]:
                    revert with 0, 'ds-math-add-overflow'
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / 5 * t):
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0] + (0 / 5 * t):
                            revert with 0, 18
                        return 0 / ext_call.return_data[0] + (0 / 5 * t), 0 / ext_call.return_data[0] + (0 / 5 * t)
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0] + (0 / 5 * t):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (0 / 5 * t), arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / 5 * t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / 5 * t):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / 5 * t):
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / 5 * t), 0 / ext_call.return_data[0] + (0 / 5 * t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / 5 * t):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / 5 * t), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / 5 * t)
            if ext_call.return_data[0] and t > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not t:
                revert with 0, 18
            if ext_call.return_data[0] * t / t != ext_call.return_data[0]:
                revert with 0, 'ds-math-mul-overflow'
            if t and 5 > -1 / t:
                revert with 0, 17
            if 5 * t / 5 != t:
                revert with 0, 'ds-math-mul-overflow'
            if 5 * t > -1:
                revert with 0, 17
            if 5 * t < 5 * t:
                revert with 0, 'ds-math-add-overflow'
            if not 5 * t:
                revert with 0, 18
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] * t / 5 * t <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(ext_call.return_data[0] * t / 5 * t):
                revert with 0, 17
            if ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t), 
                           0 / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t), 
                       0 / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (ext_call.return_data[0] * t / 5 * t)
        if t <= 1:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if t < 1:
            revert with 0, 17
        if t - 1 > t:
            revert with 0, 'ds-math-sub-underflow'
        if not t - 1:
            if t and 5 > -1 / t:
                revert with 0, 17
            if 5 * t / 5 != t:
                revert with 0, 'ds-math-mul-overflow'
            if 5 * t > -2:
                revert with 0, 17
            if (5 * t) + 1 < 5 * t:
                revert with 0, 'ds-math-add-overflow'
            if not (5 * t) + 1:
                revert with 0, 18
            if not ext_call.return_data[12 len 20]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if 0 / (5 * t) + 1 <= 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                    if arg3 and ext_call.return_data[0] > -1 / arg3:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if ext_call.return_data[0] > !(0 / (5 * t) + 1):
                revert with 0, 17
            if ext_call.return_data[0] + (0 / (5 * t) + 1) < ext_call.return_data[0]:
                revert with 0, 'ds-math-add-overflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                        revert with 0, 18
                    return 0 / ext_call.return_data[0] + (0 / (5 * t) + 1), 0 / ext_call.return_data[0] + (0 / (5 * t) + 1)
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (0 / (5 * t) + 1), 
                       arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + 1)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + 1), 
                       0 / ext_call.return_data[0] + (0 / (5 * t) + 1)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / (5 * t) + 1):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + 1), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + 1)
        if ext_call.return_data[0] and t - 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not t - 1:
            revert with 0, 18
        if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / t - 1 != ext_call.return_data[0]:
            revert with 0, 'ds-math-mul-overflow'
        if t and 5 > -1 / t:
            revert with 0, 17
        if 5 * t / 5 != t:
            revert with 0, 'ds-math-mul-overflow'
        if 5 * t > -2:
            revert with 0, 17
        if (5 * t) + 1 < 5 * t:
            revert with 0, 'ds-math-add-overflow'
        if not (5 * t) + 1:
            revert with 0, 18
        if not ext_call.return_data[12 len 20]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if -ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1 <= 0:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] > !(-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
            revert with 0, 17
        if ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1) < ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1), 
                       0 / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
                revert with 0, 18
            return 0 / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1), 
                   0 / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1):
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1), 
               arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (-ext_call.return_data[0] + (t * ext_call.return_data[0]) / (5 * t) + 1)
    if 1 > !(ext_call.return_data[0] / 2):
        revert with 0, 17
    s = (ext_call.return_data[0] / 2) + 1
    u = ext_call.return_data[0]
    while s < u:
        if not s:
            revert with 0, 18
        if ext_call.return_data[0] / s > !s:
            revert with 0, 17
        s = (ext_call.return_data[0] / s) + s / 2
        u = s
        continue 
    if t <= u:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    if t < u:
        revert with 0, 17
    if t - u > t:
        revert with 0, 'ds-math-sub-underflow'
    if not t - u:
        if t and 5 > -1 / t:
            revert with 0, 17
        if 5 * t / 5 != t:
            revert with 0, 'ds-math-mul-overflow'
        if 5 * t > !u:
            revert with 0, 17
        if (5 * t) + u < 5 * t:
            revert with 0, 'ds-math-add-overflow'
        if not (5 * t) + u:
            revert with 0, 18
        if not ext_call.return_data[12 len 20]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if 0 / (5 * t) + u <= 0:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
                if arg3 and ext_call.return_data[0] > -1 / arg3:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if ext_call.return_data[0] > !(0 / (5 * t) + u):
            revert with 0, 17
        if ext_call.return_data[0] + (0 / (5 * t) + u) < ext_call.return_data[0]:
            revert with 0, 'ds-math-add-overflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (0 / (5 * t) + u):
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0] + (0 / (5 * t) + u):
                    revert with 0, 18
                return 0 / ext_call.return_data[0] + (0 / (5 * t) + u), 0 / ext_call.return_data[0] + (0 / (5 * t) + u)
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0] + (0 / (5 * t) + u):
                revert with 0, 18
            return 0 / ext_call.return_data[0] + (0 / (5 * t) + u), 
                   arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + u)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (0 / (5 * t) + u):
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + (0 / (5 * t) + u):
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + u), 
                   0 / ext_call.return_data[0] + (0 / (5 * t) + u)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + (0 / (5 * t) + u):
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + u), 
               arg3 * ext_call.return_data[0] / ext_call.return_data[0] + (0 / (5 * t) + u)
    if ext_call.return_data[0] and t - u > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not t - u:
        revert with 0, 18
    if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / t - u != ext_call.return_data[0]:
        revert with 0, 'ds-math-mul-overflow'
    if t and 5 > -1 / t:
        revert with 0, 17
    if 5 * t / 5 != t:
        revert with 0, 'ds-math-mul-overflow'
    if 5 * t > !u:
        revert with 0, 17
    if (5 * t) + u < 5 * t:
        revert with 0, 'ds-math-add-overflow'
    if not (5 * t) + u:
        revert with 0, 18
    if not ext_call.return_data[12 len 20]:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    if (t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u <= 0:
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 18
                return 0 / ext_call.return_data[0], 0 / ext_call.return_data[0]
            if arg3 and ext_call.return_data[0] > -1 / arg3:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[0]:
                revert with 0, 18
            return 0 / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 18
            return arg3 * ext_call.return_data[0] / ext_call.return_data[0], 0 / ext_call.return_data[0]
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0]:
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0], arg3 * ext_call.return_data[0] / ext_call.return_data[0]
    if ext_call.return_data[0] > !((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
        revert with 0, 17
    if ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u) < ext_call.return_data[0]:
        revert with 0, 'ds-math-add-overflow'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
            revert with 0, 18
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
                revert with 0, 18
            return 0 / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u), 
                   0 / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u)
        if arg3 and ext_call.return_data[0] > -1 / arg3:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
            revert with 0, 18
        return 0 / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u), 
               arg3 * ext_call.return_data[0] / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u)
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
        revert with 0, 18
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
            revert with 0, 18
        return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u), 
               0 / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u)
    if arg3 and ext_call.return_data[0] > -1 / arg3:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if not ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u):
        revert with 0, 18
    return arg3 * ext_call.return_data[0] / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u), 
           arg3 * ext_call.return_data[0] / ext_call.return_data[0] + ((t * ext_call.return_data[0]) - (u * ext_call.return_data[0]) / (5 * t) + u)
}



}
