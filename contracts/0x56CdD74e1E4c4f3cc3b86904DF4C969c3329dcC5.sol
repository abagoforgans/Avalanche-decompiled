contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getAmountOut(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if 10000 < arg4:
        revert with 'NH{q', 17
    if not arg1:
        if not arg2:
            revert with 'NH{q', 18
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 10000 * arg2 / arg2 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10000 * arg2 > -1:
            revert with 'NH{q', 17
        if 10000 * arg2 < 10000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not 10000 * arg2:
            revert with 'NH{q', 18
        return (0 / 10000 * arg2)
    if arg1 and -arg4 + 10000 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if (10000 * arg1) - (arg4 * arg1) / arg1 != -arg4 + 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (10000 * arg1) - (arg4 * arg1):
        if not arg2:
            if 0 > (-10000 * arg1) + (arg4 * arg1) - 1:
                revert with 'NH{q', 17
            if (10000 * arg1) - (arg4 * arg1) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not (10000 * arg1) - (arg4 * arg1):
                revert with 'NH{q', 18
            return (0 / (10000 * arg1) - (arg4 * arg1))
        if arg2 and 10000 > -1 / arg2:
            revert with 'NH{q', 17
        if not arg2:
            revert with 'NH{q', 18
        if 10000 * arg2 / arg2 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
            revert with 'NH{q', 17
        if (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) < 10000 * arg2:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
            revert with 'NH{q', 18
        return (0 / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1))
    if (10000 * arg1) - (arg4 * arg1) and arg3 > -1 / (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 17
    if not (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    if (10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg1) - (arg4 * arg1) != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2:
        if 0 > (-10000 * arg1) + (arg4 * arg1) - 1:
            revert with 'NH{q', 17
        if (10000 * arg1) - (arg4 * arg1) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (10000 * arg1) - (arg4 * arg1):
            revert with 'NH{q', 18
        return ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg1) - (arg4 * arg1))
    if arg2 and 10000 > -1 / arg2:
        revert with 'NH{q', 17
    if not arg2:
        revert with 'NH{q', 18
    if 10000 * arg2 / arg2 != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 10000 * arg2 > (-10000 * arg1) + (arg4 * arg1) - 1:
        revert with 'NH{q', 17
    if (10000 * arg2) + (10000 * arg1) - (arg4 * arg1) < 10000 * arg2:
        revert with 0, 'SafeMath: addition overflow'
    if not (10000 * arg2) + (10000 * arg1) - (arg4 * arg1):
        revert with 'NH{q', 18
    return ((10000 * arg1 * arg3) - (arg4 * arg1 * arg3) / (10000 * arg2) + (10000 * arg1) - (arg4 * arg1))
}

