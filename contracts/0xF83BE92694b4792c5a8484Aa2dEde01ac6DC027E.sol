contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
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
        _73 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 100).length) + 97] = 0xbc25cf7700000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + 101] = this.address
        require ext_code.size(address(_73))
        call address(_73).skim(address arg1) with:
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
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 101] = address(cd[68])
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 133] = ext_call.return_data[0]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[68]), ext_call.return_data[0]
    mem[floor32(('cd', 100).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[4])
    if block.timestamp and 2 > -1 / block.timestamp:
        revert with 'NH{q', 17
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 193] = 0x762b156200000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
    idx = 0
    s = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 129
    t = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 389
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), 2 * block.timestamp, 2, mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 389 len 64]
    if ext_call.success:
        call 0x085a92368ab710a85f57b9872c0fe4361a405e5d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if block.timestamp and 2 > -1 / block.timestamp:
            revert with 'NH{q', 17
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 193] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
        idx = 0
        s = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 129
        t = floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 389
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), 2 * block.timestamp, 2, mem[floor32(('cd', 100).length) + (2 * ceil32(return_data.size)) + 389 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x085a92368ab710a85f57b9872c0fe4361a405e5d with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    return eth.balance(this.address)
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



}
