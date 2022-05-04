contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getUniswapReservesByPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
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
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _53 = mem[_51]
            require mem[_51] == mem[_51 + 18 len 14]
            _60 = mem[_51 + 32]
            require mem[_51 + 32] == mem[_51 + 50 len 14]
            require mem[_51 + 64] == mem[_51 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _65 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _67 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_51 + 92 len 4]
            mem[_67 + 32] = Mask(112, 0, _60)
            mem[_65] = Mask(112, 0, _53)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _43 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            u = 0
            v = mem[s]
            w = t
            while u < 4:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
    else:
        mem[64] = (32 * arg1.length) + 256
        mem[(32 * arg1.length) + 128 len 128] = call.data[calldata.size len 128]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * arg1.length) + 128 len 128] = call.data[calldata.size len 128]
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
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _111 = mem[_110]
            require mem[_110] == mem[_110 + 18 len 14]
            _113 = mem[_110 + 32]
            require mem[_110 + 32] == mem[_110 + 50 len 14]
            require mem[_110 + 64] == mem[_110 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _116 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _118 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_110 + 92 len 4]
            mem[_118 + 32] = Mask(112, 0, _113)
            mem[_116] = Mask(112, 0, _111)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 96] = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _104 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _104:
            u = 0
            v = mem[s]
            w = t
            while u < 4:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getUniswapPairsTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 12 len 20]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_58] == mem[_58 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _65 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 32] = mem[_58 + 12 len 20]
            mem[_65] = address(_49)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _39:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    else:
        mem[64] = (32 * arg1.length) + 192
        mem[(32 * arg1.length) + 128 len 64] = call.data[calldata.size len 64]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg1.length) + 128 len 64] = call.data[calldata.size len 64]
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _101 = mem[_100]
            require mem[_100] == mem[_100 + 12 len 20]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_105] == mem[_105 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _108 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 32] = mem[_105 + 12 len 20]
            mem[_108] = address(_101)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _94:
            u = 0
            v = mem[s]
            w = t
            while u < 2:
                mem[w] = mem[v + 12 len 20]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getUniswapPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 <= ext_call.return_data[0]:
        if arg3 < arg2:
            revert with 0, 'start cannot be higher than stop'
        if arg3 - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _129 = mem[_125]
                require mem[_125] == mem[_125 + 12 len 20]
                require ext_code.size(mem[_125 + 12 len 20])
                staticcall mem[_125 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_147] == mem[_147 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_147 + 12 len 20]
                require ext_code.size(address(_129))
                staticcall address(_129).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_167] == mem[_167 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_167 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_129)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _109 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _109:
                u = 0
                v = mem[s]
                w = t
                while u < 3:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 224
            mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var57001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = var57001
            idx = var57002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _269 = mem[_267]
                require mem[_267] == mem[_267 + 12 len 20]
                require ext_code.size(mem[_267 + 12 len 20])
                staticcall mem[_267 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == mem[_277 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_277 + 12 len 20]
                require ext_code.size(address(_269))
                staticcall address(_269).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == mem[_289 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_289 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_269)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _255 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _255:
                u = 0
                v = mem[s]
                w = t
                while u < 3:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
    else:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'start cannot be higher than stop'
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_126]
                require mem[_126] == mem[_126 + 12 len 20]
                require ext_code.size(mem[_126 + 12 len 20])
                staticcall mem[_126 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_148] == mem[_148 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_148 + 12 len 20]
                require ext_code.size(address(_132))
                staticcall address(_132).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_168] == mem[_168 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_168 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_132)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _110 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _110:
                u = 0
                v = mem[s]
                w = t
                while u < 3:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
        else:
            mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
            mem[var58001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var58001
            idx = var58002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _268 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _270 = mem[_268]
                require mem[_268] == mem[_268 + 12 len 20]
                require ext_code.size(mem[_268 + 12 len 20])
                staticcall mem[_268 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == mem[_278 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_278 + 12 len 20]
                require ext_code.size(address(_270))
                staticcall address(_270).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_290 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_270)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _256 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _256:
                u = 0
                v = mem[s]
                w = t
                while u < 3:
                    mem[w] = mem[v + 12 len 20]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getTokensInfo(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _174 = mem[_171]
            require mem[_171] <= test266151307()
            require _171 + mem[_171] + 31 < _171 + return_data.size
            _179 = mem[_171 + mem[_171]]
            if mem[_171 + mem[_171]] > test266151307():
                revert with 'NH{q', 65
            if _171 + ceil32(return_data.size) + ceil32(ceil32(mem[_171 + mem[_171]])) + 1 > test266151307() or ceil32(ceil32(mem[_171 + mem[_171]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _171 + ceil32(return_data.size) + ceil32(ceil32(mem[_171 + mem[_171]])) + 1
            mem[_171 + ceil32(return_data.size)] = _179
            require _174 + _179 + 32 <= return_data.size
            s = 0
            while s < _179:
                mem[_171 + ceil32(return_data.size) + s + 32] = mem[_171 + _174 + s + 32]
                s = s + 32
                continue 
            if ceil32(_179) <= _179:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _340 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _345 = mem[_340]
                require mem[_340] <= test266151307()
                require _340 + mem[_340] + 31 < _340 + return_data.size
                _349 = mem[_340 + mem[_340]]
                if mem[_340 + mem[_340]] > test266151307():
                    revert with 'NH{q', 65
                if _340 + ceil32(return_data.size) + ceil32(ceil32(mem[_340 + mem[_340]])) + 1 > test266151307() or ceil32(ceil32(mem[_340 + mem[_340]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _340 + ceil32(return_data.size) + ceil32(ceil32(mem[_340 + mem[_340]])) + 1
                mem[_340 + ceil32(return_data.size)] = _349
                require _345 + _349 + 32 <= return_data.size
                s = 0
                while s < _349:
                    mem[_340 + ceil32(return_data.size) + s + 32] = mem[_340 + _345 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_349) <= _349:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _497 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_497] == mem[_497 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _513 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _519 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_497 + 31 len 1]
                    mem[_519 + 32] = _340 + ceil32(return_data.size)
                    mem[_513] = _171 + ceil32(return_data.size)
                else:
                    mem[_340 + ceil32(return_data.size) + _349 + 32] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_500] == mem[_500 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _521 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _529 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_500 + 31 len 1]
                    mem[_529 + 32] = _340 + ceil32(return_data.size)
                    mem[_521] = _171 + ceil32(return_data.size)
            else:
                mem[_171 + ceil32(return_data.size) + _179 + 32] = 0
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _342 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _346 = mem[_342]
                require mem[_342] <= test266151307()
                require _342 + mem[_342] + 31 < _342 + return_data.size
                _351 = mem[_342 + mem[_342]]
                if mem[_342 + mem[_342]] > test266151307():
                    revert with 'NH{q', 65
                if _342 + ceil32(return_data.size) + ceil32(ceil32(mem[_342 + mem[_342]])) + 1 > test266151307() or ceil32(ceil32(mem[_342 + mem[_342]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _342 + ceil32(return_data.size) + ceil32(ceil32(mem[_342 + mem[_342]])) + 1
                mem[_342 + ceil32(return_data.size)] = _351
                require _346 + _351 + 32 <= return_data.size
                s = 0
                while s < _351:
                    mem[_342 + ceil32(return_data.size) + s + 32] = mem[_342 + _346 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_351) <= _351:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _498 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_498] == mem[_498 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _516 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _523 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_498 + 31 len 1]
                    mem[_523 + 32] = _342 + ceil32(return_data.size)
                    mem[_516] = _171 + ceil32(return_data.size)
                else:
                    mem[_342 + ceil32(return_data.size) + _351 + 32] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_501] == mem[_501 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _525 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _532 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_501 + 31 len 1]
                    mem[_532 + 32] = _342 + ceil32(return_data.size)
                    mem[_525] = _171 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _160 = mem[64]
        mem[mem[64]] = 32
        _161 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _161:
            mem[u] = t + -_160 - 64
            _317 = mem[s]
            _320 = mem[mem[s]]
            mem[t] = 96
            _321 = mem[_320]
            mem[t + 96] = mem[_320]
            v = 0
            while v < _321:
                mem[t + v + 128] = mem[_320 + v + 32]
                v = v + 32
                continue 
            if ceil32(_321) <= _321:
                _470 = mem[_317 + 32]
                mem[t + 32] = ceil32(_321) + 128
                _472 = mem[_470]
                mem[t + ceil32(_321) + 128] = mem[_470]
                v = 0
                while v < _472:
                    mem[t + ceil32(_321) + v + 160] = mem[_470 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_472) > _472:
                    mem[t + ceil32(_321) + _472 + 160] = 0
                mem[t + 64] = mem[_317 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_321) + ceil32(_472) + 160
                u = u + 32
                continue 
            mem[t + _321 + 128] = 0
            _471 = mem[_317 + 32]
            mem[t + 32] = ceil32(_321) + 128
            _473 = mem[_471]
            mem[t + ceil32(_321) + 128] = mem[_471]
            v = 0
            while v < _473:
                mem[t + ceil32(_321) + v + 160] = mem[_471 + v + 32]
                v = v + 32
                continue 
            if ceil32(_473) > _473:
                mem[t + ceil32(_321) + _473 + 160] = 0
            mem[t + 64] = mem[_317 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_321) + ceil32(_473) + 160
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128] = 96
        mem[(32 * arg1.length) + 160] = 96
        mem[(32 * arg1.length) + 192] = 0
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg1.length) + 128] = 96
            mem[(32 * arg1.length) + 160] = 96
            mem[(32 * arg1.length) + 192] = 0
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _482 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _486 = mem[_482]
            require mem[_482] <= test266151307()
            require _482 + mem[_482] + 31 < _482 + return_data.size
            _499 = mem[_482 + mem[_482]]
            if mem[_482 + mem[_482]] > test266151307():
                revert with 'NH{q', 65
            if _482 + ceil32(return_data.size) + ceil32(ceil32(mem[_482 + mem[_482]])) + 1 > test266151307() or ceil32(ceil32(mem[_482 + mem[_482]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _482 + ceil32(return_data.size) + ceil32(ceil32(mem[_482 + mem[_482]])) + 1
            mem[_482 + ceil32(return_data.size)] = _499
            require _486 + _499 + 32 <= return_data.size
            s = 0
            while s < _499:
                mem[_482 + ceil32(return_data.size) + s + 32] = mem[_482 + _486 + s + 32]
                s = s + 32
                continue 
            if ceil32(_499) <= _499:
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _620 = mem[_616]
                require mem[_616] <= test266151307()
                require _616 + mem[_616] + 31 < _616 + return_data.size
                _622 = mem[_616 + mem[_616]]
                if mem[_616 + mem[_616]] > test266151307():
                    revert with 'NH{q', 65
                if _616 + ceil32(return_data.size) + ceil32(ceil32(mem[_616 + mem[_616]])) + 1 > test266151307() or ceil32(ceil32(mem[_616 + mem[_616]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _616 + ceil32(return_data.size) + ceil32(ceil32(mem[_616 + mem[_616]])) + 1
                mem[_616 + ceil32(return_data.size)] = _622
                require _620 + _622 + 32 <= return_data.size
                s = 0
                while s < _622:
                    mem[_616 + ceil32(return_data.size) + s + 32] = mem[_616 + _620 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_622) <= _622:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _693 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_693] == mem[_693 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _703 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _709 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_693 + 31 len 1]
                    mem[_709 + 32] = _616 + ceil32(return_data.size)
                    mem[_703] = _482 + ceil32(return_data.size)
                else:
                    mem[_616 + ceil32(return_data.size) + _622 + 32] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _695 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_695] == mem[_695 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _711 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _718 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_695 + 31 len 1]
                    mem[_718 + 32] = _616 + ceil32(return_data.size)
                    mem[_711] = _482 + ceil32(return_data.size)
            else:
                mem[_482 + ceil32(return_data.size) + _499 + 32] = 0
                if idx >= arg1.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).symbol() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _618 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _621 = mem[_618]
                require mem[_618] <= test266151307()
                require _618 + mem[_618] + 31 < _618 + return_data.size
                _624 = mem[_618 + mem[_618]]
                if mem[_618 + mem[_618]] > test266151307():
                    revert with 'NH{q', 65
                if _618 + ceil32(return_data.size) + ceil32(ceil32(mem[_618 + mem[_618]])) + 1 > test266151307() or ceil32(ceil32(mem[_618 + mem[_618]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _618 + ceil32(return_data.size) + ceil32(ceil32(mem[_618 + mem[_618]])) + 1
                mem[_618 + ceil32(return_data.size)] = _624
                require _621 + _624 + 32 <= return_data.size
                s = 0
                while s < _624:
                    mem[_618 + ceil32(return_data.size) + s + 32] = mem[_618 + _621 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_624) <= _624:
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _694 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_694] == mem[_694 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _706 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _713 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_694 + 31 len 1]
                    mem[_713 + 32] = _618 + ceil32(return_data.size)
                    mem[_706] = _482 + ceil32(return_data.size)
                else:
                    mem[_618 + ceil32(return_data.size) + _624 + 32] = 0
                    if idx >= arg1.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _696 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_696] == mem[_696 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _715 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _721 = mem[(32 * idx) + 128]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = mem[_696 + 31 len 1]
                    mem[_721 + 32] = _618 + ceil32(return_data.size)
                    mem[_715] = _482 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _468 = mem[64]
        mem[mem[64]] = 32
        _469 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _469:
            mem[u] = t + -_468 - 64
            _598 = mem[s]
            _601 = mem[mem[s]]
            mem[t] = 96
            _602 = mem[_601]
            mem[t + 96] = mem[_601]
            v = 0
            while v < _602:
                mem[t + v + 128] = mem[_601 + v + 32]
                v = v + 32
                continue 
            if ceil32(_602) <= _602:
                _675 = mem[_598 + 32]
                mem[t + 32] = ceil32(_602) + 128
                _677 = mem[_675]
                mem[t + ceil32(_602) + 128] = mem[_675]
                v = 0
                while v < _677:
                    mem[t + ceil32(_602) + v + 160] = mem[_675 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_677) > _677:
                    mem[t + ceil32(_602) + _677 + 160] = 0
                mem[t + 64] = mem[_598 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_602) + ceil32(_677) + 160
                u = u + 32
                continue 
            mem[t + _602 + 128] = 0
            _676 = mem[_598 + 32]
            mem[t + 32] = ceil32(_602) + 128
            _678 = mem[_676]
            mem[t + ceil32(_602) + 128] = mem[_676]
            v = 0
            while v < _678:
                mem[t + ceil32(_602) + v + 160] = mem[_676 + v + 32]
                v = v + 32
                continue 
            if ceil32(_678) > _678:
                mem[t + ceil32(_602) + _678 + 160] = 0
            mem[t + 64] = mem[_598 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_602) + ceil32(_678) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
