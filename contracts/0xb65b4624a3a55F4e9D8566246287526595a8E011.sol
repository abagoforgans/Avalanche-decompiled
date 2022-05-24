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
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _46 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _49 = mem[_46]
            require mem[_46] == mem[_46 + 18 len 14]
            _55 = mem[_46 + 32]
            require mem[_46 + 32] == mem[_46 + 50 len 14]
            require mem[_46 + 64] == mem[_46 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _61 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _63 = mem[(32 * idx) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128] + 64] = mem[_46 + 92 len 4]
            mem[_63 + 32] = Mask(112, 0, _55)
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
            mem[var56001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = var56001
            idx = var56002
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
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _130 = mem[_126]
                require mem[_126] == mem[_126 + 12 len 20]
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
                staticcall address(_130).token1() with:
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
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_130)
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
            mem[var57001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var57001
            idx = var57002
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

function sub_f2fcd8ed(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _180 = mem[_179]
            require mem[_179] <= test266151307()
            require _179 + mem[_179] + 31 < _179 + return_data.size
            _186 = mem[_179 + mem[_179]]
            if mem[_179 + mem[_179]] > test266151307():
                revert with 'NH{q', 65
            if _179 + ceil32(return_data.size) + ceil32(ceil32(mem[_179 + mem[_179]])) + 1 > test266151307() or ceil32(ceil32(mem[_179 + mem[_179]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _179 + ceil32(return_data.size) + ceil32(ceil32(mem[_179 + mem[_179]])) + 1
            mem[_179 + ceil32(return_data.size)] = _186
            require _180 + _186 + 32 <= return_data.size
            s = 0
            while s < _186:
                mem[_179 + ceil32(return_data.size) + s + 32] = mem[_179 + _180 + s + 32]
                s = s + 32
                continue 
            if ceil32(_186) <= _186:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = _179 + ceil32(return_data.size)
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _333 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _339 = mem[_333]
                require mem[_333] <= test266151307()
                require _333 + mem[_333] + 31 < _333 + return_data.size
                _344 = mem[_333 + mem[_333]]
                if mem[_333 + mem[_333]] > test266151307():
                    revert with 'NH{q', 65
                if _333 + ceil32(return_data.size) + ceil32(ceil32(mem[_333 + mem[_333]])) + 1 > test266151307() or ceil32(ceil32(mem[_333 + mem[_333]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _333 + ceil32(return_data.size) + ceil32(ceil32(mem[_333 + mem[_333]])) + 1
                mem[_333 + ceil32(return_data.size)] = _344
                require _339 + _344 + 32 <= return_data.size
                s = 0
                while s < _344:
                    mem[_333 + ceil32(return_data.size) + s + 32] = mem[_333 + _339 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_344) <= _344:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _333 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _490 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_490] == mem[_490 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_490 + 31 len 1]
                else:
                    mem[_333 + ceil32(return_data.size) + _344 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _333 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _496 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_496] == mem[_496 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_496 + 31 len 1]
            else:
                mem[_179 + ceil32(return_data.size) + _186 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = _179 + ceil32(return_data.size)
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _337 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _341 = mem[_337]
                require mem[_337] <= test266151307()
                require _337 + mem[_337] + 31 < _337 + return_data.size
                _346 = mem[_337 + mem[_337]]
                if mem[_337 + mem[_337]] > test266151307():
                    revert with 'NH{q', 65
                if _337 + ceil32(return_data.size) + ceil32(ceil32(mem[_337 + mem[_337]])) + 1 > test266151307() or ceil32(ceil32(mem[_337 + mem[_337]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _337 + ceil32(return_data.size) + ceil32(ceil32(mem[_337 + mem[_337]])) + 1
                mem[_337 + ceil32(return_data.size)] = _346
                require _341 + _346 + 32 <= return_data.size
                s = 0
                while s < _346:
                    mem[_337 + ceil32(return_data.size) + s + 32] = mem[_337 + _341 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_346) <= _346:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _337 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _493 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_493] == mem[_493 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_493 + 31 len 1]
                else:
                    mem[_337 + ceil32(return_data.size) + _346 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _337 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
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
                    mem[mem[(32 * idx) + 128] + 96] = mem[_497 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 32
        _159 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _159:
            mem[u] = t + -_158 - 64
            _313 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _322 = mem[_313 + 32]
            mem[t + 32] = 128
            _324 = mem[_322]
            mem[t + 128] = mem[_322]
            v = 0
            while v < _324:
                mem[t + v + 160] = mem[_322 + v + 32]
                v = v + 32
                continue 
            if ceil32(_324) <= _324:
                _462 = mem[_313 + 64]
                mem[t + 64] = ceil32(_324) + 160
                _470 = mem[_462]
                mem[t + ceil32(_324) + 160] = mem[_462]
                v = 0
                while v < _470:
                    mem[t + ceil32(_324) + v + 192] = mem[_462 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_470) > _470:
                    mem[t + ceil32(_324) + _470 + 192] = 0
                mem[t + 96] = mem[_313 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_324) + ceil32(_470) + 192
                u = u + 32
                continue 
            mem[t + _324 + 160] = 0
            _465 = mem[_313 + 64]
            mem[t + 64] = ceil32(_324) + 160
            _473 = mem[_465]
            mem[t + ceil32(_324) + 160] = mem[_465]
            v = 0
            while v < _473:
                mem[t + ceil32(_324) + v + 192] = mem[_465 + v + 32]
                v = v + 32
                continue 
            if ceil32(_473) > _473:
                mem[t + ceil32(_324) + _473 + 192] = 0
            mem[t + 96] = mem[_313 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_324) + ceil32(_473) + 192
            u = u + 32
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 256
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 96
        mem[(32 * ('cd', 4).length) + 192] = 96
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[var17001] = (32 * ('cd', 4).length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 96
            mem[(32 * ('cd', 4).length) + 192] = 96
            mem[(32 * ('cd', 4).length) + 224] = 0
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _506 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _509 = mem[_506]
            require mem[_506] <= test266151307()
            require _506 + mem[_506] + 31 < _506 + return_data.size
            _518 = mem[_506 + mem[_506]]
            if mem[_506 + mem[_506]] > test266151307():
                revert with 'NH{q', 65
            if _506 + ceil32(return_data.size) + ceil32(ceil32(mem[_506 + mem[_506]])) + 1 > test266151307() or ceil32(ceil32(mem[_506 + mem[_506]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _506 + ceil32(return_data.size) + ceil32(ceil32(mem[_506 + mem[_506]])) + 1
            mem[_506 + ceil32(return_data.size)] = _518
            require _509 + _518 + 32 <= return_data.size
            s = 0
            while s < _518:
                mem[_506 + ceil32(return_data.size) + s + 32] = mem[_506 + _509 + s + 32]
                s = s + 32
                continue 
            if ceil32(_518) <= _518:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = _506 + ceil32(return_data.size)
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _598 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _604 = mem[_598]
                require mem[_598] <= test266151307()
                require _598 + mem[_598] + 31 < _598 + return_data.size
                _608 = mem[_598 + mem[_598]]
                if mem[_598 + mem[_598]] > test266151307():
                    revert with 'NH{q', 65
                if _598 + ceil32(return_data.size) + ceil32(ceil32(mem[_598 + mem[_598]])) + 1 > test266151307() or ceil32(ceil32(mem[_598 + mem[_598]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _598 + ceil32(return_data.size) + ceil32(ceil32(mem[_598 + mem[_598]])) + 1
                mem[_598 + ceil32(return_data.size)] = _608
                require _604 + _608 + 32 <= return_data.size
                s = 0
                while s < _608:
                    mem[_598 + ceil32(return_data.size) + s + 32] = mem[_598 + _604 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_608) <= _608:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _598 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_677] == mem[_677 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_677 + 31 len 1]
                else:
                    mem[_598 + ceil32(return_data.size) + _608 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _598 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_683] == mem[_683 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_683 + 31 len 1]
            else:
                mem[_506 + ceil32(return_data.size) + _518 + 32] = 0
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[mem[(32 * idx) + 128] + 32] = _506 + ceil32(return_data.size)
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _602 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _606 = mem[_602]
                require mem[_602] <= test266151307()
                require _602 + mem[_602] + 31 < _602 + return_data.size
                _609 = mem[_602 + mem[_602]]
                if mem[_602 + mem[_602]] > test266151307():
                    revert with 'NH{q', 65
                if _602 + ceil32(return_data.size) + ceil32(ceil32(mem[_602 + mem[_602]])) + 1 > test266151307() or ceil32(ceil32(mem[_602 + mem[_602]])) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _602 + ceil32(return_data.size) + ceil32(ceil32(mem[_602 + mem[_602]])) + 1
                mem[_602 + ceil32(return_data.size)] = _609
                require _606 + _609 + 32 <= return_data.size
                s = 0
                while s < _609:
                    mem[_602 + ceil32(return_data.size) + s + 32] = mem[_602 + _606 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_609) <= _609:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _602 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_680] == mem[_680 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_680 + 31 len 1]
                else:
                    mem[_602 + ceil32(return_data.size) + _609 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 64] = _602 + ceil32(return_data.size)
                    if idx >= ('cd', 4).length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                    staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _684 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_684] == mem[_684 + 31 len 1]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[(32 * idx) + 128] + 96] = mem[_684 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _460 = mem[64]
        mem[mem[64]] = 32
        _461 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _461:
            mem[u] = t + -_460 - 64
            _581 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _593 = mem[_581 + 32]
            mem[t + 32] = 128
            _594 = mem[_593]
            mem[t + 128] = mem[_593]
            v = 0
            while v < _594:
                mem[t + v + 160] = mem[_593 + v + 32]
                v = v + 32
                continue 
            if ceil32(_594) <= _594:
                _655 = mem[_581 + 64]
                mem[t + 64] = ceil32(_594) + 160
                _663 = mem[_655]
                mem[t + ceil32(_594) + 160] = mem[_655]
                v = 0
                while v < _663:
                    mem[t + ceil32(_594) + v + 192] = mem[_655 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_663) > _663:
                    mem[t + ceil32(_594) + _663 + 192] = 0
                mem[t + 96] = mem[_581 + 127 len 1]
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_594) + ceil32(_663) + 192
                u = u + 32
                continue 
            mem[t + _594 + 160] = 0
            _658 = mem[_581 + 64]
            mem[t + 64] = ceil32(_594) + 160
            _666 = mem[_658]
            mem[t + ceil32(_594) + 160] = mem[_658]
            v = 0
            while v < _666:
                mem[t + ceil32(_594) + v + 192] = mem[_658 + v + 32]
                v = v + 32
                continue 
            if ceil32(_666) > _666:
                mem[t + ceil32(_594) + _666 + 192] = 0
            mem[t + 96] = mem[_581 + 127 len 1]
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_594) + ceil32(_666) + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
