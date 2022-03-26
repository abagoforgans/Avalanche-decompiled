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
    mem[ceil32(return_data.size) + 320 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 576] = mem[(2 * ceil32(return_data.size)) + 364 len 20]
    mem[(11 * ceil32(return_data.size)) + 608] = mem[(2 * ceil32(return_data.size)) + 396 len 20]
    mem[(11 * ceil32(return_data.size)) + 704] = mem[(2 * ceil32(return_data.size)) + 498 len 14]
    mem[(11 * ceil32(return_data.size)) + 736] = mem[(2 * ceil32(return_data.size)) + 530 len 14]
    return address(arg1), 
           mem[(11 * ceil32(return_data.size)) + 576 len 64],
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           mem[(11 * ceil32(return_data.size)) + 704 len 64]
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
            _220 = mem[(32 * idx) + 128]
            _221 = mem[64]
            mem[64] = mem[64] + 224
            mem[_221] = 0
            mem[_221 + 32] = 0
            mem[_221 + 64] = 0
            mem[_221 + 96] = 0
            mem[_221 + 128] = 0
            mem[_221 + 160] = 0
            mem[_221 + 192] = 0
            if ext_code.size(_220) <= 0:
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _221
            else:
                require ext_code.size(address(_220))
                staticcall address(_220).totalSupply() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_230] == mem[_230]
                if mem[_230] <= 0:
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = _221
                else:
                    require ext_code.size(address(_220))
                    staticcall address(_220).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _248 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _250 = mem[_248]
                    require mem[_248] == mem[_248 + 18 len 14]
                    _258 = mem[_248 + 32]
                    require mem[_248 + 32] == mem[_248 + 50 len 14]
                    _264 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_264] = address(_220)
                    require ext_code.size(address(_220))
                    staticcall address(_220).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_268] == mem[_268 + 12 len 20]
                    mem[_264 + 32] = mem[_268 + 12 len 20]
                    require ext_code.size(address(_220))
                    staticcall address(_220).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _281 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_281] == mem[_281 + 12 len 20]
                    mem[_264 + 64] = mem[_281 + 12 len 20]
                    mem[_264 + 96] = Mask(112, 0, _250)
                    mem[_264 + 128] = Mask(112, 0, _258)
                    require ext_code.size(address(_220))
                    staticcall address(_220).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _289 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_289] == mem[_289 + 12 len 20]
                    require ext_code.size(mem[_289 + 12 len 20])
                    staticcall mem[_289 + 12 len 20].decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_297] == mem[_297 + 31 len 1]
                    mem[_264 + 160] = mem[_297 + 31 len 1]
                    require ext_code.size(address(_220))
                    staticcall address(_220).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _305 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_305] == mem[_305 + 12 len 20]
                    require ext_code.size(mem[_305 + 12 len 20])
                    staticcall mem[_305 + 12 len 20].decimals() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _313 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_313] == mem[_313 + 31 len 1]
                    mem[_264 + 192] = mem[_313 + 31 len 1]
                    if idx >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(arg1.length) + 129] = _264
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _219 = mem[64]
        mem[mem[64]] = 32
        _222 = mem[floor32(arg1.length) + 97]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
        idx = 0
        s = floor32(arg1.length) + 129
        t = mem[64] + 64
        while idx < _222:
            _322 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_322 + 44 len 20]
            mem[t + 64] = mem[_322 + 76 len 20]
            mem[t + 96] = mem[_322 + 114 len 14]
            mem[t + 128] = mem[_322 + 146 len 14]
            mem[t + 160] = mem[_322 + 178 len 14]
            mem[t + 192] = mem[_322 + 210 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _219 + (224 * _222) + -mem[64] + 64
    mem[64] = floor32(arg1.length) + (32 * arg1.length) + 353
    mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
    mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 0
    mem[var34001] = floor32(arg1.length) + (32 * arg1.length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[floor32(arg1.length) + (32 * arg1.length) + 129] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 161] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 193] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 225] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 257] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 289] = 0
        mem[floor32(arg1.length) + (32 * arg1.length) + 321] = 0
        mem[s + 32] = floor32(arg1.length) + (32 * arg1.length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _383 = mem[96]
    idx = 0
    while idx < _383:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _386 = mem[(32 * idx) + 128]
        _387 = mem[64]
        mem[64] = mem[64] + 224
        mem[_387] = 0
        mem[_387 + 32] = 0
        mem[_387 + 64] = 0
        mem[_387 + 96] = 0
        mem[_387 + 128] = 0
        mem[_387 + 160] = 0
        mem[_387 + 192] = 0
        if ext_code.size(_386) <= 0:
            if idx >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(arg1.length) + 129] = _387
        else:
            require ext_code.size(address(_386))
            staticcall address(_386).totalSupply() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_392] == mem[_392]
            if mem[_392] <= 0:
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _387
            else:
                require ext_code.size(address(_386))
                staticcall address(_386).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _402 = mem[_400]
                require mem[_400] == mem[_400 + 18 len 14]
                _404 = mem[_400 + 32]
                require mem[_400 + 32] == mem[_400 + 50 len 14]
                _407 = mem[64]
                mem[64] = mem[64] + 224
                mem[_407] = address(_386)
                require ext_code.size(address(_386))
                staticcall address(_386).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_411] == mem[_411 + 12 len 20]
                mem[_407 + 32] = mem[_411 + 12 len 20]
                require ext_code.size(address(_386))
                staticcall address(_386).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _416 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_416] == mem[_416 + 12 len 20]
                mem[_407 + 64] = mem[_416 + 12 len 20]
                mem[_407 + 96] = Mask(112, 0, _402)
                mem[_407 + 128] = Mask(112, 0, _404)
                require ext_code.size(address(_386))
                staticcall address(_386).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_420] == mem[_420 + 12 len 20]
                require ext_code.size(mem[_420 + 12 len 20])
                staticcall mem[_420 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == mem[_424 + 31 len 1]
                mem[_407 + 160] = mem[_424 + 31 len 1]
                require ext_code.size(address(_386))
                staticcall address(_386).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == mem[_428 + 12 len 20]
                require ext_code.size(mem[_428 + 12 len 20])
                staticcall mem[_428 + 12 len 20].decimals() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == mem[_432 + 31 len 1]
                mem[_407 + 192] = mem[_432 + 31 len 1]
                if idx >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(arg1.length) + 129] = _407
        if idx == -1:
            revert with 'NH{q', 17
        _383 = mem[96]
        idx = idx + 1
        continue 
    _385 = mem[64]
    mem[mem[64]] = 32
    _388 = mem[floor32(arg1.length) + 97]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + 97]
    idx = 0
    s = floor32(arg1.length) + 129
    t = mem[64] + 64
    while idx < _388:
        _435 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_435 + 44 len 20]
        mem[t + 64] = mem[_435 + 76 len 20]
        mem[t + 96] = mem[_435 + 114 len 14]
        mem[t + 128] = mem[_435 + 146 len 14]
        mem[t + 160] = mem[_435 + 178 len 14]
        mem[t + 192] = mem[_435 + 210 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _385 + (224 * _388) + -mem[64] + 64
}



}