function sub_680c2b4a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 97] = ('cd', 100).length
    mem[64] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 129
    if not ('cd', 100).length:
        idx = 0
        s = 0
        while idx < ('cd', 100).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _267 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _282 = mem[_275]
            require mem[_275] == mem[_275 + 12 len 20]
            require ext_code.size(address(_267))
            staticcall address(_267).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _290 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _294 = mem[_290]
            require mem[_290] == mem[_290 + 12 len 20]
            require ext_code.size(address(_267))
            staticcall address(_267).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _311 = mem[_308]
            require mem[_308] == mem[_308 + 18 len 14]
            _314 = mem[_308 + 32]
            require mem[_308 + 32] == mem[_308 + 50 len 14]
            require mem[_308 + 64] == mem[_308 + 92 len 4]
            if address(_282) != address(cd[36]):
                if address(_294) == address(cd[36]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _337 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_337)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_352] == mem[_352]
                    if mem[_352] < Mask(112, 0, _314):
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_352] - Mask(112, 0, _314)
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _330 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_330)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_349] == mem[_349]
                if mem[_349] < Mask(112, 0, _311):
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_349] - Mask(112, 0, _311)
                if address(_294) == address(cd[36]):
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _372 = mem[(32 * idx) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_372)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _380 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_380] == mem[_380]
                    if mem[_380] < Mask(112, 0, _314):
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_380] - Mask(112, 0, _314)
            if idx >= mem[floor32(('cd', 100).length) + 97]:
                revert with 'NH{q', 50
            if s > -mem[(32 * idx) + floor32(('cd', 100).length) + 129] - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + mem[(32 * idx) + floor32(('cd', 100).length) + 129]
            continue 
        _266 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        if 0 >= mem[_266]:
            revert with 'NH{q', 50
        mem[_266 + 32] = address(cd[36])
        if 1 >= mem[_266]:
            revert with 'NH{q', 50
        mem[_266 + 64] = address(cd[4])
        mem[_266 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[_266 + 100] = s
        mem[_266 + 132] = 64
        mem[_266 + 164] = mem[_266]
        idx = 0
        t = _266 + 32
        u = _266 + 196
        while idx < mem[_266]:
            mem[u] = mem[t + 12 len 20]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _266 + (32 * mem[_266]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _394 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _396 = mem[_394]
        require mem[_394] <= test266151307()
        require _394 + mem[_394] + 31 < _394 + return_data.size
        _398 = mem[_394 + mem[_394]]
        if mem[_394 + mem[_394]] > test266151307():
            revert with 'NH{q', 65
        if _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1 > test266151307() or floor32(mem[_394 + mem[_394]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _394 + ceil32(return_data.size) + floor32(mem[_394 + mem[_394]]) + 1
        mem[_394 + ceil32(return_data.size)] = _398
        require _396 + (32 * _398) + 32 <= return_data.size
        idx = 0
        t = _394 + _396 + 32
        u = _394 + ceil32(return_data.size) + 32
        while idx < _398:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            idx = idx + 1
            t = t + 32
            u = u + 32
            continue 
        if 1 >= _398:
            revert with 'NH{q', 50
        _420 = mem[_394 + ceil32(return_data.size) + 64]
        mem[mem[64]] = s
        mem[mem[64] + 32] = _420
        mem[mem[64] + 64] = 96
        _424 = mem[floor32(('cd', 100).length) + 97]
        mem[mem[64] + 96] = mem[floor32(('cd', 100).length) + 97]
        mem[mem[64] + 128 len 32 * _424] = mem[floor32(('cd', 100).length) + 129 len 32 * _424]
        return s, _420, 96, mem[mem[64] + 96 len (32 * _424) + 32]
    mem[floor32(('cd', 100).length) + 129 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
    idx = 0
    s = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _271 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _283 = mem[_277]
        require mem[_277] == mem[_277 + 12 len 20]
        require ext_code.size(address(_271))
        staticcall address(_271).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _295 = mem[_291]
        require mem[_291] == mem[_291 + 12 len 20]
        require ext_code.size(address(_271))
        staticcall address(_271).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _313 = mem[_309]
        require mem[_309] == mem[_309 + 18 len 14]
        _315 = mem[_309 + 32]
        require mem[_309 + 32] == mem[_309 + 50 len 14]
        require mem[_309 + 64] == mem[_309 + 92 len 4]
        if address(_283) != address(cd[36]):
            if address(_295) == address(cd[36]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _340 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_340)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_353] == mem[_353]
                if mem[_353] < Mask(112, 0, _315):
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_353] - Mask(112, 0, _315)
        else:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _334 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_334)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_351] == mem[_351]
            if mem[_351] < Mask(112, 0, _313):
                revert with 'NH{q', 17
            if idx >= mem[floor32(('cd', 100).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_351] - Mask(112, 0, _313)
            if address(_295) == address(cd[36]):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _376 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args address(_376)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _381 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_381] == mem[_381]
                if mem[_381] < Mask(112, 0, _315):
                    revert with 'NH{q', 17
                if idx >= mem[floor32(('cd', 100).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 129] = mem[_381] - Mask(112, 0, _315)
        if idx >= mem[floor32(('cd', 100).length) + 97]:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + floor32(('cd', 100).length) + 129] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + floor32(('cd', 100).length) + 129]
        continue 
    _270 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_270]:
        revert with 'NH{q', 50
    mem[_270 + 32] = address(cd[36])
    if 1 >= mem[_270]:
        revert with 'NH{q', 50
    mem[_270 + 64] = address(cd[4])
    mem[_270 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_270 + 100] = s
    mem[_270 + 132] = 64
    mem[_270 + 164] = mem[_270]
    idx = 0
    t = _270 + 32
    u = _270 + 196
    while idx < mem[_270]:
        mem[u] = mem[t + 12 len 20]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _270 + (32 * mem[_270]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _395 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _397 = mem[_395]
    require mem[_395] <= test266151307()
    require _395 + mem[_395] + 31 < _395 + return_data.size
    _399 = mem[_395 + mem[_395]]
    if mem[_395 + mem[_395]] > test266151307():
        revert with 'NH{q', 65
    if _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1 > test266151307() or floor32(mem[_395 + mem[_395]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _395 + ceil32(return_data.size) + floor32(mem[_395 + mem[_395]]) + 1
    mem[_395 + ceil32(return_data.size)] = _399
    require _397 + (32 * _399) + 32 <= return_data.size
    idx = 0
    t = _395 + _397 + 32
    u = _395 + ceil32(return_data.size) + 32
    while idx < _399:
        require mem[t] == mem[t]
        mem[u] = mem[t]
        idx = idx + 1
        t = t + 32
        u = u + 32
        continue 
    if 1 >= _399:
        revert with 'NH{q', 50
    _421 = mem[_395 + ceil32(return_data.size) + 64]
    mem[mem[64]] = s
    mem[mem[64] + 32] = _421
    mem[mem[64] + 64] = 96
    _425 = mem[floor32(('cd', 100).length) + 97]
    mem[mem[64] + 96] = mem[floor32(('cd', 100).length) + 97]
    mem[mem[64] + 128 len 32 * _425] = mem[floor32(('cd', 100).length) + 129 len 32 * _425]
    return s, _421, 96, mem[mem[64] + 96 len (32 * _425) + 32]
}

function sub_fb264a7b(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _159 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 100).length) + 97] = 0xbc25cf7700000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + 101] = this.address
        require ext_code.size(address(_159))
        call address(_159).skim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'no balance'
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 133] = address(cd[36])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[4]), address(cd[36])
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0xa9059cbb with:
         gas gas_remaining wei
        args ext_call.return_data[12 len 20], ext_call.return_data[0]
    mem[floor32(('cd', 100).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 100).length) + (6 * ceil32(return_data.size)) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if address(cd[4]) < address(cd[36]):
        if address(cd[36]) == address(cd[4]):
            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(144, 112, ext_call.return_data[0]):
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if address(cd[36]) == address(cd[4]):
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
            else:
                if Mask(144, 112, ext_call.return_data[0]) and 9970 > -1 / Mask(144, 112, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(144, 112, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 9970 * Mask(144, 112, ext_call.return_data[0]) / Mask(144, 112, ext_call.return_data[0]) != 9970:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 0 > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if 9970 * Mask(144, 112, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 9970 * Mask(144, 112, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 9970 * Mask(144, 112, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    if 9970 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 9970 * Mask(144, 112, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 0 > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if 9970 * Mask(144, 112, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
        else:
            if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) > -1:
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if address(cd[36]) == address(cd[4]):
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
            else:
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and 9970 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) != 9970:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 0 > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 'NH{q', 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 'NH{q', 18
                    if (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 0 > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[4]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
    else:
        if address(cd[36]) == address(cd[36]):
            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if not Mask(144, 112, ext_call.return_data[0]):
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[0]) > -1:
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if address(cd[36]) == address(cd[36]):
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 10000 * Mask(112, 0, ext_call.return_data[0])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
            else:
                if Mask(144, 112, ext_call.return_data[0]) and 9970 > -1 / Mask(144, 112, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if not Mask(144, 112, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 9970 * Mask(144, 112, ext_call.return_data[0]) / Mask(144, 112, ext_call.return_data[0]) != 9970:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 0 > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if 9970 * Mask(144, 112, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / 9970 * Mask(144, 112, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / 9970 * Mask(144, 112, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    if 9970 * Mask(144, 112, ext_call.return_data[0]) and Mask(112, 0, ext_call.return_data[32]) > -1 / 9970 * Mask(144, 112, ext_call.return_data[0]):
                        revert with 'NH{q', 17
                    if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    if (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not Mask(112, 0, ext_call.return_data[0]):
                        if 0 > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if 9970 * Mask(144, 112, ext_call.return_data[0]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 9970 * Mask(144, 112, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 9970 * Mask(144, 112, ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[0]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[0]) > (-9970 * Mask(144, 112, ext_call.return_data[0])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[0]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (9970 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (30 * Mask(112, 0, ext_call.return_data[0])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
        else:
            if Mask(112, 0, ext_call.return_data[32]) > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if ext_call.return_data[0] < Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 10000 * Mask(112, 0, ext_call.return_data[32]) > -1:
                    revert with 'NH{q', 17
                if 10000 * Mask(112, 0, ext_call.return_data[32]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'SafeMath: addition overflow'
                if not 10000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                if address(cd[36]) == address(cd[36]):
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / 10000 * Mask(112, 0, ext_call.return_data[32])
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                    mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
            else:
                if ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) and 9970 > -1 / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) != 9970:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 0 > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0 / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                else:
                    if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) and Mask(112, 0, ext_call.return_data[0]) > -1 / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 'NH{q', 17
                    if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                        revert with 'NH{q', 18
                    if (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not Mask(112, 0, ext_call.return_data[32]):
                        if 0 > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32]))
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (9970 * ext_call.return_data[0]) - (9970 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                    else:
                        if Mask(112, 0, ext_call.return_data[32]) and 10000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 17
                        if not Mask(112, 0, ext_call.return_data[32]):
                            revert with 'NH{q', 18
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 10000 * Mask(112, 0, ext_call.return_data[32]) > (-9970 * ext_call.return_data[0]) + (9970 * Mask(112, 0, ext_call.return_data[32])) - 1:
                            revert with 'NH{q', 17
                        if (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]) < 10000 * Mask(112, 0, ext_call.return_data[32]):
                            revert with 0, 'SafeMath: addition overflow'
                        if not (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        if address(cd[36]) == address(cd[36]):
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                        else:
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 197] = (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0])
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 229] = 0
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 261] = this.address
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 293] = 128
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 325] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]
                            mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])] = mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 193 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
                            if ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]) > mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161]:
                                mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161] + 357] = 0
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (9970 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (9970 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (30 * Mask(112, 0, ext_call.return_data[32])) + (9970 * ext_call.return_data[0]), 0, address(this.address), 128, mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161], mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 357 len ceil32(mem[floor32(('cd', 100).length) + (8 * ceil32(return_data.size)) + 161])]
    if not ext_call.success:
        revert with 0, 'could not sell'
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'no balance'
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0xa9059cbb with:
         gas gas_remaining wei
        args 0x85a92368ab710a85f57b9872c0fe4361a405e5d, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return ext_call.return_data[0]
}



}
