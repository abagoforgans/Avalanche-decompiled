contract main {




// =====================  Runtime code  =====================


#
#  - sub_b7a9db38(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    if not ext_call.success:
        return 30, 0, 0, 0
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    return -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 
           ext_call.return_data[0],
           ext_call.return_data[0] + 100,
           ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100
}

function sub_0d543d05(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    return ext_call.return_data[0] << 192, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, arg4
}

function sub_3c01e5da(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 68).length) + 97] = 0
    mem[floor32(('cd', 68).length) + 129] = 0
    mem[floor32(('cd', 68).length) + 161] = 0
    mem[floor32(('cd', 68).length) + 193] = 0
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 225] = ('cd', 68).length
    mem[64] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _289 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_289))
            staticcall address(_289).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                _311 = mem[64]
                mem[64] = mem[64] + 128
                mem[_311] = 0
                mem[_311 + 32] = 0
                mem[_311 + 64] = 0
                mem[_311 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _318 = mem[_315]
                require mem[_315] == mem[_315 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_318))
                staticcall address(_318).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _342 = mem[_339]
                require mem[_339] == mem[_339 + 12 len 20]
                require ext_code.size(mem[_339 + 12 len 20])
                staticcall mem[_339 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _356 = mem[_350]
                require mem[_350] == mem[_350 + 18 len 14]
                _369 = mem[_350 + 32]
                require mem[_350 + 32] == mem[_350 + 50 len 14]
                require mem[_350 + 64] == mem[_350 + 92 len 4]
                _382 = mem[64]
                mem[64] = mem[64] + 128
                mem[_382] = address(_342)
                mem[_382 + 32] = Mask(112, 0, _356)
                mem[_382 + 64] = Mask(112, 0, _369)
                mem[_382 + 96] = 30
                if idx >= mem[floor32(('cd', 68).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + 257] = _382
            else:
                _307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _308 = mem[_307]
                require mem[_307] == mem[_307]
                if mem[_307] > -101:
                    revert with 'NH{q', 17
                if mem[_307] + 100 < mem[_307] + 100 % 100:
                    revert with 'NH{q', 17
                if 10^6 < mem[_307] + -(mem[_307] + 100 % 100) + 100:
                    revert with 'NH{q', 17
                _351 = mem[64]
                mem[64] = mem[64] + 128
                mem[_351] = 0
                mem[_351 + 32] = 0
                mem[_351 + 64] = 0
                mem[_351 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _363 = mem[_359]
                require mem[_359] == mem[_359 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_363))
                staticcall address(_363).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _391 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _392 = mem[_391]
                require mem[_391] == mem[_391 + 12 len 20]
                require ext_code.size(mem[_391 + 12 len 20])
                staticcall mem[_391 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _407 = mem[_403]
                require mem[_403] == mem[_403 + 18 len 14]
                _415 = mem[_403 + 32]
                require mem[_403 + 32] == mem[_403 + 50 len 14]
                require mem[_403 + 64] == mem[_403 + 92 len 4]
                _421 = mem[64]
                mem[64] = mem[64] + 128
                mem[_421] = address(_392)
                mem[_421 + 32] = Mask(112, 0, _407)
                mem[_421 + 64] = Mask(112, 0, _415)
                mem[_421 + 96] = -_308 + (_308 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 68).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + 257] = _421
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _290 = mem[64]
        mem[64] = mem[64] + 128
        mem[_290] = 0
        mem[_290 + 32] = 0
        mem[_290 + 64] = 0
        mem[_290 + 96] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _300 = mem[_295]
        require mem[_295] == mem[_295 + 12 len 20]
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = address(cd[36])
        require ext_code.size(address(_300))
        staticcall address(_300).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor0, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _325 = mem[_323]
        require mem[_323] == mem[_323 + 12 len 20]
        require ext_code.size(mem[_323 + 12 len 20])
        staticcall mem[_323 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _333 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _334 = mem[_333]
        require mem[_333] == mem[_333 + 18 len 14]
        _341 = mem[_333 + 32]
        require mem[_333 + 32] == mem[_333 + 50 len 14]
        require mem[_333 + 64] == mem[_333 + 92 len 4]
        _355 = mem[64]
        mem[64] = mem[64] + 128
        mem[_355] = address(_325)
        mem[_355 + 32] = Mask(112, 0, _334)
        mem[_355 + 64] = Mask(112, 0, _341)
        mem[_355 + 96] = 0
        _360 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = address(_325)
        mem[mem[64] + 64] = Mask(112, 0, _334)
        mem[mem[64] + 96] = Mask(112, 0, _341)
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = 192
        _390 = mem[floor32(('cd', 68).length) + 225]
        mem[mem[64] + 192] = mem[floor32(('cd', 68).length) + 225]
        idx = 0
        s = floor32(('cd', 68).length) + 257
        t = mem[64] + 224
        while idx < _390:
            _426 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_426 + 32]
            mem[t + 64] = mem[_426 + 64]
            mem[t + 96] = mem[_426 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _360 + (128 * _390) + -mem[64] + 224
    mem[64] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 385
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 289] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 321] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 353] = 0
    mem[var53001] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257
    s = var53001
    idx = var53002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 289] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 321] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 353] = 0
        mem[s + 32] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257
        s = s + 32
        idx = idx - 1
        continue 
    _501 = mem[96]
    idx = 0
    while idx < _501:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _503 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^6
        mem[mem[64] + 36] = 10^12
        mem[mem[64] + 68] = 10^12
        require ext_code.size(address(_503))
        staticcall address(_503).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            _514 = mem[64]
            mem[64] = mem[64] + 128
            mem[_514] = 0
            mem[_514 + 32] = 0
            mem[_514 + 64] = 0
            mem[_514 + 96] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _518 = mem[_517]
            require mem[_517] == mem[_517 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[36])
            require ext_code.size(address(_518))
            staticcall address(_518).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _528 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _530 = mem[_528]
            require mem[_528] == mem[_528 + 12 len 20]
            require ext_code.size(mem[_528 + 12 len 20])
            staticcall mem[_528 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _534 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _539 = mem[_534]
            require mem[_534] == mem[_534 + 18 len 14]
            _543 = mem[_534 + 32]
            require mem[_534 + 32] == mem[_534 + 50 len 14]
            require mem[_534 + 64] == mem[_534 + 92 len 4]
            _549 = mem[64]
            mem[64] = mem[64] + 128
            mem[_549] = address(_530)
            mem[_549 + 32] = Mask(112, 0, _539)
            mem[_549 + 64] = Mask(112, 0, _543)
            mem[_549 + 96] = 30
            if idx >= mem[floor32(('cd', 68).length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 257] = _549
        else:
            _512 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _513 = mem[_512]
            require mem[_512] == mem[_512]
            if mem[_512] > -101:
                revert with 'NH{q', 17
            if mem[_512] + 100 < mem[_512] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_512] + -(mem[_512] + 100 % 100) + 100:
                revert with 'NH{q', 17
            _535 = mem[64]
            mem[64] = mem[64] + 128
            mem[_535] = 0
            mem[_535 + 32] = 0
            mem[_535 + 64] = 0
            mem[_535 + 96] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _540 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _542 = mem[_540]
            require mem[_540] == mem[_540 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[36])
            require ext_code.size(address(_542))
            staticcall address(_542).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _555 = mem[_554]
            require mem[_554] == mem[_554 + 12 len 20]
            require ext_code.size(mem[_554 + 12 len 20])
            staticcall mem[_554 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _561 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _563 = mem[_561]
            require mem[_561] == mem[_561 + 18 len 14]
            _566 = mem[_561 + 32]
            require mem[_561 + 32] == mem[_561 + 50 len 14]
            require mem[_561 + 64] == mem[_561 + 92 len 4]
            _568 = mem[64]
            mem[64] = mem[64] + 128
            mem[_568] = address(_555)
            mem[_568 + 32] = Mask(112, 0, _563)
            mem[_568 + 64] = Mask(112, 0, _566)
            mem[_568 + 96] = -_513 + (_513 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 68).length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 257] = _568
        if idx == -1:
            revert with 'NH{q', 17
        _501 = mem[96]
        idx = idx + 1
        continue 
    _504 = mem[64]
    mem[64] = mem[64] + 128
    mem[_504] = 0
    mem[_504 + 32] = 0
    mem[_504 + 64] = 0
    mem[_504 + 96] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _508 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _509 = mem[_508]
    require mem[_508] == mem[_508 + 12 len 20]
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = address(cd[36])
    require ext_code.size(address(_509))
    staticcall address(_509).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args stor0, address(cd[36])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _520 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _521 = mem[_520]
    require mem[_520] == mem[_520 + 12 len 20]
    require ext_code.size(mem[_520 + 12 len 20])
    staticcall mem[_520 + 12 len 20].getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _525 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _526 = mem[_525]
    require mem[_525] == mem[_525 + 18 len 14]
    _529 = mem[_525 + 32]
    require mem[_525 + 32] == mem[_525 + 50 len 14]
    require mem[_525 + 64] == mem[_525 + 92 len 4]
    _538 = mem[64]
    mem[64] = mem[64] + 128
    mem[_538] = address(_521)
    mem[_538 + 32] = Mask(112, 0, _526)
    mem[_538 + 64] = Mask(112, 0, _529)
    mem[_538 + 96] = 0
    _541 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = address(_521)
    mem[mem[64] + 64] = Mask(112, 0, _526)
    mem[mem[64] + 96] = Mask(112, 0, _529)
    mem[mem[64] + 128] = 0
    mem[mem[64] + 160] = 192
    _553 = mem[floor32(('cd', 68).length) + 225]
    mem[mem[64] + 192] = mem[floor32(('cd', 68).length) + 225]
    idx = 0
    s = floor32(('cd', 68).length) + 257
    t = mem[64] + 224
    while idx < _553:
        _570 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_570 + 32]
        mem[t + 64] = mem[_570 + 64]
        mem[t + 96] = mem[_570 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _541 + (128 * _553) + -mem[64] + 224
}

