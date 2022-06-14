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
    require arg1.length <= test266151307()
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
            require idx < mem[96]
            _61 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _63 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_47 + 92 len 4]
            mem[_63 + 32] = Mask(112, 0, _56)
            mem[_61] = Mask(112, 0, _49)
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
            require idx < mem[96]
            _106 = mem[(32 * idx) + 128]
            require idx < mem[96]
            _108 = mem[(32 * idx) + 128]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_100 + 92 len 4]
            mem[_108 + 32] = Mask(112, 0, _103)
            mem[_106] = Mask(112, 0, _101)
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
        require arg3 - arg2 <= test266151307()
        mem[ceil32(return_data.size) + 96] = arg3 - arg2
        mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _124 = mem[_119]
                require mem[_119] == mem[_119 + 12 len 20]
                require ext_code.size(mem[_119 + 12 len 20])
                staticcall mem[_119 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_145] == mem[_145 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_145 + 12 len 20]
                require ext_code.size(address(_124))
                staticcall address(_124).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_167] == mem[_167 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_167 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_124)
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _111 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _111:
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
            mem[var50001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
            s = var50001
            idx = var50002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg3 - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _266 = mem[_261]
                require mem[_261] == mem[_261 + 12 len 20]
                require ext_code.size(mem[_261 + 12 len 20])
                staticcall mem[_261 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_277] == mem[_277 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_277 + 12 len 20]
                require ext_code.size(address(_266))
                staticcall address(_266).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == mem[_289 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_289 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_266)
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _257 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _257:
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
        require ext_call.return_data[0] - arg2 <= test266151307()
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
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
                _146 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_146] == mem[_146 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_146 + 12 len 20]
                require ext_code.size(address(_127))
                staticcall address(_127).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_168] == mem[_168 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_168 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_127)
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _112 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _112:
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
            mem[var51001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
            s = var51001
            idx = var51002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128 len 96] = call.data[calldata.size len 96]
                mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ext_call.return_data[0] - arg2:
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _268 = mem[_262]
                require mem[_262] == mem[_262 + 12 len 20]
                require ext_code.size(mem[_262 + 12 len 20])
                staticcall mem[_262 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_278] == mem[_278 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128]] = mem[_278 + 12 len 20]
                require ext_code.size(address(_268))
                staticcall address(_268).0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 32] = mem[_290 + 12 len 20]
                require idx < mem[ceil32(return_data.size) + 96]
                mem[mem[(32 * idx) + ceil32(return_data.size) + 128] + 64] = address(_268)
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _258 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _258:
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



}
