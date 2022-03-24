contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ext_code.size(arg1) <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 288 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 480] = mem[(2 * ceil32(return_data.size)) + 300 len 20]
    mem[(11 * ceil32(return_data.size)) + 512] = mem[(2 * ceil32(return_data.size)) + 332 len 20]
    mem[(11 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + 434 len 14]
    mem[(11 * ceil32(return_data.size)) + 640] = mem[(2 * ceil32(return_data.size)) + 466 len 14]
    return mem[(11 * ceil32(return_data.size)) + 480 len 64], 
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(11 * ceil32(return_data.size)) + 608 len 64]
}

function getPairs(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg1.length
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 129
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _216 = mem[(32 * idx) + 128]
            _217 = mem[64]
            mem[64] = mem[64] + 192
            mem[_217] = 0
            mem[_217 + 32] = 0
            mem[_217 + 64] = 0
            mem[_217 + 96] = 0
            mem[_217 + 128] = 0
            mem[_217 + 160] = 0
            if ext_code.size(_216) <= 0:
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _217
            else:
                require ext_code.size(address(_216))
                staticcall address(_216).totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_226] == mem[_226]
                if mem[_226] <= 0:
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = _217
                else:
                    require ext_code.size(address(_216))
                    staticcall address(_216).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _246 = mem[_244]
                    require mem[_244] == mem[_244 + 18 len 14]
                    _255 = mem[_244 + 32]
                    require mem[_244 + 32] == mem[_244 + 50 len 14]
                    _261 = mem[64]
                    mem[64] = mem[64] + 192
                    require ext_code.size(address(_216))
                    staticcall address(_216).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_265] == mem[_265 + 12 len 20]
                    mem[_261] = mem[_265 + 12 len 20]
                    require ext_code.size(address(_216))
                    staticcall address(_216).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _275 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_275] == mem[_275 + 12 len 20]
                    mem[_261 + 32] = mem[_275 + 12 len 20]
                    mem[_261 + 64] = Mask(112, 0, _246)
                    mem[_261 + 96] = Mask(112, 0, _255)
                    require ext_code.size(address(_216))
                    staticcall address(_216).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_283] == mem[_283 + 12 len 20]
                    require ext_code.size(mem[_283 + 12 len 20])
                    staticcall mem[_283 + 12 len 20].decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_291] == mem[_291 + 31 len 1]
                    mem[_261 + 128] = mem[_291 + 31 len 1]
                    require ext_code.size(address(_216))
                    staticcall address(_216).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_299] == mem[_299 + 12 len 20]
                    require ext_code.size(mem[_299 + 12 len 20])
                    staticcall mem[_299 + 12 len 20].decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_307] == mem[_307 + 31 len 1]
                    mem[_261 + 160] = mem[_307 + 31 len 1]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = _261
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 32
        _218 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _218:
            _316 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_316 + 44 len 20]
            mem[t + 64] = mem[_316 + 82 len 14]
            mem[t + 96] = mem[_316 + 114 len 14]
            mem[t + 128] = mem[_316 + 146 len 14]
            mem[t + 160] = mem[_316 + 178 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _215 + (192 * _218) + -mem[64] + 64
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 321
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
    mem[var34001] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _375 = mem[96]
    idx = 0
    while idx < _375:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _378 = mem[(32 * idx) + 128]
        _379 = mem[64]
        mem[64] = mem[64] + 192
        mem[_379] = 0
        mem[_379 + 32] = 0
        mem[_379 + 64] = 0
        mem[_379 + 96] = 0
        mem[_379 + 128] = 0
        mem[_379 + 160] = 0
        if ext_code.size(_378) <= 0:
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _379
        else:
            require ext_code.size(address(_378))
            staticcall address(_378).totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _384 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_384] == mem[_384]
            if mem[_384] <= 0:
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _379
            else:
                require ext_code.size(address(_378))
                staticcall address(_378).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _392 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _394 = mem[_392]
                require mem[_392] == mem[_392 + 18 len 14]
                _397 = mem[_392 + 32]
                require mem[_392 + 32] == mem[_392 + 50 len 14]
                _400 = mem[64]
                mem[64] = mem[64] + 192
                require ext_code.size(address(_378))
                staticcall address(_378).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_403] == mem[_403 + 12 len 20]
                mem[_400] = mem[_403 + 12 len 20]
                require ext_code.size(address(_378))
                staticcall address(_378).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _407 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_407] == mem[_407 + 12 len 20]
                mem[_400 + 32] = mem[_407 + 12 len 20]
                mem[_400 + 64] = Mask(112, 0, _394)
                mem[_400 + 96] = Mask(112, 0, _397)
                require ext_code.size(address(_378))
                staticcall address(_378).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_411] == mem[_411 + 12 len 20]
                require ext_code.size(mem[_411 + 12 len 20])
                staticcall mem[_411 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_415] == mem[_415 + 31 len 1]
                mem[_400 + 128] = mem[_415 + 31 len 1]
                require ext_code.size(address(_378))
                staticcall address(_378).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_419] == mem[_419 + 12 len 20]
                require ext_code.size(mem[_419 + 12 len 20])
                staticcall mem[_419 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _423 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_423] == mem[_423 + 31 len 1]
                mem[_400 + 160] = mem[_423 + 31 len 1]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _400
        if idx == -1:
            revert with 'NH{q', 17
        _375 = mem[96]
        idx = idx + 1
        continue 
    _377 = mem[64]
    mem[mem[64]] = 32
    _380 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _380:
        _426 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_426 + 44 len 20]
        mem[t + 64] = mem[_426 + 82 len 14]
        mem[t + 96] = mem[_426 + 114 len 14]
        mem[t + 128] = mem[_426 + 146 len 14]
        mem[t + 160] = mem[_426 + 178 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _377 + (192 * _380) + -mem[64] + 64
}



}