function sub_185f7d4d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98 > test266151307() or floor32(('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not ('cd', 36).length:
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = 32
        _777 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 162] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 194
        while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
            _1402 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1402 + 32]
            mem[t + 64] = mem[_1402 + 64]
            mem[t + 96] = mem[_1402 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (128 * _777) + -mem[64] + 194
    if ('cd', 36).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length - 1 > test266151307():
        revert with 'NH{q', 65
    if not ('cd', 36).length - 1:
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 134] = 10^6
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 166] = 10^12
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 198] = 10^12
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = ext_call.return_data[0]
        if not ext_call.success:
            if var202003 < 1:
                revert with 'NH{q', 17
            if var206002 < var206001:
                if 0 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                if 1 >= ('cd', 36).length:
                    revert with 'NH{q', 50
                _9214 = mem[160]
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 258
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 258] = ext_call.return_data[0]
                s = mem[128]
                t = var210005
                while ext_call.success:
                    _9252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9273 = mem[_9252]
                    require mem[_9252] == mem[_9252 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_9214)
                    require ext_code.size(address(_9273))
                    staticcall address(_9273).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(s), address(_9214)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9388 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9401 = mem[_9388]
                    require mem[_9388] == mem[_9388 + 12 len 20]
                    require ext_code.size(mem[_9388 + 12 len 20])
                    staticcall mem[_9388 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9517 = mem[_9491]
                    require mem[_9491] == mem[_9491 + 18 len 14]
                    _9569 = mem[_9491 + 32]
                    require mem[_9491 + 32] == mem[_9491 + 50 len 14]
                    require mem[_9491 + 64] == mem[_9491 + 92 len 4]
                    _9639 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9639] = address(_9401)
                    mem[_9639 + 32] = Mask(112, 0, _9517)
                    mem[_9639 + 64] = Mask(112, 0, _9569)
                    mem[_9639 + 96] = 30
                    if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _9639
                    if t == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _9752 = mem[128]
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _9752
                        t = t + 1
                        continue 
                    if cd[100] != 1:
                        require cd[100] == 2
                        _9759 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _9787 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _9787:
                            mem[t] = mem[s + 12 len 20]
                            _9214 = mem[160]
                            mem[64] = mem[64] + 128
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                            mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _9759 + (32 * _9787) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10339 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10352 = mem[_10339]
                        require mem[_10339] <= test266151307()
                        require _10339 + mem[_10339] + 31 < _10339 + return_data.size
                        _10371 = mem[_10339 + mem[_10339]]
                        if mem[_10339 + mem[_10339]] > test266151307():
                            revert with 'NH{q', 65
                        if _10339 + ceil32(return_data.size) + floor32(mem[_10339 + mem[_10339]]) + 1 > test266151307() or floor32(mem[_10339 + mem[_10339]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10339 + ceil32(return_data.size) + floor32(mem[_10339 + mem[_10339]]) + 1
                        mem[_10339 + ceil32(return_data.size)] = _10371
                        require _10352 + (32 * _10371) + 32 <= return_data.size
                        idx = 0
                        s = _10339 + _10352 + 32
                        t = _10339 + ceil32(return_data.size) + 32
                        while idx < _10371:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9214 = mem[160]
                            mem[64] = mem[64] + 128
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                            mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _12217 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        idx = 0
                        while idx < _12217:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                                if not mem[(32 * idx) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx > -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[_10339 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_10339 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32] - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]
                                else:
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32] - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_10339 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]
                            else:
                                if not mem[(32 * idx + 1) + 140 len 20]:
                                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if idx > -1:
                                    revert with 'NH{q', 17
                                if idx >= mem[_10339 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_10339 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32] - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]
                                else:
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32] - 1:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _10339 + ceil32(return_data.size) + 32]
                                    if idx > -2:
                                        revert with 'NH{q', 17
                                    if idx + 1 >= mem[_10339 + ceil32(return_data.size)]:
                                        revert with 'NH{q', 50
                                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                        revert with 'NH{q', 50
                                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]:
                                        revert with 'NH{q', 17
                                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _10339 + ceil32(return_data.size) + 32]
                            if idx == -1:
                                revert with 'NH{q', 17
                            _9214 = mem[160]
                            mem[64] = mem[64] + 128
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                            mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                            mem[mem[64]] = ext_call.return_data[0]
                            _12217 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                            idx = idx + 1
                            continue 
                        _12237 = mem[64]
                        mem[mem[64]] = 32
                        _12257 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        idx = 0
                        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                        t = mem[64] + 64
                        while idx < _12257:
                            _12935 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_12935 + 32]
                            mem[t + 64] = mem[_12935 + 64]
                            mem[t + 96] = mem[_12935 + 96]
                            _9214 = mem[160]
                            mem[64] = mem[64] + 128
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                            mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 128
                            continue 
                        return memory
                          from mem[64]
                           len _12237 + (128 * _12257) + -mem[64] + 64
                    _9751 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 64
                    _9783 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 100
                    while idx < _9783:
                        mem[t] = mem[s + 12 len 20]
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _9751 + (32 * _9783) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10340 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10353 = mem[_10340]
                    require mem[_10340] <= test266151307()
                    require _10340 + mem[_10340] + 31 < _10340 + return_data.size
                    _10372 = mem[_10340 + mem[_10340]]
                    if mem[_10340 + mem[_10340]] > test266151307():
                        revert with 'NH{q', 65
                    if _10340 + ceil32(return_data.size) + floor32(mem[_10340 + mem[_10340]]) + 1 > test266151307() or floor32(mem[_10340 + mem[_10340]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _10340 + ceil32(return_data.size) + floor32(mem[_10340 + mem[_10340]]) + 1
                    mem[_10340 + ceil32(return_data.size)] = _10372
                    require _10353 + (32 * _10372) + 32 <= return_data.size
                    idx = 0
                    s = _10340 + _10353 + 32
                    t = _10340 + ceil32(return_data.size) + 32
                    while idx < _10372:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[100] == 2
                    _11323 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 64
                    _11356 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 100
                    while idx < _11356:
                        mem[t] = mem[s + 12 len 20]
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11323 + (32 * _11356) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12251 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12261 = mem[_12251]
                    require mem[_12251] <= test266151307()
                    require _12251 + mem[_12251] + 31 < _12251 + return_data.size
                    _12280 = mem[_12251 + mem[_12251]]
                    if mem[_12251 + mem[_12251]] > test266151307():
                        revert with 'NH{q', 65
                    if _12251 + ceil32(return_data.size) + floor32(mem[_12251 + mem[_12251]]) + 1 > test266151307() or floor32(mem[_12251 + mem[_12251]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12251 + ceil32(return_data.size) + floor32(mem[_12251 + mem[_12251]]) + 1
                    mem[_12251 + ceil32(return_data.size)] = _12280
                    require _12261 + (32 * _12280) + 32 <= return_data.size
                    idx = 0
                    s = _12251 + _12261 + 32
                    t = _12251 + ceil32(return_data.size) + 32
                    while idx < _12280:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _13473 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    while idx < _13473:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_12251 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12251 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12251 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_12251 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12251 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12251 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12251 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12251 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        _13473 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        idx = idx + 1
                        continue 
                    _13489 = mem[64]
                    mem[mem[64]] = 32
                    _13501 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                    t = mem[64] + 64
                    while idx < _13501:
                        _13877 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_13877 + 32]
                        mem[t + 64] = mem[_13877 + 64]
                        mem[t + 96] = mem[_13877 + 96]
                        _9214 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len _13489 + (128 * _13501) + -mem[64] + 64
                revert with ext_call.return_data[0 len return_data.size]
            if cd[100] != 1:
                require cd[100] == 2
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 134] = cd[68]
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 166] = 64
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 198] = ('cd', 36).length
                idx = 0
                s = 128
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 230
                while idx < ('cd', 36).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 230 len 32 * ('cd', 36).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130
                require return_data.size >= 32
                _7235 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + return_data.size + 130
                _7247 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                    revert with 'NH{q', 65
                if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = _7247
                require _7235 + (32 * _7247) + 32 <= return_data.size
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + _7235 + 162
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162
                while idx < _7247:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _9213 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                while idx < _9213:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9213 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = idx + 1
                    continue 
                _9237 = mem[64]
                mem[mem[64]] = 32
                _9263 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                t = mem[64] + 64
                while idx < _9263:
                    _10311 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_10311 + 32]
                    mem[t + 64] = mem[_10311 + 64]
                    mem[t + 96] = mem[_10311 + 96]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _9237 + (128 * _9263) + -mem[64] + 64
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 134] = cd[68]
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 166] = 64
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 198] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 230
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 230 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130
            require return_data.size >= 32
            _7236 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + return_data.size + 130
            _7248 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
            if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = _7248
            require _7236 + (32 * _7248) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + _7236 + 162
            t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162
            while idx < _7248:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[100] == 2
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = ('cd', 36).length
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9251 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9265 = mem[_9251]
            require mem[_9251] <= test266151307()
            require _9251 + mem[_9251] + 31 < _9251 + return_data.size
            _9278 = mem[_9251 + mem[_9251]]
            if mem[_9251 + mem[_9251]] > test266151307():
                revert with 'NH{q', 65
            if _9251 + ceil32(return_data.size) + floor32(mem[_9251 + mem[_9251]]) + 1 > test266151307() or floor32(mem[_9251 + mem[_9251]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _9251 + ceil32(return_data.size) + floor32(mem[_9251 + mem[_9251]]) + 1
            mem[_9251 + ceil32(return_data.size)] = _9278
            require _9265 + (32 * _9278) + 32 <= return_data.size
            idx = 0
            s = _9251 + _9265 + 32
            t = _9251 + ceil32(return_data.size) + 32
            while idx < _9278:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _11285 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            while idx < _11285:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[_9251 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9251 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9251 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[_9251 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9251 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9251 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9251 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9251 + ceil32(return_data.size) + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                _11285 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = idx + 1
                continue 
            _11307 = mem[64]
            mem[mem[64]] = 32
            _11321 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
            t = mem[64] + 64
            while idx < _11321:
                _12219 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_12219 + 32]
                mem[t + 64] = mem[_12219 + 64]
                mem[t + 96] = mem[_12219 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _11307 + (128 * _11321) + -mem[64] + 64
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > -101:
            revert with 'NH{q', 17
        if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
            revert with 'NH{q', 17
        if var248003 < 1:
            revert with 'NH{q', 17
        if var252002 < var252001:
            if 0 >= ('cd', 36).length:
                revert with 'NH{q', 50
            if 1 >= ('cd', 36).length:
                revert with 'NH{q', 50
            _9216 = mem[160]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 258
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).factory() with:
                    gas gas_remaining wei
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 258] = ext_call.return_data[0]
            s = mem[128]
            t = var256005
            while ext_call.success:
                _9254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9274 = mem[_9254]
                require mem[_9254] == mem[_9254 + 12 len 20]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_9216)
                require ext_code.size(address(_9274))
                staticcall address(_9274).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(s), address(_9216)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9402 = mem[_9390]
                require mem[_9390] == mem[_9390 + 12 len 20]
                require ext_code.size(mem[_9390 + 12 len 20])
                staticcall mem[_9390 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _9518 = mem[_9494]
                require mem[_9494] == mem[_9494 + 18 len 14]
                _9578 = mem[_9494 + 32]
                require mem[_9494 + 32] == mem[_9494 + 50 len 14]
                require mem[_9494 + 64] == mem[_9494 + 92 len 4]
                _9640 = mem[64]
                mem[64] = mem[64] + 128
                mem[_9640] = address(_9402)
                mem[_9640 + 32] = Mask(112, 0, _9518)
                mem[_9640 + 64] = Mask(112, 0, _9578)
                mem[_9640 + 96] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _9640
                if t == -1:
                    revert with 'NH{q', 17
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if t + 1 < mem[96] - 1:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _9755 = mem[128]
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _9755
                    t = t + 1
                    continue 
                if cd[100] != 1:
                    require cd[100] == 2
                    _9760 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 64
                    _9788 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 100
                    while idx < _9788:
                        mem[t] = mem[s + 12 len 20]
                        _9216 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _9760 + (32 * _9788) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10341 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10355 = mem[_10341]
                    require mem[_10341] <= test266151307()
                    require _10341 + mem[_10341] + 31 < _10341 + return_data.size
                    _10373 = mem[_10341 + mem[_10341]]
                    if mem[_10341 + mem[_10341]] > test266151307():
                        revert with 'NH{q', 65
                    if _10341 + ceil32(return_data.size) + floor32(mem[_10341 + mem[_10341]]) + 1 > test266151307() or floor32(mem[_10341 + mem[_10341]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _10341 + ceil32(return_data.size) + floor32(mem[_10341 + mem[_10341]]) + 1
                    mem[_10341 + ceil32(return_data.size)] = _10373
                    require _10355 + (32 * _10373) + 32 <= return_data.size
                    idx = 0
                    s = _10341 + _10355 + 32
                    t = _10341 + ceil32(return_data.size) + 32
                    while idx < _10373:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _9216 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _12218 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    while idx < _12218:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_10341 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_10341 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_10341 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_10341 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_10341 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _10341 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_10341 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _10341 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _9216 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        _12218 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        idx = idx + 1
                        continue 
                    _12241 = mem[64]
                    mem[mem[64]] = 32
                    _12258 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                    t = mem[64] + 64
                    while idx < _12258:
                        _12936 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_12936 + 32]
                        mem[t + 64] = mem[_12936 + 64]
                        mem[t + 96] = mem[_12936 + 96]
                        _9216 = mem[160]
                        mem[64] = mem[64] + 128
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                        mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len _12241 + (128 * _12258) + -mem[64] + 64
                _9754 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _9784 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _9784:
                    mem[t] = mem[s + 12 len 20]
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _9754 + (32 * _9784) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10342 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10356 = mem[_10342]
                require mem[_10342] <= test266151307()
                require _10342 + mem[_10342] + 31 < _10342 + return_data.size
                _10374 = mem[_10342 + mem[_10342]]
                if mem[_10342 + mem[_10342]] > test266151307():
                    revert with 'NH{q', 65
                if _10342 + ceil32(return_data.size) + floor32(mem[_10342 + mem[_10342]]) + 1 > test266151307() or floor32(mem[_10342 + mem[_10342]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _10342 + ceil32(return_data.size) + floor32(mem[_10342 + mem[_10342]]) + 1
                mem[_10342 + ceil32(return_data.size)] = _10374
                require _10356 + (32 * _10374) + 32 <= return_data.size
                idx = 0
                s = _10342 + _10356 + 32
                t = _10342 + ceil32(return_data.size) + 32
                while idx < _10374:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[100] == 2
                _11326 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _11358 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _11358:
                    mem[t] = mem[s + 12 len 20]
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _11326 + (32 * _11358) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12252 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12262 = mem[_12252]
                require mem[_12252] <= test266151307()
                require _12252 + mem[_12252] + 31 < _12252 + return_data.size
                _12282 = mem[_12252 + mem[_12252]]
                if mem[_12252 + mem[_12252]] > test266151307():
                    revert with 'NH{q', 65
                if _12252 + ceil32(return_data.size) + floor32(mem[_12252 + mem[_12252]]) + 1 > test266151307() or floor32(mem[_12252 + mem[_12252]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12252 + ceil32(return_data.size) + floor32(mem[_12252 + mem[_12252]]) + 1
                mem[_12252 + ceil32(return_data.size)] = _12282
                require _12262 + (32 * _12282) + 32 <= return_data.size
                idx = 0
                s = _12252 + _12262 + 32
                t = _12252 + ceil32(return_data.size) + 32
                while idx < _12282:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _13474 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                while idx < _13474:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[_12252 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12252 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12252 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[_12252 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12252 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12252 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12252 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12252 + ceil32(return_data.size) + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    _13474 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = idx + 1
                    continue 
                _13490 = mem[64]
                mem[mem[64]] = 32
                _13502 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                t = mem[64] + 64
                while idx < _13502:
                    _13878 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_13878 + 32]
                    mem[t + 64] = mem[_13878 + 64]
                    mem[t + 96] = mem[_13878 + 96]
                    _9216 = mem[160]
                    mem[64] = mem[64] + 128
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 194] = 0
                    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 226] = 0
                    mem[mem[64]] = 0xc45a015500000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + -mem[64] + 258]
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _13490 + (128 * _13502) + -mem[64] + 64
            revert with ext_call.return_data[0 len return_data.size]
        if cd[100] != 1:
            require cd[100] == 2
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 134] = cd[68]
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 166] = 64
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 198] = ('cd', 36).length
            idx = 0
            s = 128
            t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 230
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 230 len 32 * ('cd', 36).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130
            require return_data.size >= 32
            _7238 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32
            require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
            require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + return_data.size + 130
            _7250 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
            if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                revert with 'NH{q', 65
            if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
            mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130] = _7250
            require _7238 + (32 * _7250) + 32 <= return_data.size
            idx = 0
            s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + _7238 + 162
            t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162
            while idx < _7250:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _9215 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            while idx < _9215:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162]
                if idx == -1:
                    revert with 'NH{q', 17
                _9215 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = idx + 1
                continue 
            _9241 = mem[64]
            mem[mem[64]] = 32
            _9264 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
            t = mem[64] + 64
            while idx < _9264:
                _10314 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_10314 + 32]
                mem[t + 64] = mem[_10314 + 64]
                mem[t + 96] = mem[_10314 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _9241 + (128 * _9264) + -mem[64] + 64
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 134] = cd[68]
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 166] = 64
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 198] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 230
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 230 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130
        require return_data.size >= 32
        _7239 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
        require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + return_data.size + 130
        _7251 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
        if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130] = _7251
        require _7239 + (32 * _7251) + 32 <= return_data.size
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + _7239 + 162
        t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162
        while idx < _7251:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require cd[100] == 2
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 36).length
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=('cd', 36).length, data=mem[mem[64] + 100 len 32 * ('cd', 36).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9253 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9266 = mem[_9253]
        require mem[_9253] <= test266151307()
        require _9253 + mem[_9253] + 31 < _9253 + return_data.size
        _9280 = mem[_9253 + mem[_9253]]
        if mem[_9253 + mem[_9253]] > test266151307():
            revert with 'NH{q', 65
        if _9253 + ceil32(return_data.size) + floor32(mem[_9253 + mem[_9253]]) + 1 > test266151307() or floor32(mem[_9253 + mem[_9253]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _9253 + ceil32(return_data.size) + floor32(mem[_9253 + mem[_9253]]) + 1
        mem[_9253 + ceil32(return_data.size)] = _9280
        require _9266 + (32 * _9280) + 32 <= return_data.size
        idx = 0
        s = _9253 + _9266 + 32
        t = _9253 + ceil32(return_data.size) + 32
        while idx < _9280:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _11286 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        while idx < _11286:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_9253 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9253 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9253 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_9253 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9253 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9253 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9253 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9253 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _11286 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = idx + 1
            continue 
        _11308 = mem[64]
        mem[mem[64]] = 32
        _11324 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        t = mem[64] + 64
        while idx < _11324:
            _12222 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_12222 + 32]
            mem[t + 64] = mem[_12222 + 64]
            mem[t + 96] = mem[_12222 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _11308 + (128 * _11324) + -mem[64] + 64
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 258
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
    mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
    mem[var86001] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130
    s = var86001
    idx = var86002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130] = 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 162] = 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 194] = 0
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 226] = 0
        mem[s + 32] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130
        s = s + 32
        idx = idx - 1
        continue 
    mem[mem[64] + 4] = 10^6
    mem[mem[64] + 36] = 10^12
    mem[mem[64] + 68] = 10^12
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        if var209003 < 1:
            revert with 'NH{q', 17
        if var213002 < var213001:
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            _10307 = mem[128]
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            _11288 = mem[160]
            _11304 = mem[64]
            mem[64] = mem[64] + 128
            mem[_11304] = 0
            mem[_11304 + 32] = 0
            mem[_11304 + 64] = 0
            mem[_11304 + 96] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            s = _10307
            t = var217005
            while ext_call.success:
                _11318 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11335 = mem[_11318]
                require mem[_11318] == mem[_11318 + 12 len 20]
                mem[mem[64] + 4] = address(s)
                mem[mem[64] + 36] = address(_11288)
                require ext_code.size(address(_11335))
                staticcall address(_11335).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(s), address(_11288)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11594 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11603 = mem[_11594]
                require mem[_11594] == mem[_11594 + 12 len 20]
                require ext_code.size(mem[_11594 + 12 len 20])
                staticcall mem[_11594 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11719 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _11761 = mem[_11719]
                require mem[_11719] == mem[_11719 + 18 len 14]
                _11797 = mem[_11719 + 32]
                require mem[_11719 + 32] == mem[_11719 + 50 len 14]
                require mem[_11719 + 64] == mem[_11719 + 92 len 4]
                _11855 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11855] = address(_11603)
                mem[_11855 + 32] = Mask(112, 0, _11761)
                mem[_11855 + 64] = Mask(112, 0, _11797)
                mem[_11855 + 96] = 30
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _11855
                if t == -1:
                    revert with 'NH{q', 17
                if mem[96] < 1:
                    revert with 'NH{q', 17
                if t + 1 < mem[96] - 1:
                    if 0 >= mem[96]:
                        revert with 'NH{q', 50
                    _11952 = mem[128]
                    if 1 >= mem[96]:
                        revert with 'NH{q', 50
                    _11288 = mem[160]
                    _11304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11304] = 0
                    mem[_11304 + 32] = 0
                    mem[_11304 + 64] = 0
                    mem[_11304 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    s = _11952
                    t = t + 1
                    continue 
                if cd[100] != 1:
                    require cd[100] == 2
                    _11957 = mem[64]
                    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[68]
                    mem[mem[64] + 36] = 64
                    _12001 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 100
                    while idx < _12001:
                        mem[t] = mem[s + 12 len 20]
                        _11288 = mem[160]
                        _11304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11304] = 0
                        mem[_11304 + 32] = 0
                        mem[_11304 + 64] = 0
                        mem[_11304 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _11957 + (32 * _12001) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12253 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _12264 = mem[_12253]
                    require mem[_12253] <= test266151307()
                    require _12253 + mem[_12253] + 31 < _12253 + return_data.size
                    _12283 = mem[_12253 + mem[_12253]]
                    if mem[_12253 + mem[_12253]] > test266151307():
                        revert with 'NH{q', 65
                    if _12253 + ceil32(return_data.size) + floor32(mem[_12253 + mem[_12253]]) + 1 > test266151307() or floor32(mem[_12253 + mem[_12253]]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = _12253 + ceil32(return_data.size) + floor32(mem[_12253 + mem[_12253]]) + 1
                    mem[_12253 + ceil32(return_data.size)] = _12283
                    require _12264 + (32 * _12283) + 32 <= return_data.size
                    idx = 0
                    s = _12253 + _12264 + 32
                    t = _12253 + ceil32(return_data.size) + 32
                    while idx < _12283:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        _11288 = mem[160]
                        _11304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11304] = 0
                        mem[_11304 + 32] = 0
                        mem[_11304 + 64] = 0
                        mem[_11304 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _13475 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    while idx < _13475:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                            if not mem[(32 * idx) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_12253 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12253 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12253 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]
                        else:
                            if not mem[(32 * idx + 1) + 140 len 20]:
                                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if idx > -1:
                                revert with 'NH{q', 17
                            if idx >= mem[_12253 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12253 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]
                            else:
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32] - 1:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12253 + ceil32(return_data.size) + 32]
                                if idx > -2:
                                    revert with 'NH{q', 17
                                if idx + 1 >= mem[_12253 + ceil32(return_data.size)]:
                                    revert with 'NH{q', 50
                                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                    revert with 'NH{q', 50
                                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]:
                                    revert with 'NH{q', 17
                                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12253 + ceil32(return_data.size) + 32]
                        if idx == -1:
                            revert with 'NH{q', 17
                        _11288 = mem[160]
                        _11304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11304] = 0
                        mem[_11304 + 32] = 0
                        mem[_11304 + 64] = 0
                        mem[_11304 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        _13475 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                        idx = idx + 1
                        continue 
                    _13493 = mem[64]
                    mem[mem[64]] = 32
                    _13503 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = 0
                    s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                    t = mem[64] + 64
                    while idx < _13503:
                        _13879 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_13879 + 32]
                        mem[t + 64] = mem[_13879 + 64]
                        mem[t + 96] = mem[_13879 + 96]
                        _11288 = mem[160]
                        _11304 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11304] = 0
                        mem[_11304 + 32] = 0
                        mem[_11304 + 64] = 0
                        mem[_11304 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        idx = idx + 1
                        s = s + 32
                        t = t + 128
                        continue 
                    return memory
                      from mem[64]
                       len _13493 + (128 * _13503) + -mem[64] + 64
                _11951 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _11999 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _11999:
                    mem[t] = mem[s + 12 len 20]
                    _11288 = mem[160]
                    _11304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11304] = 0
                    mem[_11304 + 32] = 0
                    mem[_11304 + 64] = 0
                    mem[_11304 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _11951 + (32 * _11999) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12254 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12265 = mem[_12254]
                require mem[_12254] <= test266151307()
                require _12254 + mem[_12254] + 31 < _12254 + return_data.size
                _12284 = mem[_12254 + mem[_12254]]
                if mem[_12254 + mem[_12254]] > test266151307():
                    revert with 'NH{q', 65
                if _12254 + ceil32(return_data.size) + floor32(mem[_12254 + mem[_12254]]) + 1 > test266151307() or floor32(mem[_12254 + mem[_12254]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12254 + ceil32(return_data.size) + floor32(mem[_12254 + mem[_12254]]) + 1
                mem[_12254 + ceil32(return_data.size)] = _12284
                require _12265 + (32 * _12284) + 32 <= return_data.size
                idx = 0
                s = _12254 + _12265 + 32
                t = _12254 + ceil32(return_data.size) + 32
                while idx < _12284:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _11288 = mem[160]
                    _11304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11304] = 0
                    mem[_11304 + 32] = 0
                    mem[_11304 + 64] = 0
                    mem[_11304 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require cd[100] == 2
                _12957 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _12988 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _12988:
                    mem[t] = mem[s + 12 len 20]
                    _11288 = mem[160]
                    _11304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11304] = 0
                    mem[_11304 + 32] = 0
                    mem[_11304 + 64] = 0
                    mem[_11304 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _12957 + (32 * _12988) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13499 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13505 = mem[_13499]
                require mem[_13499] <= test266151307()
                require _13499 + mem[_13499] + 31 < _13499 + return_data.size
                _13516 = mem[_13499 + mem[_13499]]
                if mem[_13499 + mem[_13499]] > test266151307():
                    revert with 'NH{q', 65
                if _13499 + ceil32(return_data.size) + floor32(mem[_13499 + mem[_13499]]) + 1 > test266151307() or floor32(mem[_13499 + mem[_13499]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _13499 + ceil32(return_data.size) + floor32(mem[_13499 + mem[_13499]]) + 1
                mem[_13499 + ceil32(return_data.size)] = _13516
                require _13505 + (32 * _13516) + 32 <= return_data.size
                idx = 0
                s = _13499 + _13505 + 32
                t = _13499 + ceil32(return_data.size) + 32
                while idx < _13516:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _11288 = mem[160]
                    _11304 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11304] = 0
                    mem[_11304 + 32] = 0
                    mem[_11304 + 64] = 0
                    mem[_11304 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
            revert with ext_call.return_data[0 len return_data.size]
        if cd[100] != 1:
            require cd[100] == 2
            _8127 = mem[64]
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            _8159 = mem[96]
            mem[mem[64] + 68] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < _8159:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _8127 + (32 * _8159) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9255 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _9267 = mem[_9255]
            require mem[_9255] <= test266151307()
            require _9255 + mem[_9255] + 31 < _9255 + return_data.size
            _9281 = mem[_9255 + mem[_9255]]
            if mem[_9255 + mem[_9255]] > test266151307():
                revert with 'NH{q', 65
            if _9255 + ceil32(return_data.size) + floor32(mem[_9255 + mem[_9255]]) + 1 > test266151307() or floor32(mem[_9255 + mem[_9255]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _9255 + ceil32(return_data.size) + floor32(mem[_9255 + mem[_9255]]) + 1
            mem[_9255 + ceil32(return_data.size)] = _9281
            require _9267 + (32 * _9281) + 32 <= return_data.size
            idx = 0
            s = _9255 + _9267 + 32
            t = _9255 + ceil32(return_data.size) + 32
            while idx < _9281:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _11287 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            while idx < _11287:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[96]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[_9255 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]
                else:
                    if not mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -1:
                        revert with 'NH{q', 17
                    if idx >= mem[_9255 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]
                    else:
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32] - 1:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9255 + ceil32(return_data.size) + 32]
                        if idx > -2:
                            revert with 'NH{q', 17
                        if idx + 1 >= mem[_9255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]:
                            revert with 'NH{q', 17
                        mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9255 + ceil32(return_data.size) + 32]
                if idx == -1:
                    revert with 'NH{q', 17
                _11287 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = idx + 1
                continue 
            _11309 = mem[64]
            mem[mem[64]] = 32
            _11327 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = 0
            s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
            t = mem[64] + 64
            while idx < _11327:
                _12225 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_12225 + 32]
                mem[t + 64] = mem[_12225 + 64]
                mem[t + 96] = mem[_12225 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _11309 + (128 * _11327) + -mem[64] + 64
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9256 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9268 = mem[_9256]
        require mem[_9256] <= test266151307()
        require _9256 + mem[_9256] + 31 < _9256 + return_data.size
        _9282 = mem[_9256 + mem[_9256]]
        if mem[_9256 + mem[_9256]] > test266151307():
            revert with 'NH{q', 65
        if _9256 + ceil32(return_data.size) + floor32(mem[_9256 + mem[_9256]]) + 1 > test266151307() or floor32(mem[_9256 + mem[_9256]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _9256 + ceil32(return_data.size) + floor32(mem[_9256 + mem[_9256]]) + 1
        mem[_9256 + ceil32(return_data.size)] = _9282
        require _9268 + (32 * _9282) + 32 <= return_data.size
        idx = 0
        s = _9256 + _9268 + 32
        t = _9256 + ceil32(return_data.size) + 32
        while idx < _9282:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require cd[100] == 2
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11317 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11331 = mem[_11317]
        require mem[_11317] <= test266151307()
        require _11317 + mem[_11317] + 31 < _11317 + return_data.size
        _11346 = mem[_11317 + mem[_11317]]
        if mem[_11317 + mem[_11317]] > test266151307():
            revert with 'NH{q', 65
        if _11317 + ceil32(return_data.size) + floor32(mem[_11317 + mem[_11317]]) + 1 > test266151307() or floor32(mem[_11317 + mem[_11317]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _11317 + ceil32(return_data.size) + floor32(mem[_11317 + mem[_11317]]) + 1
        mem[_11317 + ceil32(return_data.size)] = _11346
        require _11331 + (32 * _11346) + 32 <= return_data.size
        idx = 0
        s = _11317 + _11331 + 32
        t = _11317 + ceil32(return_data.size) + 32
        while idx < _11346:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _12933 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        while idx < _12933:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_11317 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_11317 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_11317 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_11317 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_11317 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _11317 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_11317 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _11317 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _12933 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = idx + 1
            continue 
        _12951 = mem[64]
        mem[mem[64]] = 32
        _12955 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        t = mem[64] + 64
        while idx < _12955:
            _13479 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_13479 + 32]
            mem[t + 64] = mem[_13479 + 64]
            mem[t + 96] = mem[_13479 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _12951 + (128 * _12955) + -mem[64] + 64
    _2121 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2126 = mem[_2121]
    require mem[_2121] == mem[_2121]
    if mem[_2121] > -101:
        revert with 'NH{q', 17
    if mem[_2121] + 100 < mem[_2121] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < mem[_2121] + -(mem[_2121] + 100 % 100) + 100:
        revert with 'NH{q', 17
    if var255003 < 1:
        revert with 'NH{q', 17
    if var259002 < var259001:
        if 0 >= mem[96]:
            revert with 'NH{q', 50
        _10309 = mem[128]
        if 1 >= mem[96]:
            revert with 'NH{q', 50
        _11290 = mem[160]
        _11306 = mem[64]
        mem[64] = mem[64] + 128
        mem[_11306] = 0
        mem[_11306 + 32] = 0
        mem[_11306 + 64] = 0
        mem[_11306 + 96] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        s = _10309
        t = var263005
        while ext_call.success:
            _11320 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11336 = mem[_11320]
            require mem[_11320] == mem[_11320 + 12 len 20]
            mem[mem[64] + 4] = address(s)
            mem[mem[64] + 36] = address(_11290)
            require ext_code.size(address(_11336))
            staticcall address(_11336).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(s), address(_11290)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11596 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11604 = mem[_11596]
            require mem[_11596] == mem[_11596 + 12 len 20]
            require ext_code.size(mem[_11596 + 12 len 20])
            staticcall mem[_11596 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11722 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _11762 = mem[_11722]
            require mem[_11722] == mem[_11722 + 18 len 14]
            _11806 = mem[_11722 + 32]
            require mem[_11722 + 32] == mem[_11722 + 50 len 14]
            require mem[_11722 + 64] == mem[_11722 + 92 len 4]
            _11856 = mem[64]
            mem[64] = mem[64] + 128
            mem[_11856] = address(_11604)
            mem[_11856 + 32] = Mask(112, 0, _11762)
            mem[_11856 + 64] = Mask(112, 0, _11806)
            mem[_11856 + 96] = -_2126 + (_2126 + 100 % 100) + 999900 / 100
            if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                revert with 'NH{q', 50
            mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _11856
            if t == -1:
                revert with 'NH{q', 17
            if mem[96] < 1:
                revert with 'NH{q', 17
            if t + 1 < mem[96] - 1:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _11955 = mem[128]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _11290 = mem[160]
                _11306 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11306] = 0
                mem[_11306 + 32] = 0
                mem[_11306 + 64] = 0
                mem[_11306 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                s = _11955
                t = t + 1
                continue 
            if cd[100] != 1:
                require cd[100] == 2
                _11958 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _12002 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _12002:
                    mem[t] = mem[s + 12 len 20]
                    _11290 = mem[160]
                    _11306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11306] = 0
                    mem[_11306 + 32] = 0
                    mem[_11306 + 64] = 0
                    mem[_11306 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _11958 + (32 * _12002) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12255 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12267 = mem[_12255]
                require mem[_12255] <= test266151307()
                require _12255 + mem[_12255] + 31 < _12255 + return_data.size
                _12285 = mem[_12255 + mem[_12255]]
                if mem[_12255 + mem[_12255]] > test266151307():
                    revert with 'NH{q', 65
                if _12255 + ceil32(return_data.size) + floor32(mem[_12255 + mem[_12255]]) + 1 > test266151307() or floor32(mem[_12255 + mem[_12255]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _12255 + ceil32(return_data.size) + floor32(mem[_12255 + mem[_12255]]) + 1
                mem[_12255 + ceil32(return_data.size)] = _12285
                require _12267 + (32 * _12285) + 32 <= return_data.size
                idx = 0
                s = _12255 + _12267 + 32
                t = _12255 + ceil32(return_data.size) + 32
                while idx < _12285:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    _11290 = mem[160]
                    _11306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11306] = 0
                    mem[_11306 + 32] = 0
                    mem[_11306 + 64] = 0
                    mem[_11306 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _13476 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                while idx < _13476:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                    if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[_12255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12255 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12255 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]
                    else:
                        if not mem[(32 * idx + 1) + 140 len 20]:
                            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if idx > -1:
                            revert with 'NH{q', 17
                        if idx >= mem[_12255 + ceil32(return_data.size)]:
                            revert with 'NH{q', 50
                        if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                            revert with 'NH{q', 50
                        if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12255 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]
                        else:
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32] - 1:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _12255 + ceil32(return_data.size) + 32]
                            if idx > -2:
                                revert with 'NH{q', 17
                            if idx + 1 >= mem[_12255 + ceil32(return_data.size)]:
                                revert with 'NH{q', 50
                            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                                revert with 'NH{q', 50
                            if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]:
                                revert with 'NH{q', 17
                            mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _12255 + ceil32(return_data.size) + 32]
                    if idx == -1:
                        revert with 'NH{q', 17
                    _11290 = mem[160]
                    _11306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11306] = 0
                    mem[_11306 + 32] = 0
                    mem[_11306 + 64] = 0
                    mem[_11306 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    _13476 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                    idx = idx + 1
                    continue 
                _13497 = mem[64]
                mem[mem[64]] = 32
                _13504 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
                t = mem[64] + 64
                while idx < _13504:
                    _13880 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_13880 + 32]
                    mem[t + 64] = mem[_13880 + 64]
                    mem[t + 96] = mem[_13880 + 96]
                    _11290 = mem[160]
                    _11306 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11306] = 0
                    mem[_11306 + 32] = 0
                    mem[_11306 + 64] = 0
                    mem[_11306 + 96] = 0
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    idx = idx + 1
                    s = s + 32
                    t = t + 128
                    continue 
                return memory
                  from mem[64]
                   len _13497 + (128 * _13504) + -mem[64] + 64
            _11954 = mem[64]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            _12000 = mem[96]
            mem[mem[64] + 68] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < _12000:
                mem[t] = mem[s + 12 len 20]
                _11290 = mem[160]
                _11306 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11306] = 0
                mem[_11306 + 32] = 0
                mem[_11306 + 64] = 0
                mem[_11306 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _11954 + (32 * _12000) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12256 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12268 = mem[_12256]
            require mem[_12256] <= test266151307()
            require _12256 + mem[_12256] + 31 < _12256 + return_data.size
            _12286 = mem[_12256 + mem[_12256]]
            if mem[_12256 + mem[_12256]] > test266151307():
                revert with 'NH{q', 65
            if _12256 + ceil32(return_data.size) + floor32(mem[_12256 + mem[_12256]]) + 1 > test266151307() or floor32(mem[_12256 + mem[_12256]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _12256 + ceil32(return_data.size) + floor32(mem[_12256 + mem[_12256]]) + 1
            mem[_12256 + ceil32(return_data.size)] = _12286
            require _12268 + (32 * _12286) + 32 <= return_data.size
            idx = 0
            s = _12256 + _12268 + 32
            t = _12256 + ceil32(return_data.size) + 32
            while idx < _12286:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _11290 = mem[160]
                _11306 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11306] = 0
                mem[_11306 + 32] = 0
                mem[_11306 + 64] = 0
                mem[_11306 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require cd[100] == 2
            _12960 = mem[64]
            mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68]
            mem[mem[64] + 36] = 64
            _12990 = mem[96]
            mem[mem[64] + 68] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 100
            while idx < _12990:
                mem[t] = mem[s + 12 len 20]
                _11290 = mem[160]
                _11306 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11306] = 0
                mem[_11306 + 32] = 0
                mem[_11306 + 64] = 0
                mem[_11306 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _12960 + (32 * _12990) + -mem[64] + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13500 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _13506 = mem[_13500]
            require mem[_13500] <= test266151307()
            require _13500 + mem[_13500] + 31 < _13500 + return_data.size
            _13518 = mem[_13500 + mem[_13500]]
            if mem[_13500 + mem[_13500]] > test266151307():
                revert with 'NH{q', 65
            if _13500 + ceil32(return_data.size) + floor32(mem[_13500 + mem[_13500]]) + 1 > test266151307() or floor32(mem[_13500 + mem[_13500]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _13500 + ceil32(return_data.size) + floor32(mem[_13500 + mem[_13500]]) + 1
            mem[_13500 + ceil32(return_data.size)] = _13518
            require _13506 + (32 * _13518) + 32 <= return_data.size
            idx = 0
            s = _13500 + _13506 + 32
            t = _13500 + ceil32(return_data.size) + 32
            while idx < _13518:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                _11290 = mem[160]
                _11306 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11306] = 0
                mem[_11306 + 32] = 0
                mem[_11306 + 64] = 0
                mem[_11306 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            # nil
        revert with ext_call.return_data[0 len return_data.size]
    if cd[100] != 1:
        require cd[100] == 2
        _8129 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[68]
        mem[mem[64] + 36] = 64
        _8160 = mem[96]
        mem[mem[64] + 68] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 100
        while idx < _8160:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _8129 + (32 * _8160) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9259 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _9270 = mem[_9259]
        require mem[_9259] <= test266151307()
        require _9259 + mem[_9259] + 31 < _9259 + return_data.size
        _9284 = mem[_9259 + mem[_9259]]
        if mem[_9259 + mem[_9259]] > test266151307():
            revert with 'NH{q', 65
        if _9259 + ceil32(return_data.size) + floor32(mem[_9259 + mem[_9259]]) + 1 > test266151307() or floor32(mem[_9259 + mem[_9259]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _9259 + ceil32(return_data.size) + floor32(mem[_9259 + mem[_9259]]) + 1
        mem[_9259 + ceil32(return_data.size)] = _9284
        require _9270 + (32 * _9284) + 32 <= return_data.size
        idx = 0
        s = _9259 + _9270 + 32
        t = _9259 + ceil32(return_data.size) + 32
        while idx < _9284:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _11289 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        while idx < _11289:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_9259 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9259 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9259 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]
            else:
                if not mem[(32 * idx + 1) + 140 len 20]:
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx > -1:
                    revert with 'NH{q', 17
                if idx >= mem[_9259 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9259 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]
                else:
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32] - 1:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _9259 + ceil32(return_data.size) + 32]
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[_9259 + ceil32(return_data.size)]:
                        revert with 'NH{q', 50
                    if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]:
                        revert with 'NH{q', 17
                    mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _9259 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _11289 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
            idx = idx + 1
            continue 
        _11313 = mem[64]
        mem[mem[64]] = 32
        _11328 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        t = mem[64] + 64
        while idx < _11328:
            _12228 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_12228 + 32]
            mem[t + 64] = mem[_12228 + 64]
            mem[t + 96] = mem[_12228 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _11313 + (128 * _11328) + -mem[64] + 64
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[68], 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _9260 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _9271 = mem[_9260]
    require mem[_9260] <= test266151307()
    require _9260 + mem[_9260] + 31 < _9260 + return_data.size
    _9285 = mem[_9260 + mem[_9260]]
    if mem[_9260 + mem[_9260]] > test266151307():
        revert with 'NH{q', 65
    if _9260 + ceil32(return_data.size) + floor32(mem[_9260 + mem[_9260]]) + 1 > test266151307() or floor32(mem[_9260 + mem[_9260]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _9260 + ceil32(return_data.size) + floor32(mem[_9260 + mem[_9260]]) + 1
    mem[_9260 + ceil32(return_data.size)] = _9285
    require _9271 + (32 * _9285) + 32 <= return_data.size
    idx = 0
    s = _9260 + _9271 + 32
    t = _9260 + ceil32(return_data.size) + 32
    while idx < _9285:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] == 2
    mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = cd[68]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 100
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[68], 64, mem[mem[64] + 68 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _11319 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _11332 = mem[_11319]
    require mem[_11319] <= test266151307()
    require _11319 + mem[_11319] + 31 < _11319 + return_data.size
    _11348 = mem[_11319 + mem[_11319]]
    if mem[_11319 + mem[_11319]] > test266151307():
        revert with 'NH{q', 65
    if _11319 + ceil32(return_data.size) + floor32(mem[_11319 + mem[_11319]]) + 1 > test266151307() or floor32(mem[_11319 + mem[_11319]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _11319 + ceil32(return_data.size) + floor32(mem[_11319 + mem[_11319]]) + 1
    mem[_11319 + ceil32(return_data.size)] = _11348
    require _11332 + (32 * _11348) + 32 <= return_data.size
    idx = 0
    s = _11319 + _11332 + 32
    t = _11319 + ceil32(return_data.size) + 32
    while idx < _11348:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _12934 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
    idx = 0
    while idx < _12934:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * idx) + 140 len 20] == mem[(32 * idx + 1) + 140 len 20]:
            revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
        if mem[(32 * idx) + 140 len 20] < mem[(32 * idx + 1) + 140 len 20]:
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > -1:
                revert with 'NH{q', 17
            if idx >= mem[_11319 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_11319 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32] - 1:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]
            else:
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32] - 1:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_11319 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]
        else:
            if not mem[(32 * idx + 1) + 140 len 20]:
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx > -1:
                revert with 'NH{q', 17
            if idx >= mem[_11319 + ceil32(return_data.size)]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                revert with 'NH{q', 50
            if mem[(32 * idx + 1) + 140 len 20] != mem[(32 * idx) + 140 len 20]:
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] < mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] - mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_11319 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32] - 1:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]
            else:
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] > -mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32] - 1:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 32] + mem[(32 * idx) + _11319 + ceil32(return_data.size) + 32]
                if idx > -2:
                    revert with 'NH{q', 17
                if idx + 1 >= mem[_11319 + ceil32(return_data.size)]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                    revert with 'NH{q', 50
                if mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] < mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]:
                    revert with 'NH{q', 17
                mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] = mem[mem[(32 * idx) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] + 64] - mem[(32 * idx + 1) + _11319 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        _12934 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = idx + 1
        continue 
    _12952 = mem[64]
    mem[mem[64]] = 32
    _12958 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
    idx = 0
    s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
    t = mem[64] + 64
    while idx < _12958:
        _13482 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_13482 + 32]
        mem[t + 64] = mem[_13482 + 64]
        mem[t + 96] = mem[_13482 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _12952 + (128 * _12958) + -mem[64] + 64
}



}
