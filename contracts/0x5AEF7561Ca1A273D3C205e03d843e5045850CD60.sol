contract main {




// =====================  Runtime code  =====================


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

function sub_b7a9db38(?) payable {
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
    mem[floor32(('cd', 100).length) + 97] = 0
    mem[floor32(('cd', 100).length) + 129] = 0
    mem[floor32(('cd', 100).length) + 161] = 0
    mem[floor32(('cd', 100).length) + 193] = 0
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 100).length) + 225] = ('cd', 100).length
    if not ('cd', 100).length:
        if ('cd', 100).length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257] = ('cd', 100).length
        mem[64] = floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 289
        if not ('cd', 100).length:
            idx = 0
            while idx < ('cd', 100).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _811 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^6
                mem[mem[64] + 36] = 10^12
                mem[mem[64] + 68] = 10^12
                require ext_code.size(address(_811))
                staticcall address(_811).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^6, 10^12, 10^12
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _854 = mem[(32 * idx) + 128]
                    _858 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_858] = 0
                    mem[_858 + 32] = 0
                    mem[_858 + 64] = 0
                    mem[_858 + 96] = 0
                    require ext_code.size(address(_854))
                    staticcall address(_854).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _873 = mem[_865]
                    require mem[_865] == mem[_865 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(cd[36])
                    require ext_code.size(address(_873))
                    staticcall address(_873).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _925 = mem[_919]
                    require mem[_919] == mem[_919 + 12 len 20]
                    require ext_code.size(mem[_919 + 12 len 20])
                    staticcall mem[_919 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _952 = mem[_943]
                    require mem[_943] == mem[_943 + 18 len 14]
                    _979 = mem[_943 + 32]
                    require mem[_943 + 32] == mem[_943 + 50 len 14]
                    require mem[_943 + 64] == mem[_943 + 92 len 4]
                    _1014 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1014] = address(_925)
                    mem[_1014 + 32] = Mask(112, 0, _952)
                    mem[_1014 + 64] = Mask(112, 0, _979)
                    mem[_1014 + 96] = 30
                    if idx >= mem[floor32(('cd', 100).length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1014
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1019 = mem[(32 * idx) + 128]
                    _1023 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1023] = 0
                    mem[_1023 + 32] = 0
                    mem[_1023 + 64] = 0
                    mem[_1023 + 96] = 0
                    require ext_code.size(address(_1019))
                    staticcall address(_1019).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1035 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1043 = mem[_1035]
                    require mem[_1035] == mem[_1035 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_1043))
                    staticcall address(_1043).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1138 = mem[_1129]
                    require mem[_1129] == mem[_1129 + 12 len 20]
                    require ext_code.size(mem[_1129 + 12 len 20])
                    staticcall mem[_1129 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1176 = mem[_1167]
                    require mem[_1167] == mem[_1167 + 18 len 14]
                    _1201 = mem[_1167 + 32]
                    require mem[_1167 + 32] == mem[_1167 + 50 len 14]
                    require mem[_1167 + 64] == mem[_1167 + 92 len 4]
                    _1225 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1225] = address(_1138)
                    mem[_1225 + 32] = Mask(112, 0, _1176)
                    mem[_1225 + 64] = Mask(112, 0, _1201)
                    mem[_1225 + 96] = 30
                    if idx >= mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = _1225
                else:
                    _849 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _852 = mem[_849]
                    require mem[_849] == mem[_849]
                    if mem[_849] > -101:
                        revert with 'NH{q', 17
                    if mem[_849] + 100 < mem[_849] + 100 % 100:
                        revert with 'NH{q', 17
                    if 10^6 < mem[_849] + -(mem[_849] + 100 % 100) + 100:
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _942 = mem[(32 * idx) + 128]
                    _946 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_946] = 0
                    mem[_946 + 32] = 0
                    mem[_946 + 64] = 0
                    mem[_946 + 96] = 0
                    require ext_code.size(address(_942))
                    staticcall address(_942).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _957 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _965 = mem[_957]
                    require mem[_957] == mem[_957 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(cd[36])
                    require ext_code.size(address(_965))
                    staticcall address(_965).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(cd[36])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1036 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1044 = mem[_1036]
                    require mem[_1036] == mem[_1036 + 12 len 20]
                    require ext_code.size(mem[_1036 + 12 len 20])
                    staticcall mem[_1036 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1084 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1091 = mem[_1084]
                    require mem[_1084] == mem[_1084 + 18 len 14]
                    _1116 = mem[_1084 + 32]
                    require mem[_1084 + 32] == mem[_1084 + 50 len 14]
                    require mem[_1084 + 64] == mem[_1084 + 92 len 4]
                    _1155 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1155] = address(_1044)
                    mem[_1155 + 32] = Mask(112, 0, _1091)
                    mem[_1155 + 64] = Mask(112, 0, _1116)
                    mem[_1155 + 96] = -_852 + (_852 + 100 % 100) + 999900 / 100
                    if idx >= mem[floor32(('cd', 100).length) + 225]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1155
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1166 = mem[(32 * idx) + 128]
                    _1168 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1168] = 0
                    mem[_1168 + 32] = 0
                    mem[_1168 + 64] = 0
                    mem[_1168 + 96] = 0
                    require ext_code.size(address(_1166))
                    staticcall address(_1166).factory() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1181 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1190 = mem[_1181]
                    require mem[_1181] == mem[_1181 + 12 len 20]
                    mem[mem[64] + 4] = stor0
                    mem[mem[64] + 36] = address(cd[68])
                    require ext_code.size(address(_1190))
                    staticcall address(_1190).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor0, address(cd[68])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1234 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1236 = mem[_1234]
                    require mem[_1234] == mem[_1234 + 12 len 20]
                    require ext_code.size(mem[_1234 + 12 len 20])
                    staticcall mem[_1234 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1251 = mem[_1249]
                    require mem[_1249] == mem[_1249 + 18 len 14]
                    _1259 = mem[_1249 + 32]
                    require mem[_1249 + 32] == mem[_1249 + 50 len 14]
                    require mem[_1249 + 64] == mem[_1249 + 92 len 4]
                    _1294 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_1294] = address(_1236)
                    mem[_1294 + 32] = Mask(112, 0, _1251)
                    mem[_1294 + 64] = Mask(112, 0, _1259)
                    mem[_1294 + 96] = -_852 + (_852 + 100 % 100) + 999900 / 100
                    if idx >= mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = _1294
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _812 = mem[64]
            mem[64] = mem[64] + 128
            mem[_812] = 0
            mem[_812 + 32] = 0
            mem[_812 + 64] = 0
            mem[_812 + 96] = 0
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _819 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _827 = mem[_819]
            require mem[_819] == mem[_819 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_827))
            staticcall address(_827).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _888 = mem[_882]
            require mem[_882] == mem[_882 + 12 len 20]
            require ext_code.size(mem[_882 + 12 len 20])
            staticcall mem[_882 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _908 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _910 = mem[_908]
            require mem[_908] == mem[_908 + 18 len 14]
            _921 = mem[_908 + 32]
            require mem[_908 + 32] == mem[_908 + 50 len 14]
            require mem[_908 + 64] == mem[_908 + 92 len 4]
            _948 = mem[64]
            mem[64] = mem[64] + 128
            mem[_948] = address(_888)
            mem[_948 + 32] = Mask(112, 0, _910)
            mem[_948 + 64] = Mask(112, 0, _921)
            mem[_948 + 96] = 0
            _956 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = address(_888)
            mem[mem[64] + 64] = Mask(112, 0, _910)
            mem[mem[64] + 96] = Mask(112, 0, _921)
            mem[mem[64] + 128] = 0
            mem[mem[64] + 160] = 224
            _1031 = mem[floor32(('cd', 100).length) + 225]
            mem[mem[64] + 224] = mem[floor32(('cd', 100).length) + 225]
            idx = 0
            s = floor32(('cd', 100).length) + 257
            t = mem[64] + 256
            while idx < _1031:
                _1262 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1262 + 32]
                mem[t + 64] = mem[_1262 + 64]
                mem[t + 96] = mem[_1262 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            mem[_956 + 192] = (128 * _1031) + 256
            _1265 = mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]
            mem[_956 + (128 * _1031) + 256] = mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]
            idx = 0
            s = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289
            t = _956 + (128 * _1031) + 288
            while idx < _1265:
                _1619 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1619 + 32]
                mem[t + 64] = mem[_1619 + 64]
                mem[t + 96] = mem[_1619 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _956 + (128 * _1031) + (128 * _1265) + -mem[64] + 288
        mem[64] = floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 417
        mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 289] = 0
        mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 321] = 0
        mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 353] = 0
        mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 385] = 0
        mem[var64001] = floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 289
        s = var64001
        idx = var64002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 289] = 0
            mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 321] = 0
            mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 353] = 0
            mem[floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 385] = 0
            mem[s + 32] = floor32(('cd', 100).length) + (64 * ('cd', 100).length) + 289
            s = s + 32
            idx = idx - 1
            continue 
        _1617 = mem[96]
        idx = 0
        while idx < _1617:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1623 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_1623))
            staticcall address(_1623).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1662 = mem[(32 * idx) + 128]
                _1666 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1666] = 0
                mem[_1666 + 32] = 0
                mem[_1666 + 64] = 0
                mem[_1666 + 96] = 0
                require ext_code.size(address(_1662))
                staticcall address(_1662).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1678 = mem[_1674]
                require mem[_1674] == mem[_1674 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_1678))
                staticcall address(_1678).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1714 = mem[_1709]
                require mem[_1709] == mem[_1709 + 12 len 20]
                require ext_code.size(mem[_1709 + 12 len 20])
                staticcall mem[_1709 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1741 = mem[_1730]
                require mem[_1730] == mem[_1730 + 18 len 14]
                _1762 = mem[_1730 + 32]
                require mem[_1730 + 32] == mem[_1730 + 50 len 14]
                require mem[_1730 + 64] == mem[_1730 + 92 len 4]
                _1780 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1780] = address(_1714)
                mem[_1780 + 32] = Mask(112, 0, _1741)
                mem[_1780 + 64] = Mask(112, 0, _1762)
                mem[_1780 + 96] = 30
                if idx >= mem[floor32(('cd', 100).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1780
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1788 = mem[(32 * idx) + 128]
                _1790 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1790] = 0
                mem[_1790 + 32] = 0
                mem[_1790 + 64] = 0
                mem[_1790 + 96] = 0
                require ext_code.size(address(_1788))
                staticcall address(_1788).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1804 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1810 = mem[_1804]
                require mem[_1804] == mem[_1804 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1810))
                staticcall address(_1810).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1876 = mem[_1871]
                require mem[_1871] == mem[_1871 + 12 len 20]
                require ext_code.size(mem[_1871 + 12 len 20])
                staticcall mem[_1871 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1900 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1910 = mem[_1900]
                require mem[_1900] == mem[_1900 + 18 len 14]
                _1926 = mem[_1900 + 32]
                require mem[_1900 + 32] == mem[_1900 + 50 len 14]
                require mem[_1900 + 64] == mem[_1900 + 92 len 4]
                _1936 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1936] = address(_1876)
                mem[_1936 + 32] = Mask(112, 0, _1910)
                mem[_1936 + 64] = Mask(112, 0, _1926)
                mem[_1936 + 96] = 30
                if idx >= mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = _1936
            else:
                _1655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1658 = mem[_1655]
                require mem[_1655] == mem[_1655]
                if mem[_1655] > -101:
                    revert with 'NH{q', 17
                if mem[_1655] + 100 < mem[_1655] + 100 % 100:
                    revert with 'NH{q', 17
                if 10^6 < mem[_1655] + -(mem[_1655] + 100 % 100) + 100:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1728 = mem[(32 * idx) + 128]
                _1733 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1733] = 0
                mem[_1733 + 32] = 0
                mem[_1733 + 64] = 0
                mem[_1733 + 96] = 0
                require ext_code.size(address(_1728))
                staticcall address(_1728).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1753 = mem[_1747]
                require mem[_1747] == mem[_1747 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_1753))
                staticcall address(_1753).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1805 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1811 = mem[_1805]
                require mem[_1805] == mem[_1805 + 12 len 20]
                require ext_code.size(mem[_1805 + 12 len 20])
                staticcall mem[_1805 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1837 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1843 = mem[_1837]
                require mem[_1837] == mem[_1837 + 18 len 14]
                _1864 = mem[_1837 + 32]
                require mem[_1837 + 32] == mem[_1837 + 50 len 14]
                require mem[_1837 + 64] == mem[_1837 + 92 len 4]
                _1888 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1888] = address(_1811)
                mem[_1888 + 32] = Mask(112, 0, _1843)
                mem[_1888 + 64] = Mask(112, 0, _1864)
                mem[_1888 + 96] = -_1658 + (_1658 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 100).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1888
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1898 = mem[(32 * idx) + 128]
                _1902 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1902] = 0
                mem[_1902 + 32] = 0
                mem[_1902 + 64] = 0
                mem[_1902 + 96] = 0
                require ext_code.size(address(_1898))
                staticcall address(_1898).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1915 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1920 = mem[_1915]
                require mem[_1915] == mem[_1915 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1920))
                staticcall address(_1920).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1946 = mem[_1944]
                require mem[_1944] == mem[_1944 + 12 len 20]
                require ext_code.size(mem[_1944 + 12 len 20])
                staticcall mem[_1944 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1955 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1957 = mem[_1955]
                require mem[_1955] == mem[_1955 + 18 len 14]
                _1963 = mem[_1955 + 32]
                require mem[_1955 + 32] == mem[_1955 + 50 len 14]
                require mem[_1955 + 64] == mem[_1955 + 92 len 4]
                _1993 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1993] = address(_1946)
                mem[_1993 + 32] = Mask(112, 0, _1957)
                mem[_1993 + 64] = Mask(112, 0, _1963)
                mem[_1993 + 96] = -_1658 + (_1658 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = _1993
            if idx == -1:
                revert with 'NH{q', 17
            _1617 = mem[96]
            idx = idx + 1
            continue 
        _1627 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1627] = 0
        mem[_1627 + 32] = 0
        mem[_1627 + 64] = 0
        mem[_1627 + 96] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1636 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1643 = mem[_1636]
        require mem[_1636] == mem[_1636 + 12 len 20]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_1643))
        staticcall address(_1643).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1685 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1688 = mem[_1685]
        require mem[_1685] == mem[_1685 + 12 len 20]
        require ext_code.size(mem[_1685 + 12 len 20])
        staticcall mem[_1685 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1700 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1702 = mem[_1700]
        require mem[_1700] == mem[_1700 + 18 len 14]
        _1712 = mem[_1700 + 32]
        require mem[_1700 + 32] == mem[_1700 + 50 len 14]
        require mem[_1700 + 64] == mem[_1700 + 92 len 4]
        _1735 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1735] = address(_1688)
        mem[_1735 + 32] = Mask(112, 0, _1702)
        mem[_1735 + 64] = Mask(112, 0, _1712)
        mem[_1735 + 96] = 0
        _1746 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = address(_1688)
        mem[mem[64] + 64] = Mask(112, 0, _1702)
        mem[mem[64] + 96] = Mask(112, 0, _1712)
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = 224
        _1801 = mem[floor32(('cd', 100).length) + 225]
        mem[mem[64] + 224] = mem[floor32(('cd', 100).length) + 225]
        idx = 0
        s = floor32(('cd', 100).length) + 257
        t = mem[64] + 256
        while idx < _1801:
            _1966 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1966 + 32]
            mem[t + 64] = mem[_1966 + 64]
            mem[t + 96] = mem[_1966 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        mem[_1746 + 192] = (128 * _1801) + 256
        _1970 = mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]
        mem[_1746 + (128 * _1801) + 256] = mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257]
        idx = 0
        s = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289
        t = _1746 + (128 * _1801) + 288
        while idx < _1970:
            _2110 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2110 + 32]
            mem[t + 64] = mem[_2110 + 64]
            mem[t + 96] = mem[_2110 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1746 + (128 * _1801) + (128 * _1970) + -mem[64] + 288
    mem[64] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 385
    mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257] = 0
    mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = 0
    mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 321] = 0
    mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 353] = 0
    mem[var62001] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257
    s = var62001
    idx = var62002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257] = 0
        mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 289] = 0
        mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 321] = 0
        mem[floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 353] = 0
        mem[s + 32] = floor32(('cd', 100).length) + (32 * ('cd', 100).length) + 257
        s = s + 32
        idx = idx - 1
        continue 
    _1264 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _1267 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1264) + 32
    if not _1264:
        _1618 = mem[96]
        idx = 0
        while idx < _1618:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1624 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_1624))
            staticcall address(_1624).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1663 = mem[(32 * idx) + 128]
                _1667 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1667] = 0
                mem[_1667 + 32] = 0
                mem[_1667 + 64] = 0
                mem[_1667 + 96] = 0
                require ext_code.size(address(_1663))
                staticcall address(_1663).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1679 = mem[_1675]
                require mem[_1675] == mem[_1675 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_1679))
                staticcall address(_1679).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1710 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1715 = mem[_1710]
                require mem[_1710] == mem[_1710 + 12 len 20]
                require ext_code.size(mem[_1710 + 12 len 20])
                staticcall mem[_1710 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1731 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1742 = mem[_1731]
                require mem[_1731] == mem[_1731 + 18 len 14]
                _1764 = mem[_1731 + 32]
                require mem[_1731 + 32] == mem[_1731 + 50 len 14]
                require mem[_1731 + 64] == mem[_1731 + 92 len 4]
                _1782 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1782] = address(_1715)
                mem[_1782 + 32] = Mask(112, 0, _1742)
                mem[_1782 + 64] = Mask(112, 0, _1764)
                mem[_1782 + 96] = 30
                if idx >= mem[floor32(('cd', 100).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1782
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1789 = mem[(32 * idx) + 128]
                _1791 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1791] = 0
                mem[_1791 + 32] = 0
                mem[_1791 + 64] = 0
                mem[_1791 + 96] = 0
                require ext_code.size(address(_1789))
                staticcall address(_1789).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1806 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1812 = mem[_1806]
                require mem[_1806] == mem[_1806 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1812))
                staticcall address(_1812).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1873 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1878 = mem[_1873]
                require mem[_1873] == mem[_1873 + 12 len 20]
                require ext_code.size(mem[_1873 + 12 len 20])
                staticcall mem[_1873 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1901 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1911 = mem[_1901]
                require mem[_1901] == mem[_1901 + 18 len 14]
                _1927 = mem[_1901 + 32]
                require mem[_1901 + 32] == mem[_1901 + 50 len 14]
                require mem[_1901 + 64] == mem[_1901 + 92 len 4]
                _1937 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1937] = address(_1878)
                mem[_1937 + 32] = Mask(112, 0, _1911)
                mem[_1937 + 64] = Mask(112, 0, _1927)
                mem[_1937 + 96] = 30
                if idx >= mem[_1267]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _1267 + 32] = _1937
            else:
                _1656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1660 = mem[_1656]
                require mem[_1656] == mem[_1656]
                if mem[_1656] > -101:
                    revert with 'NH{q', 17
                if mem[_1656] + 100 < mem[_1656] + 100 % 100:
                    revert with 'NH{q', 17
                if 10^6 < mem[_1656] + -(mem[_1656] + 100 % 100) + 100:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1729 = mem[(32 * idx) + 128]
                _1734 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1734] = 0
                mem[_1734 + 32] = 0
                mem[_1734 + 64] = 0
                mem[_1734 + 96] = 0
                require ext_code.size(address(_1729))
                staticcall address(_1729).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1749 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1754 = mem[_1749]
                require mem[_1749] == mem[_1749 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[36])
                require ext_code.size(address(_1754))
                staticcall address(_1754).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[36])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1807 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1813 = mem[_1807]
                require mem[_1807] == mem[_1807 + 12 len 20]
                require ext_code.size(mem[_1807 + 12 len 20])
                staticcall mem[_1807 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1839 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1844 = mem[_1839]
                require mem[_1839] == mem[_1839 + 18 len 14]
                _1866 = mem[_1839 + 32]
                require mem[_1839 + 32] == mem[_1839 + 50 len 14]
                require mem[_1839 + 64] == mem[_1839 + 92 len 4]
                _1889 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1889] = address(_1813)
                mem[_1889 + 32] = Mask(112, 0, _1844)
                mem[_1889 + 64] = Mask(112, 0, _1866)
                mem[_1889 + 96] = -_1660 + (_1660 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 100).length) + 225]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _1889
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1899 = mem[(32 * idx) + 128]
                _1903 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1903] = 0
                mem[_1903 + 32] = 0
                mem[_1903 + 64] = 0
                mem[_1903 + 96] = 0
                require ext_code.size(address(_1899))
                staticcall address(_1899).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1916 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1921 = mem[_1916]
                require mem[_1916] == mem[_1916 + 12 len 20]
                mem[mem[64] + 4] = stor0
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_1921))
                staticcall address(_1921).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor0, address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1945 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1947 = mem[_1945]
                require mem[_1945] == mem[_1945 + 12 len 20]
                require ext_code.size(mem[_1945 + 12 len 20])
                staticcall mem[_1945 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1956 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1958 = mem[_1956]
                require mem[_1956] == mem[_1956 + 18 len 14]
                _1964 = mem[_1956 + 32]
                require mem[_1956 + 32] == mem[_1956 + 50 len 14]
                require mem[_1956 + 64] == mem[_1956 + 92 len 4]
                _1994 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1994] = address(_1947)
                mem[_1994 + 32] = Mask(112, 0, _1958)
                mem[_1994 + 64] = Mask(112, 0, _1964)
                mem[_1994 + 96] = -_1660 + (_1660 + 100 % 100) + 999900 / 100
                if idx >= mem[_1267]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _1267 + 32] = _1994
            if idx == -1:
                revert with 'NH{q', 17
            _1618 = mem[96]
            idx = idx + 1
            continue 
        _1629 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1629] = 0
        mem[_1629 + 32] = 0
        mem[_1629 + 64] = 0
        mem[_1629 + 96] = 0
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1637 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1644 = mem[_1637]
        require mem[_1637] == mem[_1637 + 12 len 20]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_1644))
        staticcall address(_1644).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1686 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1689 = mem[_1686]
        require mem[_1686] == mem[_1686 + 12 len 20]
        require ext_code.size(mem[_1686 + 12 len 20])
        staticcall mem[_1686 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1701 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1703 = mem[_1701]
        require mem[_1701] == mem[_1701 + 18 len 14]
        _1713 = mem[_1701 + 32]
        require mem[_1701 + 32] == mem[_1701 + 50 len 14]
        require mem[_1701 + 64] == mem[_1701 + 92 len 4]
        _1738 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1738] = address(_1689)
        mem[_1738 + 32] = Mask(112, 0, _1703)
        mem[_1738 + 64] = Mask(112, 0, _1713)
        mem[_1738 + 96] = 0
        _1748 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = address(_1689)
        mem[mem[64] + 64] = Mask(112, 0, _1703)
        mem[mem[64] + 96] = Mask(112, 0, _1713)
        mem[mem[64] + 128] = 0
        mem[mem[64] + 160] = 224
        _1802 = mem[floor32(('cd', 100).length) + 225]
        mem[mem[64] + 224] = mem[floor32(('cd', 100).length) + 225]
        idx = 0
        s = floor32(('cd', 100).length) + 257
        t = mem[64] + 256
        while idx < _1802:
            _1967 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1967 + 32]
            mem[t + 64] = mem[_1967 + 64]
            mem[t + 96] = mem[_1967 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        mem[_1748 + 192] = (128 * _1802) + 256
        _1971 = mem[_1267]
        mem[_1748 + (128 * _1802) + 256] = mem[_1267]
        idx = 0
        s = _1267 + 32
        t = _1748 + (128 * _1802) + 288
        while idx < _1971:
            _2111 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2111 + 32]
            mem[t + 64] = mem[_2111 + 64]
            mem[t + 96] = mem[_2111 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _1748 + (128 * _1802) + (128 * _1971) + -mem[64] + 288
    mem[64] = _1267 + (32 * _1264) + 160
    mem[_1267 + (32 * _1264) + 32] = 0
    mem[_1267 + (32 * _1264) + 64] = 0
    mem[_1267 + (32 * _1264) + 96] = 0
    mem[_1267 + (32 * _1264) + 128] = 0
    mem[var71001] = _1267 + (32 * _1264) + 32
    s = var71001
    idx = var71002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_1267 + (32 * _1264) + 32] = 0
        mem[_1267 + (32 * _1264) + 64] = 0
        mem[_1267 + (32 * _1264) + 96] = 0
        mem[_1267 + (32 * _1264) + 128] = 0
        mem[s + 32] = _1267 + (32 * _1264) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _2109 = mem[96]
    idx = 0
    while idx < _2109:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2113 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^6
        mem[mem[64] + 36] = 10^12
        mem[mem[64] + 68] = 10^12
        require ext_code.size(address(_2113))
        staticcall address(_2113).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2135 = mem[(32 * idx) + 128]
            _2136 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2136] = 0
            mem[_2136 + 32] = 0
            mem[_2136 + 64] = 0
            mem[_2136 + 96] = 0
            require ext_code.size(address(_2135))
            staticcall address(_2135).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2140 = mem[_2139]
            require mem[_2139] == mem[_2139 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[36])
            require ext_code.size(address(_2140))
            staticcall address(_2140).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2150 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2152 = mem[_2150]
            require mem[_2150] == mem[_2150 + 12 len 20]
            require ext_code.size(mem[_2150 + 12 len 20])
            staticcall mem[_2150 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2163 = mem[_2158]
            require mem[_2158] == mem[_2158 + 18 len 14]
            _2168 = mem[_2158 + 32]
            require mem[_2158 + 32] == mem[_2158 + 50 len 14]
            require mem[_2158 + 64] == mem[_2158 + 92 len 4]
            _2174 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2174] = address(_2152)
            mem[_2174 + 32] = Mask(112, 0, _2163)
            mem[_2174 + 64] = Mask(112, 0, _2168)
            mem[_2174 + 96] = 30
            if idx >= mem[floor32(('cd', 100).length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _2174
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2177 = mem[(32 * idx) + 128]
            _2178 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2178] = 0
            mem[_2178 + 32] = 0
            mem[_2178 + 64] = 0
            mem[_2178 + 96] = 0
            require ext_code.size(address(_2177))
            staticcall address(_2177).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2183 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2185 = mem[_2183]
            require mem[_2183] == mem[_2183 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_2185))
            staticcall address(_2185).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2205 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2206 = mem[_2205]
            require mem[_2205] == mem[_2205 + 12 len 20]
            require ext_code.size(mem[_2205 + 12 len 20])
            staticcall mem[_2205 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2215 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2219 = mem[_2215]
            require mem[_2215] == mem[_2215 + 18 len 14]
            _2222 = mem[_2215 + 32]
            require mem[_2215 + 32] == mem[_2215 + 50 len 14]
            require mem[_2215 + 64] == mem[_2215 + 92 len 4]
            _2225 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2225] = address(_2206)
            mem[_2225 + 32] = Mask(112, 0, _2219)
            mem[_2225 + 64] = Mask(112, 0, _2222)
            mem[_2225 + 96] = 30
            if idx >= mem[_1267]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _1267 + 32] = _2225
        else:
            _2132 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2134 = mem[_2132]
            require mem[_2132] == mem[_2132]
            if mem[_2132] > -101:
                revert with 'NH{q', 17
            if mem[_2132] + 100 < mem[_2132] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_2132] + -(mem[_2132] + 100 % 100) + 100:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2157 = mem[(32 * idx) + 128]
            _2159 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2159] = 0
            mem[_2159 + 32] = 0
            mem[_2159 + 64] = 0
            mem[_2159 + 96] = 0
            require ext_code.size(address(_2157))
            staticcall address(_2157).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2166 = mem[_2165]
            require mem[_2165] == mem[_2165 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[36])
            require ext_code.size(address(_2166))
            staticcall address(_2166).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2186 = mem[_2184]
            require mem[_2184] == mem[_2184 + 12 len 20]
            require ext_code.size(mem[_2184 + 12 len 20])
            staticcall mem[_2184 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2196 = mem[_2194]
            require mem[_2194] == mem[_2194 + 18 len 14]
            _2202 = mem[_2194 + 32]
            require mem[_2194 + 32] == mem[_2194 + 50 len 14]
            require mem[_2194 + 64] == mem[_2194 + 92 len 4]
            _2209 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2209] = address(_2186)
            mem[_2209 + 32] = Mask(112, 0, _2196)
            mem[_2209 + 64] = Mask(112, 0, _2202)
            mem[_2209 + 96] = -_2134 + (_2134 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 100).length) + 225]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 100).length) + 257] = _2209
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _2214 = mem[(32 * idx) + 128]
            _2216 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2216] = 0
            mem[_2216 + 32] = 0
            mem[_2216 + 64] = 0
            mem[_2216 + 96] = 0
            require ext_code.size(address(_2214))
            staticcall address(_2214).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2221 = mem[_2220]
            require mem[_2220] == mem[_2220 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_2221))
            staticcall address(_2221).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2229 = mem[_2228]
            require mem[_2228] == mem[_2228 + 12 len 20]
            require ext_code.size(mem[_2228 + 12 len 20])
            staticcall mem[_2228 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2233 = mem[_2232]
            require mem[_2232] == mem[_2232 + 18 len 14]
            _2234 = mem[_2232 + 32]
            require mem[_2232 + 32] == mem[_2232 + 50 len 14]
            require mem[_2232 + 64] == mem[_2232 + 92 len 4]
            _2244 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2244] = address(_2229)
            mem[_2244 + 32] = Mask(112, 0, _2233)
            mem[_2244 + 64] = Mask(112, 0, _2234)
            mem[_2244 + 96] = -_2134 + (_2134 + 100 % 100) + 999900 / 100
            if idx >= mem[_1267]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _1267 + 32] = _2244
        if idx == -1:
            revert with 'NH{q', 17
        _2109 = mem[96]
        idx = idx + 1
        continue 
    _2118 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2118] = 0
    mem[_2118 + 32] = 0
    mem[_2118 + 64] = 0
    mem[_2118 + 96] = 0
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2122 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2125 = mem[_2122]
    require mem[_2122] == mem[_2122 + 12 len 20]
    mem[mem[64] + 4] = address(cd[36])
    mem[mem[64] + 36] = address(cd[68])
    require ext_code.size(address(_2125))
    staticcall address(_2125).getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(cd[36]), address(cd[68])
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2142 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2143 = mem[_2142]
    require mem[_2142] == mem[_2142 + 12 len 20]
    require ext_code.size(mem[_2142 + 12 len 20])
    staticcall mem[_2142 + 12 len 20].getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2147 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _2148 = mem[_2147]
    require mem[_2147] == mem[_2147 + 18 len 14]
    _2151 = mem[_2147 + 32]
    require mem[_2147 + 32] == mem[_2147 + 50 len 14]
    require mem[_2147 + 64] == mem[_2147 + 92 len 4]
    _2160 = mem[64]
    mem[64] = mem[64] + 128
    mem[_2160] = address(_2143)
    mem[_2160 + 32] = Mask(112, 0, _2148)
    mem[_2160 + 64] = Mask(112, 0, _2151)
    mem[_2160 + 96] = 0
    _2164 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = address(_2143)
    mem[mem[64] + 64] = Mask(112, 0, _2148)
    mem[mem[64] + 96] = Mask(112, 0, _2151)
    mem[mem[64] + 128] = 0
    mem[mem[64] + 160] = 224
    _2182 = mem[floor32(('cd', 100).length) + 225]
    mem[mem[64] + 224] = mem[floor32(('cd', 100).length) + 225]
    idx = 0
    s = floor32(('cd', 100).length) + 257
    t = mem[64] + 256
    while idx < _2182:
        _2235 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2235 + 32]
        mem[t + 64] = mem[_2235 + 64]
        mem[t + 96] = mem[_2235 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    mem[_2164 + 192] = (128 * _2182) + 256
    _2237 = mem[_1267]
    mem[_2164 + (128 * _2182) + 256] = mem[_1267]
    idx = 0
    s = _1267 + 32
    t = _2164 + (128 * _2182) + 288
    while idx < _2237:
        _2250 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2250 + 32]
        mem[t + 64] = mem[_2250 + 64]
        mem[t + 96] = mem[_2250 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _2164 + (128 * _2182) + (128 * _2237) + -mem[64] + 288
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
        _759 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 162] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]
        idx = 0
        s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130
        t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + 194
        while idx < mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
            _1367 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1367 + 32]
            mem[t + 64] = mem[_1367 + 64]
            mem[t + 96] = mem[_1367 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len floor32(('cd', 36).length) + floor32(('cd', 132).length) + (128 * _759) + -mem[64] + 194
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
                _9108 = mem[160]
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
                    _9140 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9160 = mem[_9140]
                    require mem[_9140] == mem[_9140 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_9108)
                    require ext_code.size(address(_9160))
                    staticcall address(_9160).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(s), address(_9108)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9282 = mem[_9275]
                    require mem[_9275] == mem[_9275 + 12 len 20]
                    require ext_code.size(mem[_9275 + 12 len 20])
                    staticcall mem[_9275 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9372 = mem[_9352]
                    require mem[_9352] == mem[_9352 + 18 len 14]
                    _9447 = mem[_9352 + 32]
                    require mem[_9352 + 32] == mem[_9352 + 50 len 14]
                    require mem[_9352 + 64] == mem[_9352 + 92 len 4]
                    _9541 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9541] = address(_9282)
                    mem[_9541 + 32] = Mask(112, 0, _9372)
                    mem[_9541 + 64] = Mask(112, 0, _9447)
                    mem[_9541 + 96] = 30
                    if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _9541
                    if t == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _9646 = mem[128]
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _9108 = mem[160]
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
                        s = _9646
                        t = t + 1
                        continue 
                    if cd[100] != 1:
                        require cd[100] == 2
                        _9653 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _9671 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _9671:
                            mem[t] = mem[s + 12 len 20]
                            _9108 = mem[160]
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
                               args mem[mem[64] + 4 len _9653 + (32 * _9671) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10203 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10216 = mem[_10203]
                        require mem[_10203] <= test266151307()
                        require _10203 + mem[_10203] + 31 < _10203 + return_data.size
                        _10227 = mem[_10203 + mem[_10203]]
                        if mem[_10203 + mem[_10203]] > test266151307():
                            revert with 'NH{q', 65
                        if _10203 + ceil32(return_data.size) + floor32(mem[_10203 + mem[_10203]]) + 1 > test266151307() or floor32(mem[_10203 + mem[_10203]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10203 + ceil32(return_data.size) + floor32(mem[_10203 + mem[_10203]]) + 1
                        mem[_10203 + ceil32(return_data.size)] = _10227
                        require _10216 + (32 * _10227) + 32 <= return_data.size
                        idx = 0
                        s = _10203 + _10216 + 32
                        t = _10203 + ceil32(return_data.size) + 32
                        while idx < _10227:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9108 = mem[160]
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
                        # nil
                    else:
                        _9645 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _9667 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _9667:
                            mem[t] = mem[s + 12 len 20]
                            _9108 = mem[160]
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
                               args mem[mem[64] + 4 len _9645 + (32 * _9667) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10204 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10217 = mem[_10204]
                        require mem[_10204] <= test266151307()
                        require _10204 + mem[_10204] + 31 < _10204 + return_data.size
                        _10228 = mem[_10204 + mem[_10204]]
                        if mem[_10204 + mem[_10204]] > test266151307():
                            revert with 'NH{q', 65
                        if _10204 + ceil32(return_data.size) + floor32(mem[_10204 + mem[_10204]]) + 1 > test266151307() or floor32(mem[_10204 + mem[_10204]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10204 + ceil32(return_data.size) + floor32(mem[_10204 + mem[_10204]]) + 1
                        mem[_10204 + ceil32(return_data.size)] = _10228
                        require _10217 + (32 * _10228) + 32 <= return_data.size
                        idx = 0
                        s = _10204 + _10217 + 32
                        t = _10204 + ceil32(return_data.size) + 32
                        while idx < _10228:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9108 = mem[160]
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
                        _11289 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _11318 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _11318:
                            mem[t] = mem[s + 12 len 20]
                            _9108 = mem[160]
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
                               args mem[mem[64] + 4 len _11289 + (32 * _11318) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12348 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12361 = mem[_12348]
                        require mem[_12348] <= test266151307()
                        require _12348 + mem[_12348] + 31 < _12348 + return_data.size
                        _12385 = mem[_12348 + mem[_12348]]
                        if mem[_12348 + mem[_12348]] > test266151307():
                            revert with 'NH{q', 65
                        if _12348 + ceil32(return_data.size) + floor32(mem[_12348 + mem[_12348]]) + 1 > test266151307() or floor32(mem[_12348 + mem[_12348]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12348 + ceil32(return_data.size) + floor32(mem[_12348 + mem[_12348]]) + 1
                        mem[_12348 + ceil32(return_data.size)] = _12385
                        require _12361 + (32 * _12385) + 32 <= return_data.size
                        idx = 0
                        s = _12348 + _12361 + 32
                        t = _12348 + ceil32(return_data.size) + 32
                        while idx < _12385:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9108 = mem[160]
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
                        # nil
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
                _7179 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + return_data.size + 130
                _7191 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                    revert with 'NH{q', 65
                if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                require _7179 + (32 * _7191) + 32 <= return_data.size
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + _7179 + 162
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162
                while idx < _7191:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if var234003 < 1:
                    revert with 'NH{q', 17
                # nil
            else:
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
                _7180 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + return_data.size + 130
                _7192 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                    revert with 'NH{q', 65
                if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130] = _7192
                require _7180 + (32 * _7192) + 32 <= return_data.size
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + _7180 + 162
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 162
                while idx < _7192:
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
                _9139 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9151 = mem[_9139]
                require mem[_9139] <= test266151307()
                require _9139 + mem[_9139] + 31 < _9139 + return_data.size
                _9166 = mem[_9139 + mem[_9139]]
                if mem[_9139 + mem[_9139]] > test266151307():
                    revert with 'NH{q', 65
                if _9139 + ceil32(return_data.size) + floor32(mem[_9139 + mem[_9139]]) + 1 > test266151307() or floor32(mem[_9139 + mem[_9139]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9139 + ceil32(return_data.size) + floor32(mem[_9139 + mem[_9139]]) + 1
                mem[_9139 + ceil32(return_data.size)] = _9166
                require _9151 + (32 * _9166) + 32 <= return_data.size
                idx = 0
                s = _9139 + _9151 + 32
                t = _9139 + ceil32(return_data.size) + 32
                while idx < _9166:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
        else:
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
                _9110 = mem[160]
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
                    _9142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9162 = mem[_9142]
                    require mem[_9142] == mem[_9142 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_9110)
                    require ext_code.size(address(_9162))
                    staticcall address(_9162).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(s), address(_9110)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9284 = mem[_9276]
                    require mem[_9276] == mem[_9276 + 12 len 20]
                    require ext_code.size(mem[_9276 + 12 len 20])
                    staticcall mem[_9276 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9374 = mem[_9354]
                    require mem[_9354] == mem[_9354 + 18 len 14]
                    _9460 = mem[_9354 + 32]
                    require mem[_9354 + 32] == mem[_9354 + 50 len 14]
                    require mem[_9354 + 64] == mem[_9354 + 92 len 4]
                    _9542 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_9542] = address(_9284)
                    mem[_9542 + 32] = Mask(112, 0, _9374)
                    mem[_9542 + 64] = Mask(112, 0, _9460)
                    mem[_9542 + 96] = -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100
                    if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _9542
                    if t == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _9649 = mem[128]
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _9110 = mem[160]
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
                        s = _9649
                        t = t + 1
                        continue 
                    if cd[100] != 1:
                        require cd[100] == 2
                        _9654 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _9672 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _9672:
                            mem[t] = mem[s + 12 len 20]
                            _9110 = mem[160]
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
                               args mem[mem[64] + 4 len _9654 + (32 * _9672) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10205 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10219 = mem[_10205]
                        require mem[_10205] <= test266151307()
                        require _10205 + mem[_10205] + 31 < _10205 + return_data.size
                        _10229 = mem[_10205 + mem[_10205]]
                        if mem[_10205 + mem[_10205]] > test266151307():
                            revert with 'NH{q', 65
                        if _10205 + ceil32(return_data.size) + floor32(mem[_10205 + mem[_10205]]) + 1 > test266151307() or floor32(mem[_10205 + mem[_10205]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10205 + ceil32(return_data.size) + floor32(mem[_10205 + mem[_10205]]) + 1
                        mem[_10205 + ceil32(return_data.size)] = _10229
                        require _10219 + (32 * _10229) + 32 <= return_data.size
                        idx = 0
                        s = _10205 + _10219 + 32
                        t = _10205 + ceil32(return_data.size) + 32
                        while idx < _10229:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9110 = mem[160]
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
                        # nil
                    else:
                        _9648 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _9668 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _9668:
                            mem[t] = mem[s + 12 len 20]
                            _9110 = mem[160]
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
                               args mem[mem[64] + 4 len _9648 + (32 * _9668) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _10206 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _10220 = mem[_10206]
                        require mem[_10206] <= test266151307()
                        require _10206 + mem[_10206] + 31 < _10206 + return_data.size
                        _10230 = mem[_10206 + mem[_10206]]
                        if mem[_10206 + mem[_10206]] > test266151307():
                            revert with 'NH{q', 65
                        if _10206 + ceil32(return_data.size) + floor32(mem[_10206 + mem[_10206]]) + 1 > test266151307() or floor32(mem[_10206 + mem[_10206]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _10206 + ceil32(return_data.size) + floor32(mem[_10206 + mem[_10206]]) + 1
                        mem[_10206 + ceil32(return_data.size)] = _10230
                        require _10220 + (32 * _10230) + 32 <= return_data.size
                        idx = 0
                        s = _10206 + _10220 + 32
                        t = _10206 + ceil32(return_data.size) + 32
                        while idx < _10230:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9110 = mem[160]
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
                        _11292 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _11320 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _11320:
                            mem[t] = mem[s + 12 len 20]
                            _9110 = mem[160]
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
                               args mem[mem[64] + 4 len _11292 + (32 * _11320) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12350 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12364 = mem[_12350]
                        require mem[_12350] <= test266151307()
                        require _12350 + mem[_12350] + 31 < _12350 + return_data.size
                        _12388 = mem[_12350 + mem[_12350]]
                        if mem[_12350 + mem[_12350]] > test266151307():
                            revert with 'NH{q', 65
                        if _12350 + ceil32(return_data.size) + floor32(mem[_12350 + mem[_12350]]) + 1 > test266151307() or floor32(mem[_12350 + mem[_12350]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12350 + ceil32(return_data.size) + floor32(mem[_12350 + mem[_12350]]) + 1
                        mem[_12350 + ceil32(return_data.size)] = _12388
                        require _12364 + (32 * _12388) + 32 <= return_data.size
                        idx = 0
                        s = _12350 + _12364 + 32
                        t = _12350 + ceil32(return_data.size) + 32
                        while idx < _12388:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _9110 = mem[160]
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
                        # nil
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
                _7182 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + return_data.size + 130
                _7194 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                    revert with 'NH{q', 65
                if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                require _7182 + (32 * _7194) + 32 <= return_data.size
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + _7182 + 162
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162
                while idx < _7194:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if var280003 < 1:
                    revert with 'NH{q', 17
                # nil
            else:
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
                _7183 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32
                require mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 <= test266151307()
                require floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 161 < floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + return_data.size + 130
                _7195 = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                if mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130] > test266151307():
                    revert with 'NH{q', 65
                if floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131 > test266151307() or floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + floor32(mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]) + 131
                mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 130] = mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + 130 len 4], Mask(224, 32, cd[68]) >> 32 + 130]
                require _7183 + (32 * _7195) + 32 <= return_data.size
                idx = 0
                s = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + ceil32(return_data.size) + _7183 + 162
                t = floor32(('cd', 36).length) + floor32(('cd', 132).length) + (32 * ('cd', 36).length - 1) + (2 * ceil32(return_data.size)) + 162
                while idx < _7195:
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
                _9141 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9152 = mem[_9141]
                require mem[_9141] <= test266151307()
                require _9141 + mem[_9141] + 31 < _9141 + return_data.size
                _9168 = mem[_9141 + mem[_9141]]
                if mem[_9141 + mem[_9141]] > test266151307():
                    revert with 'NH{q', 65
                if _9141 + ceil32(return_data.size) + floor32(mem[_9141 + mem[_9141]]) + 1 > test266151307() or floor32(mem[_9141 + mem[_9141]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9141 + ceil32(return_data.size) + floor32(mem[_9141 + mem[_9141]]) + 1
                mem[_9141 + ceil32(return_data.size)] = _9168
                require _9152 + (32 * _9168) + 32 <= return_data.size
                idx = 0
                s = _9141 + _9152 + 32
                t = _9141 + ceil32(return_data.size) + 32
                while idx < _9168:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
    else:
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
                _10177 = mem[128]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _11266 = mem[160]
                _11275 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11275] = 0
                mem[_11275 + 32] = 0
                mem[_11275 + 64] = 0
                mem[_11275 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                s = _10177
                t = var217005
                while ext_call.success:
                    _11284 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11302 = mem[_11284]
                    require mem[_11284] == mem[_11284 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_11266)
                    require ext_code.size(address(_11302))
                    staticcall address(_11302).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(s), address(_11266)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11639 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11654 = mem[_11639]
                    require mem[_11639] == mem[_11639 + 12 len 20]
                    require ext_code.size(mem[_11639 + 12 len 20])
                    staticcall mem[_11639 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _11844 = mem[_11804]
                    require mem[_11804] == mem[_11804 + 18 len 14]
                    _11901 = mem[_11804 + 32]
                    require mem[_11804 + 32] == mem[_11804 + 50 len 14]
                    require mem[_11804 + 64] == mem[_11804 + 92 len 4]
                    _11961 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11961] = address(_11654)
                    mem[_11961 + 32] = Mask(112, 0, _11844)
                    mem[_11961 + 64] = Mask(112, 0, _11901)
                    mem[_11961 + 96] = 30
                    if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _11961
                    if t == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _12078 = mem[128]
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _11266 = mem[160]
                        _11275 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11275] = 0
                        mem[_11275 + 32] = 0
                        mem[_11275 + 64] = 0
                        mem[_11275 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _12078
                        t = t + 1
                        continue 
                    if cd[100] != 1:
                        require cd[100] == 2
                        _12083 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _12127 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _12127:
                            mem[t] = mem[s + 12 len 20]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
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
                               args mem[mem[64] + 4 len _12083 + (32 * _12127) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12351 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12366 = mem[_12351]
                        require mem[_12351] <= test266151307()
                        require _12351 + mem[_12351] + 31 < _12351 + return_data.size
                        _12389 = mem[_12351 + mem[_12351]]
                        if mem[_12351 + mem[_12351]] > test266151307():
                            revert with 'NH{q', 65
                        if _12351 + ceil32(return_data.size) + floor32(mem[_12351 + mem[_12351]]) + 1 > test266151307() or floor32(mem[_12351 + mem[_12351]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12351 + ceil32(return_data.size) + floor32(mem[_12351 + mem[_12351]]) + 1
                        mem[_12351 + ceil32(return_data.size)] = _12389
                        require _12366 + (32 * _12389) + 32 <= return_data.size
                        idx = 0
                        s = _12351 + _12366 + 32
                        t = _12351 + ceil32(return_data.size) + 32
                        while idx < _12389:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    else:
                        _12077 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _12125 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _12125:
                            mem[t] = mem[s + 12 len 20]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
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
                               args mem[mem[64] + 4 len _12077 + (32 * _12125) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12352 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12367 = mem[_12352]
                        require mem[_12352] <= test266151307()
                        require _12352 + mem[_12352] + 31 < _12352 + return_data.size
                        _12390 = mem[_12352 + mem[_12352]]
                        if mem[_12352 + mem[_12352]] > test266151307():
                            revert with 'NH{q', 65
                        if _12352 + ceil32(return_data.size) + floor32(mem[_12352 + mem[_12352]]) + 1 > test266151307() or floor32(mem[_12352 + mem[_12352]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12352 + ceil32(return_data.size) + floor32(mem[_12352 + mem[_12352]]) + 1
                        mem[_12352 + ceil32(return_data.size)] = _12390
                        require _12367 + (32 * _12390) + 32 <= return_data.size
                        idx = 0
                        s = _12352 + _12367 + 32
                        t = _12352 + ceil32(return_data.size) + 32
                        while idx < _12390:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require cd[100] == 2
                        _13447 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _13484 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _13484:
                            mem[t] = mem[s + 12 len 20]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
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
                               args mem[mem[64] + 4 len _13447 + (32 * _13484) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14508 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14523 = mem[_14508]
                        require mem[_14508] <= test266151307()
                        require _14508 + mem[_14508] + 31 < _14508 + return_data.size
                        _14549 = mem[_14508 + mem[_14508]]
                        if mem[_14508 + mem[_14508]] > test266151307():
                            revert with 'NH{q', 65
                        if _14508 + ceil32(return_data.size) + floor32(mem[_14508 + mem[_14508]]) + 1 > test266151307() or floor32(mem[_14508 + mem[_14508]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _14508 + ceil32(return_data.size) + floor32(mem[_14508 + mem[_14508]]) + 1
                        mem[_14508 + ceil32(return_data.size)] = _14549
                        require _14523 + (32 * _14549) + 32 <= return_data.size
                        idx = 0
                        s = _14508 + _14523 + 32
                        t = _14508 + ceil32(return_data.size) + 32
                        while idx < _14549:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11266 = mem[160]
                            _11275 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11275] = 0
                            mem[_11275 + 32] = 0
                            mem[_11275 + 64] = 0
                            mem[_11275 + 96] = 0
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
                _8051 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _8077 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _8077:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _8051 + (32 * _8077) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9143 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9153 = mem[_9143]
                require mem[_9143] <= test266151307()
                require _9143 + mem[_9143] + 31 < _9143 + return_data.size
                _9169 = mem[_9143 + mem[_9143]]
                if mem[_9143 + mem[_9143]] > test266151307():
                    revert with 'NH{q', 65
                if _9143 + ceil32(return_data.size) + floor32(mem[_9143 + mem[_9143]]) + 1 > test266151307() or floor32(mem[_9143 + mem[_9143]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9143 + ceil32(return_data.size) + floor32(mem[_9143 + mem[_9143]]) + 1
                mem[_9143 + ceil32(return_data.size)] = _9169
                require _9153 + (32 * _9169) + 32 <= return_data.size
                idx = 0
                s = _9143 + _9153 + 32
                t = _9143 + ceil32(return_data.size) + 32
                while idx < _9169:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
            else:
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
                _9144 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9154 = mem[_9144]
                require mem[_9144] <= test266151307()
                require _9144 + mem[_9144] + 31 < _9144 + return_data.size
                _9170 = mem[_9144 + mem[_9144]]
                if mem[_9144 + mem[_9144]] > test266151307():
                    revert with 'NH{q', 65
                if _9144 + ceil32(return_data.size) + floor32(mem[_9144 + mem[_9144]]) + 1 > test266151307() or floor32(mem[_9144 + mem[_9144]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9144 + ceil32(return_data.size) + floor32(mem[_9144 + mem[_9144]]) + 1
                mem[_9144 + ceil32(return_data.size)] = _9170
                require _9154 + (32 * _9170) + 32 <= return_data.size
                idx = 0
                s = _9144 + _9154 + 32
                t = _9144 + ceil32(return_data.size) + 32
                while idx < _9170:
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
                _11283 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11295 = mem[_11283]
                require mem[_11283] <= test266151307()
                require _11283 + mem[_11283] + 31 < _11283 + return_data.size
                _11312 = mem[_11283 + mem[_11283]]
                if mem[_11283 + mem[_11283]] > test266151307():
                    revert with 'NH{q', 65
                if _11283 + ceil32(return_data.size) + floor32(mem[_11283 + mem[_11283]]) + 1 > test266151307() or floor32(mem[_11283 + mem[_11283]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _11283 + ceil32(return_data.size) + floor32(mem[_11283 + mem[_11283]]) + 1
                mem[_11283 + ceil32(return_data.size)] = _11312
                require _11295 + (32 * _11312) + 32 <= return_data.size
                idx = 0
                s = _11283 + _11295 + 32
                t = _11283 + ceil32(return_data.size) + 32
                while idx < _11312:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
        else:
            _2084 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2089 = mem[_2084]
            require mem[_2084] == mem[_2084]
            if mem[_2084] > -101:
                revert with 'NH{q', 17
            if mem[_2084] + 100 < mem[_2084] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_2084] + -(mem[_2084] + 100 % 100) + 100:
                revert with 'NH{q', 17
            if var255003 < 1:
                revert with 'NH{q', 17
            if var259002 < var259001:
                if 0 >= mem[96]:
                    revert with 'NH{q', 50
                _10179 = mem[128]
                if 1 >= mem[96]:
                    revert with 'NH{q', 50
                _11268 = mem[160]
                _11276 = mem[64]
                mem[64] = mem[64] + 128
                mem[_11276] = 0
                mem[_11276 + 32] = 0
                mem[_11276 + 64] = 0
                mem[_11276 + 96] = 0
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                s = _10179
                t = var263005
                while ext_call.success:
                    _11286 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11304 = mem[_11286]
                    require mem[_11286] == mem[_11286 + 12 len 20]
                    mem[mem[64] + 4] = address(s)
                    mem[mem[64] + 36] = address(_11268)
                    require ext_code.size(address(_11304))
                    staticcall address(_11304).getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(s), address(_11268)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11640 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11656 = mem[_11640]
                    require mem[_11640] == mem[_11640 + 12 len 20]
                    require ext_code.size(mem[_11640 + 12 len 20])
                    staticcall mem[_11640 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11806 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _11846 = mem[_11806]
                    require mem[_11806] == mem[_11806 + 18 len 14]
                    _11914 = mem[_11806 + 32]
                    require mem[_11806 + 32] == mem[_11806 + 50 len 14]
                    require mem[_11806 + 64] == mem[_11806 + 92 len 4]
                    _11962 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_11962] = address(_11656)
                    mem[_11962 + 32] = Mask(112, 0, _11846)
                    mem[_11962 + 64] = Mask(112, 0, _11914)
                    mem[_11962 + 96] = -_2089 + (_2089 + 100 % 100) + 999900 / 100
                    if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 132).length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 132).length) + 130] = _11962
                    if t == -1:
                        revert with 'NH{q', 17
                    if mem[96] < 1:
                        revert with 'NH{q', 17
                    if t + 1 < mem[96] - 1:
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        _12081 = mem[128]
                        if 1 >= mem[96]:
                            revert with 'NH{q', 50
                        _11268 = mem[160]
                        _11276 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_11276] = 0
                        mem[_11276 + 32] = 0
                        mem[_11276 + 64] = 0
                        mem[_11276 + 96] = 0
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).factory() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        s = _12081
                        t = t + 1
                        continue 
                    if cd[100] != 1:
                        require cd[100] == 2
                        _12084 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _12128 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _12128:
                            mem[t] = mem[s + 12 len 20]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
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
                               args mem[mem[64] + 4 len _12084 + (32 * _12128) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12353 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12369 = mem[_12353]
                        require mem[_12353] <= test266151307()
                        require _12353 + mem[_12353] + 31 < _12353 + return_data.size
                        _12391 = mem[_12353 + mem[_12353]]
                        if mem[_12353 + mem[_12353]] > test266151307():
                            revert with 'NH{q', 65
                        if _12353 + ceil32(return_data.size) + floor32(mem[_12353 + mem[_12353]]) + 1 > test266151307() or floor32(mem[_12353 + mem[_12353]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12353 + ceil32(return_data.size) + floor32(mem[_12353 + mem[_12353]]) + 1
                        mem[_12353 + ceil32(return_data.size)] = _12391
                        require _12369 + (32 * _12391) + 32 <= return_data.size
                        idx = 0
                        s = _12353 + _12369 + 32
                        t = _12353 + ceil32(return_data.size) + 32
                        while idx < _12391:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    else:
                        _12080 = mem[64]
                        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _12126 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _12126:
                            mem[t] = mem[s + 12 len 20]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
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
                               args mem[mem[64] + 4 len _12080 + (32 * _12126) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12354 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _12370 = mem[_12354]
                        require mem[_12354] <= test266151307()
                        require _12354 + mem[_12354] + 31 < _12354 + return_data.size
                        _12392 = mem[_12354 + mem[_12354]]
                        if mem[_12354 + mem[_12354]] > test266151307():
                            revert with 'NH{q', 65
                        if _12354 + ceil32(return_data.size) + floor32(mem[_12354 + mem[_12354]]) + 1 > test266151307() or floor32(mem[_12354 + mem[_12354]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _12354 + ceil32(return_data.size) + floor32(mem[_12354 + mem[_12354]]) + 1
                        mem[_12354 + ceil32(return_data.size)] = _12392
                        require _12370 + (32 * _12392) + 32 <= return_data.size
                        idx = 0
                        s = _12354 + _12370 + 32
                        t = _12354 + ceil32(return_data.size) + 32
                        while idx < _12392:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).factory() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require cd[100] == 2
                        _13450 = mem[64]
                        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[68]
                        mem[mem[64] + 36] = 64
                        _13486 = mem[96]
                        mem[mem[64] + 68] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 100
                        while idx < _13486:
                            mem[t] = mem[s + 12 len 20]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
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
                               args mem[mem[64] + 4 len _13450 + (32 * _13486) + -mem[64] + 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14510 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _14526 = mem[_14510]
                        require mem[_14510] <= test266151307()
                        require _14510 + mem[_14510] + 31 < _14510 + return_data.size
                        _14552 = mem[_14510 + mem[_14510]]
                        if mem[_14510 + mem[_14510]] > test266151307():
                            revert with 'NH{q', 65
                        if _14510 + ceil32(return_data.size) + floor32(mem[_14510 + mem[_14510]]) + 1 > test266151307() or floor32(mem[_14510 + mem[_14510]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _14510 + ceil32(return_data.size) + floor32(mem[_14510 + mem[_14510]]) + 1
                        mem[_14510 + ceil32(return_data.size)] = _14552
                        require _14526 + (32 * _14552) + 32 <= return_data.size
                        idx = 0
                        s = _14510 + _14526 + 32
                        t = _14510 + ceil32(return_data.size) + 32
                        while idx < _14552:
                            require mem[s] == mem[s]
                            mem[t] = mem[s]
                            _11268 = mem[160]
                            _11276 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_11276] = 0
                            mem[_11276 + 32] = 0
                            mem[_11276 + 64] = 0
                            mem[_11276 + 96] = 0
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
                _8053 = mem[64]
                mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _8078 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _8078:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _8053 + (32 * _8078) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9147 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9156 = mem[_9147]
                require mem[_9147] <= test266151307()
                require _9147 + mem[_9147] + 31 < _9147 + return_data.size
                _9172 = mem[_9147 + mem[_9147]]
                if mem[_9147 + mem[_9147]] > test266151307():
                    revert with 'NH{q', 65
                if _9147 + ceil32(return_data.size) + floor32(mem[_9147 + mem[_9147]]) + 1 > test266151307() or floor32(mem[_9147 + mem[_9147]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9147 + ceil32(return_data.size) + floor32(mem[_9147 + mem[_9147]]) + 1
                mem[_9147 + ceil32(return_data.size)] = _9172
                require _9156 + (32 * _9172) + 32 <= return_data.size
                idx = 0
                s = _9147 + _9156 + 32
                t = _9147 + ceil32(return_data.size) + 32
                while idx < _9172:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
            else:
                _8046 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                _8076 = mem[96]
                mem[mem[64] + 68] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 100
                while idx < _8076:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _8046 + (32 * _8076) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9148 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _9157 = mem[_9148]
                require mem[_9148] <= test266151307()
                require _9148 + mem[_9148] + 31 < _9148 + return_data.size
                _9173 = mem[_9148 + mem[_9148]]
                if mem[_9148 + mem[_9148]] > test266151307():
                    revert with 'NH{q', 65
                if _9148 + ceil32(return_data.size) + floor32(mem[_9148 + mem[_9148]]) + 1 > test266151307() or floor32(mem[_9148 + mem[_9148]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _9148 + ceil32(return_data.size) + floor32(mem[_9148 + mem[_9148]]) + 1
                mem[_9148 + ceil32(return_data.size)] = _9173
                require _9157 + (32 * _9173) + 32 <= return_data.size
                idx = 0
                s = _9148 + _9157 + 32
                t = _9148 + ceil32(return_data.size) + 32
                while idx < _9173:
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
                _11285 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _11296 = mem[_11285]
                require mem[_11285] <= test266151307()
                require _11285 + mem[_11285] + 31 < _11285 + return_data.size
                _11314 = mem[_11285 + mem[_11285]]
                if mem[_11285 + mem[_11285]] > test266151307():
                    revert with 'NH{q', 65
                if _11285 + ceil32(return_data.size) + floor32(mem[_11285 + mem[_11285]]) + 1 > test266151307() or floor32(mem[_11285 + mem[_11285]]) + 1 < 0:
                    revert with 'NH{q', 65
                mem[64] = _11285 + ceil32(return_data.size) + floor32(mem[_11285 + mem[_11285]]) + 1
                mem[_11285 + ceil32(return_data.size)] = _11314
                require _11296 + (32 * _11314) + 32 <= return_data.size
                idx = 0
                s = _11285 + _11296 + 32
                t = _11285 + ceil32(return_data.size) + 32
                while idx < _11314:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                # nil
}



}
