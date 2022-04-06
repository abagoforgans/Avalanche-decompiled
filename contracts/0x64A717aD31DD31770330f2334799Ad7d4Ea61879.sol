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
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 18 len 14]
            _56 = mem[_47 + 32]
            require mem[_47 + 32] == mem[_47 + 50 len 14]
            require mem[_47 + 64] == mem[_47 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _61 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _63 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_63 + 32] = Mask(112, 0, _56)
            mem[_61] = Mask(112, 0, _49)
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
            while u < 3:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = (32 * arg1.length) + 224
        mem[(32 * arg1.length) + 128 len 96] = call.data[calldata.size len 96]
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
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
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _101 = mem[_100]
            require mem[_100] == mem[_100 + 18 len 14]
            _103 = mem[_100 + 32]
            require mem[_100 + 32] == mem[_100 + 50 len 14]
            require mem[_100 + 64] == mem[_100 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _106 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _108 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_100 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _101)
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
            while u < 3:
                mem[w] = mem[v]
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

function getPairsByIndexRange(address arg1, uint256 arg2, uint256 arg3) payable {
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
                staticcall arg1.allPairs(uint256 rg1) with:
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
                staticcall arg1.allPairs(uint256 rg1) with:
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
                staticcall arg1.allPairs(uint256 rg1) with:
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
                staticcall arg1.allPairs(uint256 rg1) with:
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

function sub_f6b65b8c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
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
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _260 = mem[(32 * idx) + 128]
            _261 = mem[64]
            mem[64] = mem[64] + 96
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_260))
            staticcall address(_260).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _264 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _267 = mem[_264]
            require mem[_264] <= test266151307()
            require _264 + mem[_264] + 31 < _264 + return_data.size
            _274 = mem[_264 + mem[_264]]
            if mem[_264 + mem[_264]] > test266151307():
                revert with 'NH{q', 65
            if _264 + ceil32(return_data.size) + ceil32(ceil32(mem[_264 + mem[_264]])) + 1 > test266151307() or ceil32(ceil32(mem[_264 + mem[_264]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _264 + ceil32(return_data.size) + ceil32(ceil32(mem[_264 + mem[_264]])) + 1
            mem[_264 + ceil32(return_data.size)] = _274
            require _267 + _274 + 32 <= return_data.size
            s = 0
            while s < _274:
                mem[_264 + ceil32(return_data.size) + s + 32] = mem[_264 + _267 + s + 32]
                s = s + 32
                continue 
            if ceil32(_274) <= _274:
                mem[_261] = _264 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_260))
                staticcall address(_260).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _402 = mem[_398]
                require mem[_398] <= test266151307()
                require _398 + mem[_398] + 31 < _398 + return_data.size
                _406 = mem[_398 + mem[_398]]
                if mem[_398 + mem[_398]] > test266151307():
                    revert with 'NH{q', 65
                if _398 + ceil32(return_data.size) + ceil32(ceil32(mem[_398 + mem[_398]])) + 1 > test266151307() or ceil32(ceil32(mem[_398 + mem[_398]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _398 + ceil32(return_data.size) + ceil32(ceil32(mem[_398 + mem[_398]])) + 1
                mem[_398 + ceil32(return_data.size)] = _406
                require _402 + _406 + 32 <= return_data.size
                s = 0
                while s < _406:
                    mem[_398 + ceil32(return_data.size) + s + 32] = mem[_398 + _402 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_406) <= _406:
                    mem[_261 + 32] = _398 + ceil32(return_data.size)
                    require ext_code.size(address(_260))
                    staticcall address(_260).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] == mem[_518 + 31 len 1]
                    mem[_261 + 64] = mem[_518 + 31 len 1]
                else:
                    mem[_398 + ceil32(return_data.size) + _406 + 32] = 0
                    mem[_261 + 32] = _398 + ceil32(return_data.size)
                    require ext_code.size(address(_260))
                    staticcall address(_260).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _521 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_521] == mem[_521 + 31 len 1]
                    mem[_261 + 64] = mem[_521 + 31 len 1]
            else:
                mem[_264 + ceil32(return_data.size) + _274 + 32] = 0
                mem[_261] = _264 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_260))
                staticcall address(_260).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _405 = mem[_400]
                require mem[_400] <= test266151307()
                require _400 + mem[_400] + 31 < _400 + return_data.size
                _408 = mem[_400 + mem[_400]]
                if mem[_400 + mem[_400]] > test266151307():
                    revert with 'NH{q', 65
                if _400 + ceil32(return_data.size) + ceil32(ceil32(mem[_400 + mem[_400]])) + 1 > test266151307() or ceil32(ceil32(mem[_400 + mem[_400]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _400 + ceil32(return_data.size) + ceil32(ceil32(mem[_400 + mem[_400]])) + 1
                mem[_400 + ceil32(return_data.size)] = _408
                require _405 + _408 + 32 <= return_data.size
                s = 0
                while s < _408:
                    mem[_400 + ceil32(return_data.size) + s + 32] = mem[_400 + _405 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_408) <= _408:
                    mem[_261 + 32] = _400 + ceil32(return_data.size)
                    require ext_code.size(address(_260))
                    staticcall address(_260).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _519 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_519] == mem[_519 + 31 len 1]
                    mem[_261 + 64] = mem[_519 + 31 len 1]
                else:
                    mem[_400 + ceil32(return_data.size) + _408 + 32] = 0
                    mem[_261 + 32] = _400 + ceil32(return_data.size)
                    require ext_code.size(address(_260))
                    staticcall address(_260).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _522 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_522] == mem[_522 + 31 len 1]
                    mem[_261 + 64] = mem[_522 + 31 len 1]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _261
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _259 = mem[64]
        mem[mem[64]] = 32
        _265 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _265) + 64
        u = mem[64] + 64
        while idx < _265:
            mem[u] = t + -_259 - 64
            _382 = mem[s]
            _385 = mem[mem[s]]
            mem[t] = 96
            _387 = mem[_385]
            mem[t + 96] = mem[_385]
            v = 0
            while v < _387:
                mem[t + v + 128] = mem[_385 + v + 32]
                v = v + 32
                continue 
            if ceil32(_387) <= _387:
                _506 = mem[_382 + 32]
                mem[t + 32] = ceil32(_387) + 128
                _517 = mem[_506]
                mem[t + ceil32(_387) + 128] = mem[_506]
                v = 0
                while v < _517:
                    mem[t + ceil32(_387) + v + 160] = mem[_506 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_517) > _517:
                    mem[t + ceil32(_387) + _517 + 160] = 0
                mem[t + 64] = mem[_382 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_387) + ceil32(_517) + 160
                u = u + 32
                continue 
            mem[t + _387 + 128] = 0
            _512 = mem[_382 + 32]
            mem[t + 32] = ceil32(_387) + 128
            _520 = mem[_512]
            mem[t + ceil32(_387) + 128] = mem[_512]
            v = 0
            while v < _520:
                mem[t + ceil32(_387) + v + 160] = mem[_512 + v + 32]
                v = v + 32
                continue 
            if ceil32(_520) > _520:
                mem[t + ceil32(_387) + _520 + 160] = 0
            mem[t + 64] = mem[_382 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_387) + ceil32(_520) + 160
            u = u + 32
            continue 
    else:
        mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 96
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[var33001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 96
            mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
            mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
            s = s + 32
            idx = idx - 1
            continue 
        _494 = mem[96]
        idx = 0
        while idx < _494:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _500 = mem[(32 * idx) + 128]
            _501 = mem[64]
            mem[64] = mem[64] + 96
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_500))
            staticcall address(_500).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _504 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _511 = mem[_504]
            require mem[_504] <= test266151307()
            require _504 + mem[_504] + 31 < _504 + return_data.size
            _523 = mem[_504 + mem[_504]]
            if mem[_504 + mem[_504]] > test266151307():
                revert with 'NH{q', 65
            if _504 + ceil32(return_data.size) + ceil32(ceil32(mem[_504 + mem[_504]])) + 1 > test266151307() or ceil32(ceil32(mem[_504 + mem[_504]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _504 + ceil32(return_data.size) + ceil32(ceil32(mem[_504 + mem[_504]])) + 1
            mem[_504 + ceil32(return_data.size)] = _523
            require _511 + _523 + 32 <= return_data.size
            s = 0
            while s < _523:
                mem[_504 + ceil32(return_data.size) + s + 32] = mem[_504 + _511 + s + 32]
                _494 = mem[96]
                s = s + 32
                continue 
            if ceil32(_523) <= _523:
                mem[_501] = _504 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_500))
                staticcall address(_500).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _604 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _606 = mem[_604]
                require mem[_604] <= test266151307()
                require _604 + mem[_604] + 31 < _604 + return_data.size
                _609 = mem[_604 + mem[_604]]
                if mem[_604 + mem[_604]] > test266151307():
                    revert with 'NH{q', 65
                if _604 + ceil32(return_data.size) + ceil32(ceil32(mem[_604 + mem[_604]])) + 1 > test266151307() or ceil32(ceil32(mem[_604 + mem[_604]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _604 + ceil32(return_data.size) + ceil32(ceil32(mem[_604 + mem[_604]])) + 1
                mem[_604 + ceil32(return_data.size)] = _609
                require _606 + _609 + 32 <= return_data.size
                s = 0
                while s < _609:
                    mem[_604 + ceil32(return_data.size) + s + 32] = mem[_604 + _606 + s + 32]
                    _494 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_609) <= _609:
                    mem[_501 + 32] = _604 + ceil32(return_data.size)
                    require ext_code.size(address(_500))
                    staticcall address(_500).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_659] == mem[_659 + 31 len 1]
                    mem[_501 + 64] = mem[_659 + 31 len 1]
                else:
                    mem[_604 + ceil32(return_data.size) + _609 + 32] = 0
                    mem[_501 + 32] = _604 + ceil32(return_data.size)
                    require ext_code.size(address(_500))
                    staticcall address(_500).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _662 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_662] == mem[_662 + 31 len 1]
                    mem[_501 + 64] = mem[_662 + 31 len 1]
            else:
                mem[_504 + ceil32(return_data.size) + _523 + 32] = 0
                mem[_501] = _504 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_500))
                staticcall address(_500).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _608 = mem[_605]
                require mem[_605] <= test266151307()
                require _605 + mem[_605] + 31 < _605 + return_data.size
                _610 = mem[_605 + mem[_605]]
                if mem[_605 + mem[_605]] > test266151307():
                    revert with 'NH{q', 65
                if _605 + ceil32(return_data.size) + ceil32(ceil32(mem[_605 + mem[_605]])) + 1 > test266151307() or ceil32(ceil32(mem[_605 + mem[_605]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _605 + ceil32(return_data.size) + ceil32(ceil32(mem[_605 + mem[_605]])) + 1
                mem[_605 + ceil32(return_data.size)] = _610
                require _608 + _610 + 32 <= return_data.size
                s = 0
                while s < _610:
                    mem[_605 + ceil32(return_data.size) + s + 32] = mem[_605 + _608 + s + 32]
                    _494 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_610) <= _610:
                    mem[_501 + 32] = _605 + ceil32(return_data.size)
                    require ext_code.size(address(_500))
                    staticcall address(_500).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_660] == mem[_660 + 31 len 1]
                    mem[_501 + 64] = mem[_660 + 31 len 1]
                else:
                    mem[_605 + ceil32(return_data.size) + _610 + 32] = 0
                    mem[_501 + 32] = _605 + ceil32(return_data.size)
                    require ext_code.size(address(_500))
                    staticcall address(_500).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _663 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_663] == mem[_663 + 31 len 1]
                    mem[_501 + 64] = mem[_663 + 31 len 1]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _501
            if idx == -1:
                revert with 'NH{q', 17
            _494 = mem[96]
            idx = idx + 1
            continue 
        _499 = mem[64]
        mem[mem[64]] = 32
        _505 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _505) + 64
        u = mem[64] + 64
        while idx < _505:
            mem[u] = t + -_499 - 64
            _591 = mem[s]
            _594 = mem[mem[s]]
            mem[t] = 96
            _595 = mem[_594]
            mem[t + 96] = mem[_594]
            v = 0
            while v < _595:
                mem[t + v + 128] = mem[_594 + v + 32]
                v = v + 32
                continue 
            if ceil32(_595) <= _595:
                _648 = mem[_591 + 32]
                mem[t + 32] = ceil32(_595) + 128
                _658 = mem[_648]
                mem[t + ceil32(_595) + 128] = mem[_648]
                v = 0
                while v < _658:
                    mem[t + ceil32(_595) + v + 160] = mem[_648 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_658) > _658:
                    mem[t + ceil32(_595) + _658 + 160] = 0
                mem[t + 64] = mem[_591 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_595) + ceil32(_658) + 160
                u = u + 32
                continue 
            mem[t + _595 + 128] = 0
            _653 = mem[_591 + 32]
            mem[t + 32] = ceil32(_595) + 128
            _661 = mem[_653]
            mem[t + ceil32(_595) + 128] = mem[_653]
            v = 0
            while v < _661:
                mem[t + ceil32(_595) + v + 160] = mem[_653 + v + 32]
                v = v + 32
                continue 
            if ceil32(_661) > _661:
                mem[t + ceil32(_595) + _661 + 160] = 0
            mem[t + 64] = mem[_591 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_595) + ceil32(_661) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
