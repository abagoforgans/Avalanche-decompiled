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
            _320 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_320))
            staticcall address(_320).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _326 = mem[_323]
            require mem[_323] <= test266151307()
            require _323 + mem[_323] + 31 < _323 + return_data.size
            _332 = mem[_323 + mem[_323]]
            if mem[_323 + mem[_323]] > test266151307():
                revert with 'NH{q', 65
            if _323 + ceil32(return_data.size) + ceil32(ceil32(mem[_323 + mem[_323]])) + 1 > test266151307() or ceil32(ceil32(mem[_323 + mem[_323]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _323 + ceil32(return_data.size) + ceil32(ceil32(mem[_323 + mem[_323]])) + 1
            mem[_323 + ceil32(return_data.size)] = _332
            require _326 + _332 + 32 <= return_data.size
            s = 0
            while s < _332:
                mem[_323 + ceil32(return_data.size) + s + 32] = mem[_323 + _326 + s + 32]
                s = s + 32
                continue 
            if ceil32(_332) <= _332:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = _323 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_320))
                staticcall address(_320).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _492 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _497 = mem[_492]
                require mem[_492] <= test266151307()
                require _492 + mem[_492] + 31 < _492 + return_data.size
                _500 = mem[_492 + mem[_492]]
                if mem[_492 + mem[_492]] > test266151307():
                    revert with 'NH{q', 65
                if _492 + ceil32(return_data.size) + ceil32(ceil32(mem[_492 + mem[_492]])) + 1 > test266151307() or ceil32(ceil32(mem[_492 + mem[_492]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _492 + ceil32(return_data.size) + ceil32(ceil32(mem[_492 + mem[_492]])) + 1
                mem[_492 + ceil32(return_data.size)] = _500
                require _497 + _500 + 32 <= return_data.size
                s = 0
                while s < _500:
                    mem[_492 + ceil32(return_data.size) + s + 32] = mem[_492 + _497 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_500) <= _500:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _492 + ceil32(return_data.size)
                    require ext_code.size(address(_320))
                    staticcall address(_320).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_647] == mem[_647 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_647 + 31 len 1]
                else:
                    mem[_492 + ceil32(return_data.size) + _500 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _492 + ceil32(return_data.size)
                    require ext_code.size(address(_320))
                    staticcall address(_320).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _650 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_650] == mem[_650 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_650 + 31 len 1]
            else:
                mem[_323 + ceil32(return_data.size) + _332 + 32] = 0
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = _323 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_320))
                staticcall address(_320).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _494 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _498 = mem[_494]
                require mem[_494] <= test266151307()
                require _494 + mem[_494] + 31 < _494 + return_data.size
                _501 = mem[_494 + mem[_494]]
                if mem[_494 + mem[_494]] > test266151307():
                    revert with 'NH{q', 65
                if _494 + ceil32(return_data.size) + ceil32(ceil32(mem[_494 + mem[_494]])) + 1 > test266151307() or ceil32(ceil32(mem[_494 + mem[_494]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _494 + ceil32(return_data.size) + ceil32(ceil32(mem[_494 + mem[_494]])) + 1
                mem[_494 + ceil32(return_data.size)] = _501
                require _498 + _501 + 32 <= return_data.size
                s = 0
                while s < _501:
                    mem[_494 + ceil32(return_data.size) + s + 32] = mem[_494 + _498 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_501) <= _501:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _494 + ceil32(return_data.size)
                    require ext_code.size(address(_320))
                    staticcall address(_320).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _648 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_648] == mem[_648 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_648 + 31 len 1]
                else:
                    mem[_494 + ceil32(return_data.size) + _501 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _494 + ceil32(return_data.size)
                    require ext_code.size(address(_320))
                    staticcall address(_320).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_651] == mem[_651 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_651 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _319 = mem[64]
        mem[mem[64]] = 32
        _324 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _324) + 64
        u = mem[64] + 64
        while idx < _324:
            mem[u] = t + -_319 - 64
            _472 = mem[s]
            _475 = mem[mem[s]]
            mem[t] = 96
            _477 = mem[_475]
            mem[t + 96] = mem[_475]
            v = 0
            while v < _477:
                mem[t + v + 128] = mem[_475 + v + 32]
                v = v + 32
                continue 
            if ceil32(_477) <= _477:
                _626 = mem[_472 + 32]
                mem[t + 32] = ceil32(_477) + 128
                _639 = mem[_626]
                mem[t + ceil32(_477) + 128] = mem[_626]
                v = 0
                while v < _639:
                    mem[t + ceil32(_477) + v + 160] = mem[_626 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_639) > _639:
                    mem[t + ceil32(_477) + _639 + 160] = 0
                mem[t + 64] = mem[_472 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_477) + ceil32(_639) + 160
                u = u + 32
                continue 
            mem[t + _477 + 128] = 0
            _630 = mem[_472 + 32]
            mem[t + 32] = ceil32(_477) + 128
            _646 = mem[_630]
            mem[t + ceil32(_477) + 128] = mem[_630]
            v = 0
            while v < _646:
                mem[t + ceil32(_477) + v + 160] = mem[_630 + v + 32]
                v = v + 32
                continue 
            if ceil32(_646) > _646:
                mem[t + ceil32(_477) + _646 + 160] = 0
            mem[t + 64] = mem[_472 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_477) + ceil32(_646) + 160
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
        _615 = mem[96]
        idx = 0
        while idx < _615:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _621 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_621))
            staticcall address(_621).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _624 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _629 = mem[_624]
            require mem[_624] <= test266151307()
            require _624 + mem[_624] + 31 < _624 + return_data.size
            _649 = mem[_624 + mem[_624]]
            if mem[_624 + mem[_624]] > test266151307():
                revert with 'NH{q', 65
            if _624 + ceil32(return_data.size) + ceil32(ceil32(mem[_624 + mem[_624]])) + 1 > test266151307() or ceil32(ceil32(mem[_624 + mem[_624]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _624 + ceil32(return_data.size) + ceil32(ceil32(mem[_624 + mem[_624]])) + 1
            mem[_624 + ceil32(return_data.size)] = _649
            require _629 + _649 + 32 <= return_data.size
            s = 0
            while s < _649:
                mem[_624 + ceil32(return_data.size) + s + 32] = mem[_624 + _629 + s + 32]
                _615 = mem[96]
                s = s + 32
                continue 
            if ceil32(_649) <= _649:
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = _624 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_621))
                staticcall address(_621).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _756 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _759 = mem[_756]
                require mem[_756] <= test266151307()
                require _756 + mem[_756] + 31 < _756 + return_data.size
                _761 = mem[_756 + mem[_756]]
                if mem[_756 + mem[_756]] > test266151307():
                    revert with 'NH{q', 65
                if _756 + ceil32(return_data.size) + ceil32(ceil32(mem[_756 + mem[_756]])) + 1 > test266151307() or ceil32(ceil32(mem[_756 + mem[_756]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _756 + ceil32(return_data.size) + ceil32(ceil32(mem[_756 + mem[_756]])) + 1
                mem[_756 + ceil32(return_data.size)] = _761
                require _759 + _761 + 32 <= return_data.size
                s = 0
                while s < _761:
                    mem[_756 + ceil32(return_data.size) + s + 32] = mem[_756 + _759 + s + 32]
                    _615 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_761) <= _761:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _756 + ceil32(return_data.size)
                    require ext_code.size(address(_621))
                    staticcall address(_621).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _832 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_832] == mem[_832 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_832 + 31 len 1]
                else:
                    mem[_756 + ceil32(return_data.size) + _761 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _756 + ceil32(return_data.size)
                    require ext_code.size(address(_621))
                    staticcall address(_621).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _834 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_834] == mem[_834 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_834 + 31 len 1]
            else:
                mem[_624 + ceil32(return_data.size) + _649 + 32] = 0
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]] = _624 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_621))
                staticcall address(_621).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _757 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _760 = mem[_757]
                require mem[_757] <= test266151307()
                require _757 + mem[_757] + 31 < _757 + return_data.size
                _762 = mem[_757 + mem[_757]]
                if mem[_757 + mem[_757]] > test266151307():
                    revert with 'NH{q', 65
                if _757 + ceil32(return_data.size) + ceil32(ceil32(mem[_757 + mem[_757]])) + 1 > test266151307() or ceil32(ceil32(mem[_757 + mem[_757]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _757 + ceil32(return_data.size) + ceil32(ceil32(mem[_757 + mem[_757]])) + 1
                mem[_757 + ceil32(return_data.size)] = _762
                require _760 + _762 + 32 <= return_data.size
                s = 0
                while s < _762:
                    mem[_757 + ceil32(return_data.size) + s + 32] = mem[_757 + _760 + s + 32]
                    _615 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_762) <= _762:
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _757 + ceil32(return_data.size)
                    require ext_code.size(address(_621))
                    staticcall address(_621).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _833 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_833] == mem[_833 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_833 + 31 len 1]
                else:
                    mem[_757 + ceil32(return_data.size) + _762 + 32] = 0
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32] = _757 + ceil32(return_data.size)
                    require ext_code.size(address(_621))
                    staticcall address(_621).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _835 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_835] == mem[_835 + 31 len 1]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 64] = mem[_835 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            _615 = mem[96]
            idx = idx + 1
            continue 
        _620 = mem[64]
        mem[mem[64]] = 32
        _625 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + (32 * _625) + 64
        u = mem[64] + 64
        while idx < _625:
            mem[u] = t + -_620 - 64
            _739 = mem[s]
            _742 = mem[mem[s]]
            mem[t] = 96
            _743 = mem[_742]
            mem[t + 96] = mem[_742]
            v = 0
            while v < _743:
                mem[t + v + 128] = mem[_742 + v + 32]
                v = v + 32
                continue 
            if ceil32(_743) <= _743:
                _812 = mem[_739 + 32]
                mem[t + 32] = ceil32(_743) + 128
                _824 = mem[_812]
                mem[t + ceil32(_743) + 128] = mem[_812]
                v = 0
                while v < _824:
                    mem[t + ceil32(_743) + v + 160] = mem[_812 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_824) > _824:
                    mem[t + ceil32(_743) + _824 + 160] = 0
                mem[t + 64] = mem[_739 + 95 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_743) + ceil32(_824) + 160
                u = u + 32
                continue 
            mem[t + _743 + 128] = 0
            _815 = mem[_739 + 32]
            mem[t + 32] = ceil32(_743) + 128
            _831 = mem[_815]
            mem[t + ceil32(_743) + 128] = mem[_815]
            v = 0
            while v < _831:
                mem[t + ceil32(_743) + v + 160] = mem[_815 + v + 32]
                v = v + 32
                continue 
            if ceil32(_831) > _831:
                mem[t + ceil32(_743) + _831 + 160] = 0
            mem[t + 64] = mem[_739 + 95 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_743) + ceil32(_831) + 160
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
