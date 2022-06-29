contract main {




// =====================  Runtime code  =====================


#
#  - sub_0e9d5e5e(?)
#  - sub_d4a5a649(?)
#  - sub_ee90f571(?)
#
function _fallback() payable {
    revert
}

function getMassBalancesEth(address[] arg1) payable {
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
    mem[floor32(arg1.length) + 97 len 6400] = call.data[calldata.size len 6400]
    mem[floor32(arg1.length) + 6497 len 6400] = call.data[calldata.size len 6400]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        if idx >= 200:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + 6497] = eth.balance(mem[(32 * idx) + 128])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return memory
      from floor32(arg1.length) + 6497
       len 6400
}

function getMassBalancesErc20(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(arg1.length) + floor32(arg2.length) + 98 len 6400] = call.data[calldata.size len 6400]
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + 12898
    mem[floor32(arg1.length) + floor32(arg2.length) + 6498 len 6400] = call.data[calldata.size len 6400]
    idx = 0
    while idx < arg1.length:
        if idx >= mem[floor32(arg1.length) + 97]:
            revert with 'NH{q', 50
        _45 = mem[(32 * idx) + floor32(arg1.length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _47 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(_45))
        staticcall address(_45).0x70a08231 with:
                gas gas_remaining wei
               args address(_47)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _51 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_51] == mem[_51]
        if idx >= 200:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(arg1.length) + floor32(arg2.length) + 6498] = mem[_51]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] len 6400] = mem[floor32(arg1.length) + floor32(arg2.length) + 6498 len 6400]
    return memory
      from mem[64]
       len 6400
}

function sub_5fd4ce6e(?) payable {
    require calldata.size - 4 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 len 6400] = call.data[calldata.size len 6400]
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 12899
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 6499 len 6400] = call.data[calldata.size len 6400]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _73 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = address(_73)
        require ext_code.size(address(_69))
        staticcall address(_69).0xdd62ed3e with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(_73)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == mem[_77]
        if idx >= 200:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 6499] = mem[_77]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] len 6400] = mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 6499 len 6400]
    return memory
      from mem[64]
       len 6400
}

function sub_1ab233cb(?) payable {
    require calldata.size - 4 >= 96
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require calldata.size - s >= 64
        _164 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == uint8(cd[s])
        mem[_164] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_164 + 32] = cd[(s + 32)]
        mem[t] = _164
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    _165 = mem[64]
    if mem[64] + floor32(('cd', 68).length) + 1 > test266151307() or mem[64] + floor32(('cd', 68).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 68).length) + 1
    mem[_165] = ('cd', 68).length
    require cd[68] + (128 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = _165 + 32
    while idx < ('cd', 68).length:
        require calldata.size - s >= 128
        _244 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require cd[s] == cd[s]
        mem[_244] = cd[s]
        require calldata.size + -s - 32 >= 64
        _270 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(s + 32)] == uint8(cd[(s + 32)])
        mem[_270] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_270 + 32] = cd[(s + 64)]
        mem[_244 + 32] = _270
        require cd[(s + 96)] == bool(cd[(s + 96)])
        mem[_244 + 64] = cd[(s + 96)]
        mem[t] = _244
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _322 = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = 0
    while idx < _322:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _325 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _328 = mem[(32 * idx + 1) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _330 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[_165]:
            revert with 'NH{q', 50
        _332 = mem[(32 * idx) + _165 + 32]
        require ext_code.size(mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 44 len 20])
        staticcall mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 44 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 31 len 1] == 1:
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_344]
            require mem[_344] == mem[_344 + 12 len 20]
            _350 = mem[_332 + 64]
            mem[mem[64] + 4] = address(_325)
            mem[mem[64] + 36] = address(_328)
            mem[mem[64] + 68] = bool(_350)
            require ext_code.size(address(_347))
            staticcall address(_347).getPair(address arg1, address arg2, bool arg3) with:
                    gas gas_remaining wei
                   args address(_325), address(_328), bool(_350)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _362 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _364 = mem[_362]
            require mem[_362] == mem[_362 + 12 len 20]
            mem[mem[64] + 4] = mem[_362 + 12 len 20]
            require ext_code.size(address(_328))
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_364)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_381] == mem[_381]
            if mem[_381] < mem[_332]:
                revert with 'NH{q', 17
            if mem[_381] - mem[_332] and 10000 > -1 / mem[_381] - mem[_332]:
                revert with 'NH{q', 17
            if not mem[_381]:
                revert with 'NH{q', 18
            if 10000 < (10000 * mem[_381]) - (10000 * mem[_332]) / mem[_381]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _322 = mem[floor32(('cd', 4).length) + 97]
            if -((10000 * mem[_381]) - (10000 * mem[_332]) / mem[_381]) + 10000 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = -((10000 * mem[_381]) - (10000 * mem[_332]) / mem[_381]) + 10000
            continue 
        if mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 31 len 1] == 2:
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_346]
            require mem[_346] == mem[_346 + 12 len 20]
            mem[mem[64] + 4] = address(_325)
            mem[mem[64] + 36] = address(_328)
            require ext_code.size(address(_349))
            staticcall address(_349).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(_325), address(_328)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _359 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _361 = mem[_359]
            require mem[_359] == mem[_359 + 12 len 20]
            mem[mem[64] + 4] = mem[_359 + 12 len 20]
            require ext_code.size(address(_328))
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_361)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _379 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_379] == mem[_379]
            if mem[_379] < mem[_332]:
                revert with 'NH{q', 17
            if mem[_379] - mem[_332] and 10000 > -1 / mem[_379] - mem[_332]:
                revert with 'NH{q', 17
            if not mem[_379]:
                revert with 'NH{q', 18
            if 10000 < (10000 * mem[_379]) - (10000 * mem[_332]) / mem[_379]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _322 = mem[floor32(('cd', 4).length) + 97]
            if -((10000 * mem[_379]) - (10000 * mem[_332]) / mem[_379]) + 10000 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = -((10000 * mem[_379]) - (10000 * mem[_332]) / mem[_379]) + 10000
            continue 
        _345 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _348 = mem[_345]
        require mem[_345] == mem[_345 + 12 len 20]
        mem[mem[64] + 4] = address(_325)
        mem[mem[64] + 36] = address(_328)
        if mem[_330 + 31 len 1] == 3:
            mem[mem[64] + 68] = 500
            require ext_code.size(address(_348))
            staticcall address(_348).getPool(address arg1, address arg2, uint24 arg3) with:
                    gas gas_remaining wei
                   args address(_325), address(_328), 500
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _370 = mem[_365]
            require mem[_365] == mem[_365 + 12 len 20]
            mem[mem[64] + 4] = mem[_365 + 12 len 20]
            require ext_code.size(address(_328))
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_370)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _385 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_385] == mem[_385]
            if mem[_385] < mem[_332]:
                revert with 'NH{q', 17
            if mem[_385] - mem[_332] and 10000 > -1 / mem[_385] - mem[_332]:
                revert with 'NH{q', 17
            if not mem[_385]:
                revert with 'NH{q', 18
            if 10000 < (10000 * mem[_385]) - (10000 * mem[_332]) / mem[_385]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _322 = mem[floor32(('cd', 4).length) + 97]
            if -((10000 * mem[_385]) - (10000 * mem[_332]) / mem[_385]) + 10000 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = -((10000 * mem[_385]) - (10000 * mem[_332]) / mem[_385]) + 10000
            continue 
        if mem[_330 + 31 len 1] == 4:
            mem[mem[64] + 68] = 3000
            require ext_code.size(address(_348))
            staticcall address(_348).getPool(address arg1, address arg2, uint24 arg3) with:
                    gas gas_remaining wei
                   args address(_325), address(_328), 3000
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _368 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _371 = mem[_368]
            require mem[_368] == mem[_368 + 12 len 20]
            mem[mem[64] + 4] = mem[_368 + 12 len 20]
            require ext_code.size(address(_328))
            staticcall address(_328).0x70a08231 with:
                    gas gas_remaining wei
                   args address(_371)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_388] == mem[_388]
            if mem[_388] < mem[_332]:
                revert with 'NH{q', 17
            if mem[_388] - mem[_332] and 10000 > -1 / mem[_388] - mem[_332]:
                revert with 'NH{q', 17
            if not mem[_388]:
                revert with 'NH{q', 18
            if 10000 < (10000 * mem[_388]) - (10000 * mem[_332]) / mem[_388]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            _322 = mem[floor32(('cd', 4).length) + 97]
            if -((10000 * mem[_388]) - (10000 * mem[_332]) / mem[_388]) + 10000 <= s:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = -((10000 * mem[_388]) - (10000 * mem[_332]) / mem[_388]) + 10000
            continue 
        mem[mem[64] + 68] = 10000
        require ext_code.size(address(_348))
        staticcall address(_348).getPool(address arg1, address arg2, uint24 arg3) with:
                gas gas_remaining wei
               args address(_325), address(_328), 10000
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _369 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _372 = mem[_369]
        require mem[_369] == mem[_369 + 12 len 20]
        mem[mem[64] + 4] = mem[_369 + 12 len 20]
        require ext_code.size(address(_328))
        staticcall address(_328).0x70a08231 with:
                gas gas_remaining wei
               args address(_372)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_389] == mem[_389]
        if mem[_389] < mem[_332]:
            revert with 'NH{q', 17
        if mem[_389] - mem[_332] and 10000 > -1 / mem[_389] - mem[_332]:
            revert with 'NH{q', 17
        if not mem[_389]:
            revert with 'NH{q', 18
        if 10000 < (10000 * mem[_389]) - (10000 * mem[_332]) / mem[_389]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        _322 = mem[floor32(('cd', 4).length) + 97]
        if -((10000 * mem[_389]) - (10000 * mem[_332]) / mem[_389]) + 10000 <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = -((10000 * mem[_389]) - (10000 * mem[_332]) / mem[_389]) + 10000
        continue 
    return s
}

function sub_aefbd597(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
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
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98 > test266151307() or floor32(('cd', 132).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + floor32(('cd', 132).length) + 98
    mem[floor32(('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (64 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = floor32(('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require calldata.size - s >= 64
        _20 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == uint8(cd[s])
        mem[_20] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_20 + 32] = cd[(s + 32)]
        mem[t] = _20
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 'NH{q', 65
    _21 = mem[64]
    if mem[64] + floor32(('cd', 164).length) + 1 > test266151307() or mem[64] + floor32(('cd', 164).length) + 1 < mem[64]:
        revert with 'NH{q', 65
    mem[64] = mem[64] + floor32(('cd', 164).length) + 1
    mem[_21] = ('cd', 164).length
    require cd[164] + (64 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = _21 + 32
    while idx < ('cd', 164).length:
        require calldata.size - s >= 64
        _28 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[s] == uint8(cd[s])
        mem[_28] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_28 + 32] = cd[(s + 32)]
        mem[t] = _28
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    _29 = mem[64]
    mem[64] = mem[64] + 128
    mem[_29] = 0
    _30 = mem[64]
    mem[64] = mem[64] + 96
    mem[_30 len 96] = call.data[calldata.size len 96]
    mem[_29 + 32] = _30
    _31 = mem[64]
    mem[64] = mem[64] + 96
    _1088 = mem[64]
    mem[64] = mem[64] + 96
    mem[_1088] = 0
    _2143 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2143] = 0
    mem[_2143 + 32] = 0
    mem[_1088 + 32] = _2143
    mem[_1088 + 64] = 0
    mem[var108002] = _1088
    s = _1088 + 32
    s = _1088
    s = var108002
    idx = var108003
    while idx - 1:
        _2144 = mem[64]
        mem[64] = mem[64] + 96
        mem[_2144] = 0
        _2143 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2143] = 0
        mem[_2143 + 32] = 0
        mem[_2144 + 32] = _2143
        mem[_2144 + 64] = 0
        mem[s + 32] = _2144
        s = _2144 + 32
        s = _2144
        s = s + 32
        idx = idx - 1
        continue 
    mem[_29 + 64] = _31
    mem[_29 + 96] = 0
    mem[_29] = 1
    _2145 = mem[64]
    mem[64] = mem[64] + 96
    mem[_2145] = 0
    _2146 = mem[64]
    mem[64] = mem[64] + 64
    mem[_2146] = 0
    mem[_2146 + 32] = 0
    mem[_2145 + 32] = _2146
    mem[_2145 + 64] = 0
    _2147 = mem[floor32(('cd', 100).length) + 97]
    idx = 0
    s = _2145
    while uint8(idx) < _2147:
        if uint8(idx) >= mem[floor32(('cd', 100).length) + 97]:
            revert with 'NH{q', 50
        _3201 = mem[mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129] + 32]
        if uint8(idx) >= mem[floor32(('cd', 100).length) + 97]:
            revert with 'NH{q', 50
        _3205 = mem[mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]]
        _3208 = mem[64]
        mem[64] = mem[64] + 96
        mem[_3208] = 0
        _3210 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3210] = 0
        mem[_3210 + 32] = 0
        mem[_3208 + 32] = _3210
        mem[_3208 + 64] = 0
        if address(cd[4]) == address(cd[36]):
            if 0 <= mem[s]:
                if uint8(idx) == 255:
                    revert with 'NH{q', 17
                idx = uint8(idx) + 1
                s = s
                continue 
        else:
            if uint8(_3205) == 1:
                mem[mem[64] + 36] = address(cd[4])
                mem[mem[64] + 68] = address(cd[36])
                require ext_code.size(address(_3201))
                staticcall address(_3201).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args cd[68], address(cd[4]), address(cd[36])
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    mem[_3208] = 0
                    if 0 <= mem[s]:
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
                else:
                    _3258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    require mem[_3258] == mem[_3258]
                    _3293 = mem[_3258 + 32]
                    require mem[_3258 + 32] == bool(mem[_3258 + 32])
                    mem[_3208] = mem[_3258]
                    mem[_3208 + 64] = bool(_3293)
                    if mem[_3208] <= mem[s]:
                        if uint8(idx) == 255:
                            revert with 'NH{q', 17
                        idx = uint8(idx) + 1
                        s = s
                        continue 
            else:
                if uint8(_3205) != 2:
                    if uint8(_3205) == 3:
                        mem[mem[64] + 4] = address(cd[4])
                        mem[mem[64] + 36] = address(cd[36])
                        mem[mem[64] + 68] = 500
                        mem[mem[64] + 100] = cd[68]
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(_3201))
                        call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                             gas gas_remaining wei
                            args address(cd[4]), address(cd[36]), 500, cd[68], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            mem[_3208] = 0
                            if 0 <= mem[s]:
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                s = s
                                continue 
                        else:
                            _3334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3334] == mem[_3334]
                            mem[_3208] = mem[_3334]
                            if mem[_3208] <= mem[s]:
                                if uint8(idx) == 255:
                                    revert with 'NH{q', 17
                                idx = uint8(idx) + 1
                                s = s
                                continue 
                    else:
                        if uint8(_3205) == 4:
                            mem[mem[64] + 4] = address(cd[4])
                            mem[mem[64] + 36] = address(cd[36])
                            if uint8(_3205) == 3:
                                mem[mem[64] + 68] = 500
                                mem[mem[64] + 100] = cd[68]
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(_3201))
                                call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                     gas gas_remaining wei
                                    args address(cd[4]), address(cd[36]), 500, cd[68], 0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    mem[_3208] = 0
                                    if 0 <= mem[s]:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        idx = uint8(idx) + 1
                                        s = s
                                        continue 
                                else:
                                    _3339 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3339] == mem[_3339]
                                    mem[_3208] = mem[_3339]
                                    if mem[_3208] <= mem[s]:
                                        if uint8(idx) == 255:
                                            revert with 'NH{q', 17
                                        idx = uint8(idx) + 1
                                        s = s
                                        continue 
                            else:
                                if uint8(_3205) == 4:
                                    mem[mem[64] + 68] = 3000
                                    mem[mem[64] + 100] = cd[68]
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_3201))
                                    call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36]), 3000, cd[68], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        mem[_3208] = 0
                                        if 0 <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                                    else:
                                        _3353 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3353] == mem[_3353]
                                        mem[_3208] = mem[_3353]
                                        if mem[_3208] <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                                else:
                                    mem[mem[64] + 68] = 10000
                                    mem[mem[64] + 100] = cd[68]
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_3201))
                                    call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36]), 10000, cd[68], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        mem[_3208] = 0
                                        if 0 <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                                    else:
                                        _3354 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3354] == mem[_3354]
                                        mem[_3208] = mem[_3354]
                                        if mem[_3208] <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                        else:
                            if uint8(_3205) != 5:
                                if 0 <= mem[s]:
                                    if uint8(idx) == 255:
                                        revert with 'NH{q', 17
                                    idx = uint8(idx) + 1
                                    s = s
                                    continue 
                            else:
                                mem[mem[64] + 4] = address(cd[4])
                                mem[mem[64] + 36] = address(cd[36])
                                if uint8(_3205) == 3:
                                    mem[mem[64] + 68] = 500
                                    mem[mem[64] + 100] = cd[68]
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_3201))
                                    call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(cd[36]), 500, cd[68], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        mem[_3208] = 0
                                        if 0 <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                                    else:
                                        _3346 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_3346] == mem[_3346]
                                        mem[_3208] = mem[_3346]
                                        if mem[_3208] <= mem[s]:
                                            if uint8(idx) == 255:
                                                revert with 'NH{q', 17
                                            idx = uint8(idx) + 1
                                            s = s
                                            continue 
                                else:
                                    if uint8(_3205) == 4:
                                        mem[mem[64] + 68] = 3000
                                        mem[mem[64] + 100] = cd[68]
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_3201))
                                        call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), 3000, cd[68], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            mem[_3208] = 0
                                            if 0 <= mem[s]:
                                                if uint8(idx) == 255:
                                                    revert with 'NH{q', 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                continue 
                                        else:
                                            _3361 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3361] == mem[_3361]
                                            mem[_3208] = mem[_3361]
                                            if mem[_3208] <= mem[s]:
                                                if uint8(idx) == 255:
                                                    revert with 'NH{q', 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                continue 
                                    else:
                                        mem[mem[64] + 68] = 10000
                                        mem[mem[64] + 100] = cd[68]
                                        mem[mem[64] + 132] = 0
                                        require ext_code.size(address(_3201))
                                        call address(_3201).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                             gas gas_remaining wei
                                            args address(cd[4]), address(cd[36]), 10000, cd[68], 0
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            mem[_3208] = 0
                                            if 0 <= mem[s]:
                                                if uint8(idx) == 255:
                                                    revert with 'NH{q', 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                continue 
                                        else:
                                            _3362 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_3362] == mem[_3362]
                                            mem[_3208] = mem[_3362]
                                            if mem[_3208] <= mem[s]:
                                                if uint8(idx) == 255:
                                                    revert with 'NH{q', 17
                                                idx = uint8(idx) + 1
                                                s = s
                                                continue 
                else:
                    _3217 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_3217]:
                        revert with 'NH{q', 50
                    mem[_3217 + 32] = address(cd[4])
                    if 1 >= mem[_3217]:
                        revert with 'NH{q', 50
                    mem[_3217 + 64] = address(cd[36])
                    mem[_3217 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_3217 + 100] = cd[68]
                    mem[_3217 + 132] = 64
                    mem[_3217 + 164] = mem[_3217]
                    t = 0
                    u = _3217 + 32
                    v = _3217 + 196
                    while t < mem[_3217]:
                        mem[v] = mem[u + 12 len 20]
                        t = t + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(address(_3201))
                    staticcall address(_3201).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3217 + (32 * mem[_3217]) + -mem[64] + 192]
                    if not ext_call.success:
                        mem[_3208] = 0
                        if 0 <= mem[s]:
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
                    else:
                        _4254 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4257 = mem[_4254]
                        require mem[_4254] <= test266151307()
                        require _4254 + mem[_4254] + 31 < _4254 + return_data.size
                        _4261 = mem[_4254 + mem[_4254]]
                        if mem[_4254 + mem[_4254]] > test266151307():
                            revert with 'NH{q', 65
                        if _4254 + ceil32(return_data.size) + floor32(mem[_4254 + mem[_4254]]) + 1 > test266151307() or floor32(mem[_4254 + mem[_4254]]) + 1 < 0:
                            revert with 'NH{q', 65
                        mem[64] = _4254 + ceil32(return_data.size) + floor32(mem[_4254 + mem[_4254]]) + 1
                        mem[_4254 + ceil32(return_data.size)] = _4261
                        require _4257 + (32 * _4261) + 32 <= return_data.size
                        t = 0
                        u = _4254 + _4257 + 32
                        v = _4254 + ceil32(return_data.size) + 32
                        while t < _4261:
                            require mem[u] == mem[u]
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        if 1 >= _4261:
                            revert with 'NH{q', 50
                        mem[_3208] = mem[_4254 + ceil32(return_data.size) + 64]
                        if mem[_3208] <= mem[s]:
                            if uint8(idx) == 255:
                                revert with 'NH{q', 17
                            idx = uint8(idx) + 1
                            s = s
                            continue 
        if uint8(idx) >= mem[floor32(('cd', 100).length) + 97]:
            revert with 'NH{q', 50
        mem[_3208 + 32] = mem[(32 * uint8(idx)) + floor32(('cd', 100).length) + 129]
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        s = _3208
        continue 
    mem[_29 + 96] = mem[s]
    mem[mem[_29 + 32]] = address(cd[4])
    mem[mem[_29 + 32] + 32] = address(cd[36])
    mem[mem[_29 + 64]] = s
    _3207 = mem[96]
    _3209 = mem[64]
    mem[64] = mem[64] + 96
    mem[_3209] = 0
    _3211 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3211] = 0
    mem[_3211 + 32] = 0
    mem[_3209 + 32] = _3211
    mem[_3209 + 64] = 0
    _3212 = mem[64]
    mem[64] = mem[64] + 96
    mem[_3212] = 0
    _3214 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3214] = 0
    mem[_3214 + 32] = 0
    mem[_3212 + 32] = _3214
    mem[_3212 + 64] = 0
    idx = 0
    while uint8(idx) < _3207:
        if uint8(idx) >= mem[96]:
            revert with 'NH{q', 50
        if mem[(32 * uint8(idx)) + 140 len 20] != address(cd[4]):
            if uint8(idx) >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * uint8(idx)) + 140 len 20] != address(cd[36]):
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                _4256 = mem[(32 * uint8(idx)) + 128]
                _4259 = mem[64]
                mem[64] = mem[64] + 96
                mem[_4259] = 0
                _4260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4260] = 0
                mem[_4260 + 32] = 0
                mem[_4259 + 32] = _4260
                mem[_4259 + 64] = 0
                _4264 = mem[floor32(('cd', 100).length) + 97]
                s = 0
                t = _4259
                while uint8(s) < _4264:
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _5173 = mem[mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129] + 32]
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _5179 = mem[mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129]]
                    _5181 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_5181] = 0
                    _5183 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5183] = 0
                    mem[_5183 + 32] = 0
                    mem[_5181 + 32] = _5183
                    mem[_5181 + 64] = 0
                    if address(cd[4]) == address(_4256):
                        if 0 <= mem[t]:
                            if uint8(s) == 255:
                                revert with 'NH{q', 17
                            s = uint8(s) + 1
                            t = t
                            continue 
                    else:
                        if uint8(_5179) == 1:
                            mem[mem[64] + 36] = address(cd[4])
                            mem[mem[64] + 68] = address(_4256)
                            require ext_code.size(address(_5173))
                            staticcall address(_5173).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args cd[68], address(cd[4]), address(_4256)
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                mem[_5181] = 0
                                if 0 <= mem[t]:
                                    if uint8(s) == 255:
                                        revert with 'NH{q', 17
                                    s = uint8(s) + 1
                                    t = t
                                    continue 
                            else:
                                _5284 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_5284] == mem[_5284]
                                _5327 = mem[_5284 + 32]
                                require mem[_5284 + 32] == bool(mem[_5284 + 32])
                                mem[_5181] = mem[_5284]
                                mem[_5181 + 64] = bool(_5327)
                                if mem[_5181] <= mem[t]:
                                    if uint8(s) == 255:
                                        revert with 'NH{q', 17
                                    s = uint8(s) + 1
                                    t = t
                                    continue 
                        else:
                            if uint8(_5179) != 2:
                                if uint8(_5179) == 3:
                                    mem[mem[64] + 4] = address(cd[4])
                                    mem[mem[64] + 36] = address(_4256)
                                    mem[mem[64] + 68] = 500
                                    mem[mem[64] + 100] = cd[68]
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_5173))
                                    call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                         gas gas_remaining wei
                                        args address(cd[4]), address(_4256), 500, cd[68], 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        mem[_5181] = 0
                                        if 0 <= mem[t]:
                                            if uint8(s) == 255:
                                                revert with 'NH{q', 17
                                            s = uint8(s) + 1
                                            t = t
                                            continue 
                                    else:
                                        _5390 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_5390] == mem[_5390]
                                        mem[_5181] = mem[_5390]
                                        if mem[_5181] <= mem[t]:
                                            if uint8(s) == 255:
                                                revert with 'NH{q', 17
                                            s = uint8(s) + 1
                                            t = t
                                            continue 
                                else:
                                    if uint8(_5179) == 4:
                                        mem[mem[64] + 4] = address(cd[4])
                                        mem[mem[64] + 36] = address(_4256)
                                        if uint8(_5179) == 3:
                                            mem[mem[64] + 68] = 500
                                            mem[mem[64] + 100] = cd[68]
                                            mem[mem[64] + 132] = 0
                                            require ext_code.size(address(_5173))
                                            call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                 gas gas_remaining wei
                                                args address(cd[4]), address(_4256), 500, cd[68], 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                mem[_5181] = 0
                                                if 0 <= mem[t]:
                                                    if uint8(s) == 255:
                                                        revert with 'NH{q', 17
                                                    s = uint8(s) + 1
                                                    t = t
                                                    continue 
                                            else:
                                                _5400 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_5400] == mem[_5400]
                                                mem[_5181] = mem[_5400]
                                                if mem[_5181] <= mem[t]:
                                                    if uint8(s) == 255:
                                                        revert with 'NH{q', 17
                                                    s = uint8(s) + 1
                                                    t = t
                                                    continue 
                                        else:
                                            if uint8(_5179) == 4:
                                                mem[mem[64] + 68] = 3000
                                                mem[mem[64] + 100] = cd[68]
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_5173))
                                                call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), address(_4256), 3000, cd[68], 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_5181] = 0
                                                    if 0 <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                                else:
                                                    _5426 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5426] == mem[_5426]
                                                    mem[_5181] = mem[_5426]
                                                    if mem[_5181] <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                            else:
                                                mem[mem[64] + 68] = 10000
                                                mem[mem[64] + 100] = cd[68]
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_5173))
                                                call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), address(_4256), 10000, cd[68], 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_5181] = 0
                                                    if 0 <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                                else:
                                                    _5427 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5427] == mem[_5427]
                                                    mem[_5181] = mem[_5427]
                                                    if mem[_5181] <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                    else:
                                        if uint8(_5179) != 5:
                                            if 0 <= mem[t]:
                                                if uint8(s) == 255:
                                                    revert with 'NH{q', 17
                                                s = uint8(s) + 1
                                                t = t
                                                continue 
                                        else:
                                            mem[mem[64] + 4] = address(cd[4])
                                            mem[mem[64] + 36] = address(_4256)
                                            if uint8(_5179) == 3:
                                                mem[mem[64] + 68] = 500
                                                mem[mem[64] + 100] = cd[68]
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_5173))
                                                call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(cd[4]), address(_4256), 500, cd[68], 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_5181] = 0
                                                    if 0 <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                                else:
                                                    _5411 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_5411] == mem[_5411]
                                                    mem[_5181] = mem[_5411]
                                                    if mem[_5181] <= mem[t]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        t = t
                                                        continue 
                                            else:
                                                if uint8(_5179) == 4:
                                                    mem[mem[64] + 68] = 3000
                                                    mem[mem[64] + 100] = cd[68]
                                                    mem[mem[64] + 132] = 0
                                                    require ext_code.size(address(_5173))
                                                    call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), address(_4256), 3000, cd[68], 0
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        mem[_5181] = 0
                                                        if 0 <= mem[t]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            t = t
                                                            continue 
                                                    else:
                                                        _5435 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5435] == mem[_5435]
                                                        mem[_5181] = mem[_5435]
                                                        if mem[_5181] <= mem[t]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            t = t
                                                            continue 
                                                else:
                                                    mem[mem[64] + 68] = 10000
                                                    mem[mem[64] + 100] = cd[68]
                                                    mem[mem[64] + 132] = 0
                                                    require ext_code.size(address(_5173))
                                                    call address(_5173).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                         gas gas_remaining wei
                                                        args address(cd[4]), address(_4256), 10000, cd[68], 0
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        mem[_5181] = 0
                                                        if 0 <= mem[t]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            t = t
                                                            continue 
                                                    else:
                                                        _5436 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_5436] == mem[_5436]
                                                        mem[_5181] = mem[_5436]
                                                        if mem[_5181] <= mem[t]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            t = t
                                                            continue 
                            else:
                                _5200 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_5200]:
                                    revert with 'NH{q', 50
                                mem[_5200 + 32] = address(cd[4])
                                if 1 >= mem[_5200]:
                                    revert with 'NH{q', 50
                                mem[_5200 + 64] = address(_4256)
                                mem[_5200 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_5200 + 100] = cd[68]
                                mem[_5200 + 132] = 64
                                mem[_5200 + 164] = mem[_5200]
                                idx = 0
                                u = _5200 + 32
                                v = _5200 + 196
                                while idx < mem[_5200]:
                                    mem[v] = mem[u + 12 len 20]
                                    idx = idx + 1
                                    u = u + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_5173))
                                staticcall address(_5173).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _5200 + (32 * mem[_5200]) + -mem[64] + 192]
                                if not ext_call.success:
                                    mem[_5181] = 0
                                    if 0 <= mem[t]:
                                        if uint8(s) == 255:
                                            revert with 'NH{q', 17
                                        s = uint8(s) + 1
                                        t = t
                                        continue 
                                else:
                                    _6094 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6102 = mem[_6094]
                                    require mem[_6094] <= test266151307()
                                    require _6094 + mem[_6094] + 31 < _6094 + return_data.size
                                    _6109 = mem[_6094 + mem[_6094]]
                                    if mem[_6094 + mem[_6094]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _6094 + ceil32(return_data.size) + floor32(mem[_6094 + mem[_6094]]) + 1 > test266151307() or floor32(mem[_6094 + mem[_6094]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _6094 + ceil32(return_data.size) + floor32(mem[_6094 + mem[_6094]]) + 1
                                    mem[_6094 + ceil32(return_data.size)] = _6109
                                    require _6102 + (32 * _6109) + 32 <= return_data.size
                                    idx = 0
                                    u = _6094 + _6102 + 32
                                    v = _6094 + ceil32(return_data.size) + 32
                                    while idx < _6109:
                                        require mem[u] == mem[u]
                                        mem[v] = mem[u]
                                        idx = idx + 1
                                        u = u + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _6109:
                                        revert with 'NH{q', 50
                                    mem[_5181] = mem[_6094 + ceil32(return_data.size) + 64]
                                    if mem[_5181] <= mem[t]:
                                        if uint8(s) == 255:
                                            revert with 'NH{q', 17
                                        s = uint8(s) + 1
                                        t = t
                                        continue 
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    mem[_5181 + 32] = mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129]
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    t = _5181
                    continue 
                if uint8(idx) >= mem[96]:
                    revert with 'NH{q', 50
                _5176 = mem[(32 * uint8(idx)) + 128]
                _5177 = mem[t]
                _5180 = mem[64]
                mem[64] = mem[64] + 96
                mem[_5180] = 0
                _5182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5182] = 0
                mem[_5182 + 32] = 0
                mem[_5180 + 32] = _5182
                mem[_5180 + 64] = 0
                _5186 = mem[floor32(('cd', 100).length) + 97]
                s = 0
                u = _5180
                while uint8(s) < _5186:
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _6082 = mem[mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129] + 32]
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    _6087 = mem[mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129]]
                    _6093 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_6093] = 0
                    _6098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6098] = 0
                    mem[_6098 + 32] = 0
                    mem[_6093 + 32] = _6098
                    mem[_6093 + 64] = 0
                    if address(_5176) == address(cd[36]):
                        if 0 <= mem[u]:
                            if uint8(s) == 255:
                                revert with 'NH{q', 17
                            s = uint8(s) + 1
                            u = u
                            continue 
                    else:
                        if uint8(_6087) == 1:
                            mem[mem[64] + 36] = address(_5176)
                            mem[mem[64] + 68] = address(cd[36])
                            require ext_code.size(address(_6082))
                            staticcall address(_6082).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args _5177, address(_5176), address(cd[36])
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                mem[_6093] = 0
                                if 0 <= mem[u]:
                                    if uint8(s) == 255:
                                        revert with 'NH{q', 17
                                    s = uint8(s) + 1
                                    u = u
                                    continue 
                            else:
                                _6188 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                require mem[_6188] == mem[_6188]
                                _6259 = mem[_6188 + 32]
                                require mem[_6188 + 32] == bool(mem[_6188 + 32])
                                mem[_6093] = mem[_6188]
                                mem[_6093 + 64] = bool(_6259)
                                if mem[_6093] <= mem[u]:
                                    if uint8(s) == 255:
                                        revert with 'NH{q', 17
                                    s = uint8(s) + 1
                                    u = u
                                    continue 
                        else:
                            if uint8(_6087) != 2:
                                if uint8(_6087) == 3:
                                    mem[mem[64] + 4] = address(_5176)
                                    mem[mem[64] + 36] = address(cd[36])
                                    mem[mem[64] + 68] = 500
                                    mem[mem[64] + 100] = _5177
                                    mem[mem[64] + 132] = 0
                                    require ext_code.size(address(_6082))
                                    call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                         gas gas_remaining wei
                                        args address(_5176), address(cd[36]), 500, _5177, 0
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        mem[_6093] = 0
                                        if 0 <= mem[u]:
                                            if uint8(s) == 255:
                                                revert with 'NH{q', 17
                                            s = uint8(s) + 1
                                            u = u
                                            continue 
                                    else:
                                        _6313 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_6313] == mem[_6313]
                                        mem[_6093] = mem[_6313]
                                        if mem[_6093] <= mem[u]:
                                            if uint8(s) == 255:
                                                revert with 'NH{q', 17
                                            s = uint8(s) + 1
                                            u = u
                                            continue 
                                else:
                                    if uint8(_6087) == 4:
                                        mem[mem[64] + 4] = address(_5176)
                                        mem[mem[64] + 36] = address(cd[36])
                                        if uint8(_6087) == 3:
                                            mem[mem[64] + 68] = 500
                                            mem[mem[64] + 100] = _5177
                                            mem[mem[64] + 132] = 0
                                            require ext_code.size(address(_6082))
                                            call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                 gas gas_remaining wei
                                                args address(_5176), address(cd[36]), 500, _5177, 0
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                mem[_6093] = 0
                                                if 0 <= mem[u]:
                                                    if uint8(s) == 255:
                                                        revert with 'NH{q', 17
                                                    s = uint8(s) + 1
                                                    u = u
                                                    continue 
                                            else:
                                                _6318 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_6318] == mem[_6318]
                                                mem[_6093] = mem[_6318]
                                                if mem[_6093] <= mem[u]:
                                                    if uint8(s) == 255:
                                                        revert with 'NH{q', 17
                                                    s = uint8(s) + 1
                                                    u = u
                                                    continue 
                                        else:
                                            if uint8(_6087) == 4:
                                                mem[mem[64] + 68] = 3000
                                                mem[mem[64] + 100] = _5177
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_6082))
                                                call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(_5176), address(cd[36]), 3000, _5177, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_6093] = 0
                                                    if 0 <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                                else:
                                                    _6335 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6335] == mem[_6335]
                                                    mem[_6093] = mem[_6335]
                                                    if mem[_6093] <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                            else:
                                                mem[mem[64] + 68] = 10000
                                                mem[mem[64] + 100] = _5177
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_6082))
                                                call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(_5176), address(cd[36]), 10000, _5177, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_6093] = 0
                                                    if 0 <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                                else:
                                                    _6336 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6336] == mem[_6336]
                                                    mem[_6093] = mem[_6336]
                                                    if mem[_6093] <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                    else:
                                        if uint8(_6087) != 5:
                                            if 0 <= mem[u]:
                                                if uint8(s) == 255:
                                                    revert with 'NH{q', 17
                                                s = uint8(s) + 1
                                                u = u
                                                continue 
                                        else:
                                            mem[mem[64] + 4] = address(_5176)
                                            mem[mem[64] + 36] = address(cd[36])
                                            if uint8(_6087) == 3:
                                                mem[mem[64] + 68] = 500
                                                mem[mem[64] + 100] = _5177
                                                mem[mem[64] + 132] = 0
                                                require ext_code.size(address(_6082))
                                                call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                     gas gas_remaining wei
                                                    args address(_5176), address(cd[36]), 500, _5177, 0
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    mem[_6093] = 0
                                                    if 0 <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                                else:
                                                    _6326 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_6326] == mem[_6326]
                                                    mem[_6093] = mem[_6326]
                                                    if mem[_6093] <= mem[u]:
                                                        if uint8(s) == 255:
                                                            revert with 'NH{q', 17
                                                        s = uint8(s) + 1
                                                        u = u
                                                        continue 
                                            else:
                                                if uint8(_6087) == 4:
                                                    mem[mem[64] + 68] = 3000
                                                    mem[mem[64] + 100] = _5177
                                                    mem[mem[64] + 132] = 0
                                                    require ext_code.size(address(_6082))
                                                    call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                         gas gas_remaining wei
                                                        args address(_5176), address(cd[36]), 3000, _5177, 0
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        mem[_6093] = 0
                                                        if 0 <= mem[u]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            u = u
                                                            continue 
                                                    else:
                                                        _6343 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6343] == mem[_6343]
                                                        mem[_6093] = mem[_6343]
                                                        if mem[_6093] <= mem[u]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            u = u
                                                            continue 
                                                else:
                                                    mem[mem[64] + 68] = 10000
                                                    mem[mem[64] + 100] = _5177
                                                    mem[mem[64] + 132] = 0
                                                    require ext_code.size(address(_6082))
                                                    call address(_6082).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                         gas gas_remaining wei
                                                        args address(_5176), address(cd[36]), 10000, _5177, 0
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        mem[_6093] = 0
                                                        if 0 <= mem[u]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            u = u
                                                            continue 
                                                    else:
                                                        _6344 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_6344] == mem[_6344]
                                                        mem[_6093] = mem[_6344]
                                                        if mem[_6093] <= mem[u]:
                                                            if uint8(s) == 255:
                                                                revert with 'NH{q', 17
                                                            s = uint8(s) + 1
                                                            u = u
                                                            continue 
                            else:
                                _6120 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_6120]:
                                    revert with 'NH{q', 50
                                mem[_6120 + 32] = address(_5176)
                                if 1 >= mem[_6120]:
                                    revert with 'NH{q', 50
                                mem[_6120 + 64] = address(cd[36])
                                mem[_6120 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                mem[_6120 + 100] = _5177
                                mem[_6120 + 132] = 64
                                mem[_6120 + 164] = mem[_6120]
                                idx = 0
                                t = _6120 + 32
                                v = _6120 + 196
                                while idx < mem[_6120]:
                                    mem[v] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    t = t + 32
                                    v = v + 32
                                    continue 
                                require ext_code.size(address(_6082))
                                staticcall address(_6082).mem[mem[64] len 4] with:
                                        gas gas_remaining wei
                                       args mem[mem[64] + 4 len _6120 + (32 * mem[_6120]) + -mem[64] + 192]
                                if not ext_call.success:
                                    mem[_6093] = 0
                                    if 0 <= mem[u]:
                                        if uint8(s) == 255:
                                            revert with 'NH{q', 17
                                        s = uint8(s) + 1
                                        u = u
                                        continue 
                                else:
                                    _6866 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _6870 = mem[_6866]
                                    require mem[_6866] <= test266151307()
                                    require _6866 + mem[_6866] + 31 < _6866 + return_data.size
                                    _6876 = mem[_6866 + mem[_6866]]
                                    if mem[_6866 + mem[_6866]] > test266151307():
                                        revert with 'NH{q', 65
                                    if _6866 + ceil32(return_data.size) + floor32(mem[_6866 + mem[_6866]]) + 1 > test266151307() or floor32(mem[_6866 + mem[_6866]]) + 1 < 0:
                                        revert with 'NH{q', 65
                                    mem[64] = _6866 + ceil32(return_data.size) + floor32(mem[_6866 + mem[_6866]]) + 1
                                    mem[_6866 + ceil32(return_data.size)] = _6876
                                    require _6870 + (32 * _6876) + 32 <= return_data.size
                                    idx = 0
                                    t = _6866 + _6870 + 32
                                    v = _6866 + ceil32(return_data.size) + 32
                                    while idx < _6876:
                                        require mem[t] == mem[t]
                                        mem[v] = mem[t]
                                        idx = idx + 1
                                        t = t + 32
                                        v = v + 32
                                        continue 
                                    if 1 >= _6876:
                                        revert with 'NH{q', 50
                                    mem[_6093] = mem[_6866 + ceil32(return_data.size) + 64]
                                    if mem[_6093] <= mem[u]:
                                        if uint8(s) == 255:
                                            revert with 'NH{q', 17
                                        s = uint8(s) + 1
                                        u = u
                                        continue 
                    if uint8(s) >= mem[floor32(('cd', 100).length) + 97]:
                        revert with 'NH{q', 50
                    mem[_6093 + 32] = mem[(32 * uint8(s)) + floor32(('cd', 100).length) + 129]
                    if uint8(s) == 255:
                        revert with 'NH{q', 17
                    s = uint8(s) + 1
                    u = _6093
                    continue 
                if mem[u] <= mem[_29 + 96]:
                    s = 0
                    while uint8(s) < _3207:
                        if uint8(s) >= mem[96]:
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint8(idx)) + 140 len 20] != mem[(32 * uint8(s)) + 140 len 20]:
                            if uint8(s) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * uint8(s)) + 140 len 20] != address(cd[4]):
                                if uint8(s) >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[(32 * uint8(s)) + 140 len 20] != address(cd[36]):
                                    if uint8(idx) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6877 = mem[(32 * uint8(idx)) + 128]
                                    if uint8(s) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6883 = mem[(32 * uint8(s)) + 128]
                                    _6884 = mem[t]
                                    _6892 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6892] = 0
                                    _6895 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6895] = 0
                                    mem[_6895 + 32] = 0
                                    mem[_6892 + 32] = _6895
                                    mem[_6892 + 64] = 0
                                    _6898 = mem[_21]
                                    u = 0
                                    v = _6892
                                    while uint8(u) < _6898:
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _7487 = mem[mem[(32 * uint8(u)) + _21 + 32] + 32]
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _7497 = mem[mem[(32 * uint8(u)) + _21 + 32]]
                                        _7503 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7503] = 0
                                        _7507 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7507] = 0
                                        mem[_7507 + 32] = 0
                                        mem[_7503 + 32] = _7507
                                        mem[_7503 + 64] = 0
                                        if address(_6877) == address(_6883):
                                            if 0 <= mem[v]:
                                                if uint8(u) == 255:
                                                    revert with 'NH{q', 17
                                                u = uint8(u) + 1
                                                v = v
                                                continue 
                                        else:
                                            if uint8(_7497) == 1:
                                                mem[mem[64] + 36] = address(_6877)
                                                mem[mem[64] + 68] = address(_6883)
                                                require ext_code.size(address(_7487))
                                                staticcall address(_7487).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                                        gas gas_remaining wei
                                                       args _6884, address(_6877), address(_6883)
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    mem[_7503] = 0
                                                    if 0 <= mem[v]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        v = v
                                                        continue 
                                                else:
                                                    _7640 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    require mem[_7640] == mem[_7640]
                                                    _7674 = mem[_7640 + 32]
                                                    require mem[_7640 + 32] == bool(mem[_7640 + 32])
                                                    mem[_7503] = mem[_7640]
                                                    mem[_7503 + 64] = bool(_7674)
                                                    if mem[_7503] <= mem[v]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if uint8(_7497) != 2:
                                                    if uint8(_7497) == 3:
                                                        mem[mem[64] + 4] = address(_6877)
                                                        mem[mem[64] + 36] = address(_6883)
                                                        mem[mem[64] + 68] = 500
                                                        mem[mem[64] + 100] = _6884
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_7487))
                                                        call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                             gas gas_remaining wei
                                                            args address(_6877), address(_6883), 500, _6884, 0
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            mem[_7503] = 0
                                                            if 0 <= mem[v]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                v = v
                                                                continue 
                                                        else:
                                                            _7705 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_7705] == mem[_7705]
                                                            mem[_7503] = mem[_7705]
                                                            if mem[_7503] <= mem[v]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if uint8(_7497) == 4:
                                                            mem[mem[64] + 4] = address(_6877)
                                                            mem[mem[64] + 36] = address(_6883)
                                                            if uint8(_7497) == 3:
                                                                mem[mem[64] + 68] = 500
                                                                mem[mem[64] + 100] = _6884
                                                                mem[mem[64] + 132] = 0
                                                                require ext_code.size(address(_7487))
                                                                call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                     gas gas_remaining wei
                                                                    args address(_6877), address(_6883), 500, _6884, 0
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    mem[_7503] = 0
                                                                    if 0 <= mem[v]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        v = v
                                                                        continue 
                                                                else:
                                                                    _7713 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_7713] == mem[_7713]
                                                                    mem[_7503] = mem[_7713]
                                                                    if mem[_7503] <= mem[v]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        v = v
                                                                        continue 
                                                            else:
                                                                if uint8(_7497) == 4:
                                                                    mem[mem[64] + 68] = 3000
                                                                    mem[mem[64] + 100] = _6884
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7487))
                                                                    call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6877), address(_6883), 3000, _6884, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7503] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7732 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7732] == mem[_7732]
                                                                        mem[_7503] = mem[_7732]
                                                                        if mem[_7503] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                else:
                                                                    mem[mem[64] + 68] = 10000
                                                                    mem[mem[64] + 100] = _6884
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7487))
                                                                    call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6877), address(_6883), 10000, _6884, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7503] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7733 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7733] == mem[_7733]
                                                                        mem[_7503] = mem[_7733]
                                                                        if mem[_7503] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                        else:
                                                            if uint8(_7497) != 5:
                                                                if 0 <= mem[v]:
                                                                    if uint8(u) == 255:
                                                                        revert with 'NH{q', 17
                                                                    u = uint8(u) + 1
                                                                    v = v
                                                                    continue 
                                                            else:
                                                                mem[mem[64] + 4] = address(_6877)
                                                                mem[mem[64] + 36] = address(_6883)
                                                                if uint8(_7497) == 3:
                                                                    mem[mem[64] + 68] = 500
                                                                    mem[mem[64] + 100] = _6884
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7487))
                                                                    call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6877), address(_6883), 500, _6884, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7503] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7723 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7723] == mem[_7723]
                                                                        mem[_7503] = mem[_7723]
                                                                        if mem[_7503] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                else:
                                                                    if uint8(_7497) == 4:
                                                                        mem[mem[64] + 68] = 3000
                                                                        mem[mem[64] + 100] = _6884
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_7487))
                                                                        call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_6877), address(_6883), 3000, _6884, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_7503] = 0
                                                                            if 0 <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                        else:
                                                                            _7739 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_7739] == mem[_7739]
                                                                            mem[_7503] = mem[_7739]
                                                                            if mem[_7503] <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                    else:
                                                                        mem[mem[64] + 68] = 10000
                                                                        mem[mem[64] + 100] = _6884
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_7487))
                                                                        call address(_7487).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_6877), address(_6883), 10000, _6884, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_7503] = 0
                                                                            if 0 <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                        else:
                                                                            _7740 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_7740] == mem[_7740]
                                                                            mem[_7503] = mem[_7740]
                                                                            if mem[_7503] <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                else:
                                                    _7535 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if 0 >= mem[_7535]:
                                                        revert with 'NH{q', 50
                                                    mem[_7535 + 32] = address(_6877)
                                                    if 1 >= mem[_7535]:
                                                        revert with 'NH{q', 50
                                                    mem[_7535 + 64] = address(_6883)
                                                    mem[_7535 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_7535 + 100] = _6884
                                                    mem[_7535 + 132] = 64
                                                    mem[_7535 + 164] = mem[_7535]
                                                    idx = 0
                                                    s = _7535 + 32
                                                    t = _7535 + 196
                                                    while idx < mem[_7535]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(_7487))
                                                    staticcall address(_7487).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _7535 + (32 * mem[_7535]) + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        mem[_7503] = 0
                                                        if 0 <= mem[v]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            v = v
                                                            continue 
                                                    else:
                                                        _8094 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _8105 = mem[_8094]
                                                        require mem[_8094] <= test266151307()
                                                        require _8094 + mem[_8094] + 31 < _8094 + return_data.size
                                                        _8114 = mem[_8094 + mem[_8094]]
                                                        if mem[_8094 + mem[_8094]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        if _8094 + ceil32(return_data.size) + floor32(mem[_8094 + mem[_8094]]) + 1 > test266151307() or floor32(mem[_8094 + mem[_8094]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        mem[64] = _8094 + ceil32(return_data.size) + floor32(mem[_8094 + mem[_8094]]) + 1
                                                        mem[_8094 + ceil32(return_data.size)] = _8114
                                                        require _8105 + (32 * _8114) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _8094 + _8105 + 32
                                                        t = _8094 + ceil32(return_data.size) + 32
                                                        while idx < _8114:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 1 >= _8114:
                                                            revert with 'NH{q', 50
                                                        mem[_7503] = mem[_8094 + ceil32(return_data.size) + 64]
                                                        if mem[_7503] <= mem[v]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            v = v
                                                            continue 
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        mem[_7503 + 32] = mem[(32 * uint8(u)) + _21 + 32]
                                        if uint8(u) == 255:
                                            revert with 'NH{q', 17
                                        u = uint8(u) + 1
                                        v = _7503
                                        continue 
                                    if uint8(s) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _7494 = mem[(32 * uint8(s)) + 128]
                                    _7495 = mem[v]
                                    _7502 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7502] = 0
                                    _7506 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7506] = 0
                                    mem[_7506 + 32] = 0
                                    mem[_7502 + 32] = _7506
                                    mem[_7502 + 64] = 0
                                    _7512 = mem[_21]
                                    u = 0
                                    w = _7502
                                    while uint8(u) < _7512:
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _8073 = mem[mem[(32 * uint8(u)) + _21 + 32] + 32]
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _8082 = mem[mem[(32 * uint8(u)) + _21 + 32]]
                                        _8093 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_8093] = 0
                                        _8100 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8100] = 0
                                        mem[_8100 + 32] = 0
                                        mem[_8093 + 32] = _8100
                                        mem[_8093 + 64] = 0
                                        if address(_7494) == address(cd[36]):
                                            if 0 <= mem[w]:
                                                if uint8(u) == 255:
                                                    revert with 'NH{q', 17
                                                u = uint8(u) + 1
                                                w = w
                                                continue 
                                        else:
                                            if uint8(_8082) == 1:
                                                mem[mem[64] + 36] = address(_7494)
                                                mem[mem[64] + 68] = address(cd[36])
                                                require ext_code.size(address(_8073))
                                                staticcall address(_8073).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                                        gas gas_remaining wei
                                                       args _7495, address(_7494), address(cd[36])
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    mem[_8093] = 0
                                                    if 0 <= mem[w]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        w = w
                                                        continue 
                                                else:
                                                    _8173 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    require mem[_8173] == mem[_8173]
                                                    _8208 = mem[_8173 + 32]
                                                    require mem[_8173 + 32] == bool(mem[_8173 + 32])
                                                    mem[_8093] = mem[_8173]
                                                    mem[_8093 + 64] = bool(_8208)
                                                    if mem[_8093] <= mem[w]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        w = w
                                                        continue 
                                            else:
                                                if uint8(_8082) != 2:
                                                    if uint8(_8082) == 3:
                                                        mem[mem[64] + 4] = address(_7494)
                                                        mem[mem[64] + 36] = address(cd[36])
                                                        mem[mem[64] + 68] = 500
                                                        mem[mem[64] + 100] = _7495
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_8073))
                                                        call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                             gas gas_remaining wei
                                                            args address(_7494), address(cd[36]), 500, _7495, 0
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            mem[_8093] = 0
                                                            if 0 <= mem[w]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                w = w
                                                                continue 
                                                        else:
                                                            _8222 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_8222] == mem[_8222]
                                                            mem[_8093] = mem[_8222]
                                                            if mem[_8093] <= mem[w]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                w = w
                                                                continue 
                                                    else:
                                                        if uint8(_8082) == 4:
                                                            mem[mem[64] + 4] = address(_7494)
                                                            mem[mem[64] + 36] = address(cd[36])
                                                            if uint8(_8082) == 3:
                                                                mem[mem[64] + 68] = 500
                                                                mem[mem[64] + 100] = _7495
                                                                mem[mem[64] + 132] = 0
                                                                require ext_code.size(address(_8073))
                                                                call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                     gas gas_remaining wei
                                                                    args address(_7494), address(cd[36]), 500, _7495, 0
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    mem[_8093] = 0
                                                                    if 0 <= mem[w]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        w = w
                                                                        continue 
                                                                else:
                                                                    _8226 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_8226] == mem[_8226]
                                                                    mem[_8093] = mem[_8226]
                                                                    if mem[_8093] <= mem[w]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        w = w
                                                                        continue 
                                                            else:
                                                                if uint8(_8082) == 4:
                                                                    mem[mem[64] + 68] = 3000
                                                                    mem[mem[64] + 100] = _7495
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8073))
                                                                    call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7494), address(cd[36]), 3000, _7495, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8093] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8239 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8239] == mem[_8239]
                                                                        mem[_8093] = mem[_8239]
                                                                        if mem[_8093] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                else:
                                                                    mem[mem[64] + 68] = 10000
                                                                    mem[mem[64] + 100] = _7495
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8073))
                                                                    call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7494), address(cd[36]), 10000, _7495, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8093] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8240 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8240] == mem[_8240]
                                                                        mem[_8093] = mem[_8240]
                                                                        if mem[_8093] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                        else:
                                                            if uint8(_8082) != 5:
                                                                if 0 <= mem[w]:
                                                                    if uint8(u) == 255:
                                                                        revert with 'NH{q', 17
                                                                    u = uint8(u) + 1
                                                                    w = w
                                                                    continue 
                                                            else:
                                                                mem[mem[64] + 4] = address(_7494)
                                                                mem[mem[64] + 36] = address(cd[36])
                                                                if uint8(_8082) == 3:
                                                                    mem[mem[64] + 68] = 500
                                                                    mem[mem[64] + 100] = _7495
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8073))
                                                                    call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7494), address(cd[36]), 500, _7495, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8093] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8232 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8232] == mem[_8232]
                                                                        mem[_8093] = mem[_8232]
                                                                        if mem[_8093] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                else:
                                                                    if uint8(_8082) == 4:
                                                                        mem[mem[64] + 68] = 3000
                                                                        mem[mem[64] + 100] = _7495
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_8073))
                                                                        call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_7494), address(cd[36]), 3000, _7495, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_8093] = 0
                                                                            if 0 <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                        else:
                                                                            _8245 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_8245] == mem[_8245]
                                                                            mem[_8093] = mem[_8245]
                                                                            if mem[_8093] <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                    else:
                                                                        mem[mem[64] + 68] = 10000
                                                                        mem[mem[64] + 100] = _7495
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_8073))
                                                                        call address(_8073).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_7494), address(cd[36]), 10000, _7495, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_8093] = 0
                                                                            if 0 <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                        else:
                                                                            _8246 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_8246] == mem[_8246]
                                                                            mem[_8093] = mem[_8246]
                                                                            if mem[_8093] <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                else:
                                                    _8126 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if 0 >= mem[_8126]:
                                                        revert with 'NH{q', 50
                                                    mem[_8126 + 32] = address(_7494)
                                                    if 1 >= mem[_8126]:
                                                        revert with 'NH{q', 50
                                                    mem[_8126 + 64] = address(cd[36])
                                                    mem[_8126 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_8126 + 100] = _7495
                                                    mem[_8126 + 132] = 64
                                                    mem[_8126 + 164] = mem[_8126]
                                                    idx = 0
                                                    s = _8126 + 32
                                                    t = _8126 + 196
                                                    while idx < mem[_8126]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(_8073))
                                                    staticcall address(_8073).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _8126 + (32 * mem[_8126]) + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        mem[_8093] = 0
                                                        if 0 <= mem[w]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            w = w
                                                            continue 
                                                    else:
                                                        _8400 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _8404 = mem[_8400]
                                                        require mem[_8400] <= test266151307()
                                                        require _8400 + mem[_8400] + 31 < _8400 + return_data.size
                                                        _8408 = mem[_8400 + mem[_8400]]
                                                        if mem[_8400 + mem[_8400]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        if _8400 + ceil32(return_data.size) + floor32(mem[_8400 + mem[_8400]]) + 1 > test266151307() or floor32(mem[_8400 + mem[_8400]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        mem[64] = _8400 + ceil32(return_data.size) + floor32(mem[_8400 + mem[_8400]]) + 1
                                                        mem[_8400 + ceil32(return_data.size)] = _8408
                                                        require _8404 + (32 * _8408) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _8400 + _8404 + 32
                                                        t = _8400 + ceil32(return_data.size) + 32
                                                        while idx < _8408:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 1 >= _8408:
                                                            revert with 'NH{q', 50
                                                        mem[_8093] = mem[_8400 + ceil32(return_data.size) + 64]
                                                        if mem[_8093] <= mem[w]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            w = w
                                                            continue 
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        mem[_8093 + 32] = mem[(32 * uint8(u)) + _21 + 32]
                                        if uint8(u) == 255:
                                            revert with 'NH{q', 17
                                        u = uint8(u) + 1
                                        w = _8093
                                        continue 
                                    if mem[w] > mem[_29 + 96]:
                                        mem[_29] = 3
                                        if uint8(idx) >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[_29 + 32] + 32] = mem[(32 * uint8(idx)) + 140 len 20]
                                        if uint8(s) >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[_29 + 32] + 64] = mem[(32 * uint8(s)) + 140 len 20]
                                        mem[mem[_29 + 64]] = t
                                        mem[mem[_29 + 64] + 32] = v
                                        mem[mem[_29 + 64] + 64] = w
                                        mem[_29 + 96] = mem[w]
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        s = uint8(s) + 1
                        continue 
                else:
                    mem[_29] = 2
                    if uint8(idx) >= mem[96]:
                        revert with 'NH{q', 50
                    mem[mem[_29 + 32] + 32] = mem[(32 * uint8(idx)) + 140 len 20]
                    mem[mem[_29 + 64]] = t
                    mem[mem[_29 + 64] + 32] = u
                    mem[_29 + 96] = mem[u]
                    s = 0
                    while uint8(s) < _3207:
                        if uint8(s) >= mem[96]:
                            revert with 'NH{q', 50
                        if uint8(idx) >= mem[96]:
                            revert with 'NH{q', 50
                        if mem[(32 * uint8(idx)) + 140 len 20] != mem[(32 * uint8(s)) + 140 len 20]:
                            if uint8(s) >= mem[96]:
                                revert with 'NH{q', 50
                            if mem[(32 * uint8(s)) + 140 len 20] != address(cd[4]):
                                if uint8(s) >= mem[96]:
                                    revert with 'NH{q', 50
                                if mem[(32 * uint8(s)) + 140 len 20] != address(cd[36]):
                                    if uint8(idx) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6879 = mem[(32 * uint8(idx)) + 128]
                                    if uint8(s) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _6885 = mem[(32 * uint8(s)) + 128]
                                    _6886 = mem[t]
                                    _6893 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_6893] = 0
                                    _6896 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6896] = 0
                                    mem[_6896 + 32] = 0
                                    mem[_6893 + 32] = _6896
                                    mem[_6893 + 64] = 0
                                    _6899 = mem[_21]
                                    u = 0
                                    v = _6893
                                    while uint8(u) < _6899:
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _7491 = mem[mem[(32 * uint8(u)) + _21 + 32] + 32]
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _7501 = mem[mem[(32 * uint8(u)) + _21 + 32]]
                                        _7505 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_7505] = 0
                                        _7509 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7509] = 0
                                        mem[_7509 + 32] = 0
                                        mem[_7505 + 32] = _7509
                                        mem[_7505 + 64] = 0
                                        if address(_6879) == address(_6885):
                                            if 0 <= mem[v]:
                                                if uint8(u) == 255:
                                                    revert with 'NH{q', 17
                                                u = uint8(u) + 1
                                                v = v
                                                continue 
                                        else:
                                            if uint8(_7501) == 1:
                                                mem[mem[64] + 36] = address(_6879)
                                                mem[mem[64] + 68] = address(_6885)
                                                require ext_code.size(address(_7491))
                                                staticcall address(_7491).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                                        gas gas_remaining wei
                                                       args _6886, address(_6879), address(_6885)
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    mem[_7505] = 0
                                                    if 0 <= mem[v]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        v = v
                                                        continue 
                                                else:
                                                    _7643 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    require mem[_7643] == mem[_7643]
                                                    _7677 = mem[_7643 + 32]
                                                    require mem[_7643 + 32] == bool(mem[_7643 + 32])
                                                    mem[_7505] = mem[_7643]
                                                    mem[_7505 + 64] = bool(_7677)
                                                    if mem[_7505] <= mem[v]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        v = v
                                                        continue 
                                            else:
                                                if uint8(_7501) != 2:
                                                    if uint8(_7501) == 3:
                                                        mem[mem[64] + 4] = address(_6879)
                                                        mem[mem[64] + 36] = address(_6885)
                                                        mem[mem[64] + 68] = 500
                                                        mem[mem[64] + 100] = _6886
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_7491))
                                                        call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                             gas gas_remaining wei
                                                            args address(_6879), address(_6885), 500, _6886, 0
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            mem[_7505] = 0
                                                            if 0 <= mem[v]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                v = v
                                                                continue 
                                                        else:
                                                            _7708 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_7708] == mem[_7708]
                                                            mem[_7505] = mem[_7708]
                                                            if mem[_7505] <= mem[v]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                v = v
                                                                continue 
                                                    else:
                                                        if uint8(_7501) == 4:
                                                            mem[mem[64] + 4] = address(_6879)
                                                            mem[mem[64] + 36] = address(_6885)
                                                            if uint8(_7501) == 3:
                                                                mem[mem[64] + 68] = 500
                                                                mem[mem[64] + 100] = _6886
                                                                mem[mem[64] + 132] = 0
                                                                require ext_code.size(address(_7491))
                                                                call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                     gas gas_remaining wei
                                                                    args address(_6879), address(_6885), 500, _6886, 0
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    mem[_7505] = 0
                                                                    if 0 <= mem[v]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        v = v
                                                                        continue 
                                                                else:
                                                                    _7719 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_7719] == mem[_7719]
                                                                    mem[_7505] = mem[_7719]
                                                                    if mem[_7505] <= mem[v]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        v = v
                                                                        continue 
                                                            else:
                                                                if uint8(_7501) == 4:
                                                                    mem[mem[64] + 68] = 3000
                                                                    mem[mem[64] + 100] = _6886
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7491))
                                                                    call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6879), address(_6885), 3000, _6886, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7505] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7736 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7736] == mem[_7736]
                                                                        mem[_7505] = mem[_7736]
                                                                        if mem[_7505] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                else:
                                                                    mem[mem[64] + 68] = 10000
                                                                    mem[mem[64] + 100] = _6886
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7491))
                                                                    call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6879), address(_6885), 10000, _6886, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7505] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7737 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7737] == mem[_7737]
                                                                        mem[_7505] = mem[_7737]
                                                                        if mem[_7505] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                        else:
                                                            if uint8(_7501) != 5:
                                                                if 0 <= mem[v]:
                                                                    if uint8(u) == 255:
                                                                        revert with 'NH{q', 17
                                                                    u = uint8(u) + 1
                                                                    v = v
                                                                    continue 
                                                            else:
                                                                mem[mem[64] + 4] = address(_6879)
                                                                mem[mem[64] + 36] = address(_6885)
                                                                if uint8(_7501) == 3:
                                                                    mem[mem[64] + 68] = 500
                                                                    mem[mem[64] + 100] = _6886
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_7491))
                                                                    call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_6879), address(_6885), 500, _6886, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_7505] = 0
                                                                        if 0 <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                    else:
                                                                        _7727 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_7727] == mem[_7727]
                                                                        mem[_7505] = mem[_7727]
                                                                        if mem[_7505] <= mem[v]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            v = v
                                                                            continue 
                                                                else:
                                                                    if uint8(_7501) == 4:
                                                                        mem[mem[64] + 68] = 3000
                                                                        mem[mem[64] + 100] = _6886
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_7491))
                                                                        call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_6879), address(_6885), 3000, _6886, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_7505] = 0
                                                                            if 0 <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                        else:
                                                                            _7742 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_7742] == mem[_7742]
                                                                            mem[_7505] = mem[_7742]
                                                                            if mem[_7505] <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                    else:
                                                                        mem[mem[64] + 68] = 10000
                                                                        mem[mem[64] + 100] = _6886
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_7491))
                                                                        call address(_7491).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_6879), address(_6885), 10000, _6886, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_7505] = 0
                                                                            if 0 <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                                        else:
                                                                            _7743 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_7743] == mem[_7743]
                                                                            mem[_7505] = mem[_7743]
                                                                            if mem[_7505] <= mem[v]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                v = v
                                                                                continue 
                                                else:
                                                    _7540 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if 0 >= mem[_7540]:
                                                        revert with 'NH{q', 50
                                                    mem[_7540 + 32] = address(_6879)
                                                    if 1 >= mem[_7540]:
                                                        revert with 'NH{q', 50
                                                    mem[_7540 + 64] = address(_6885)
                                                    mem[_7540 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_7540 + 100] = _6886
                                                    mem[_7540 + 132] = 64
                                                    mem[_7540 + 164] = mem[_7540]
                                                    idx = 0
                                                    s = _7540 + 32
                                                    t = _7540 + 196
                                                    while idx < mem[_7540]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(_7491))
                                                    staticcall address(_7491).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _7540 + (32 * mem[_7540]) + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        mem[_7505] = 0
                                                        if 0 <= mem[v]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            v = v
                                                            continue 
                                                    else:
                                                        _8097 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _8107 = mem[_8097]
                                                        require mem[_8097] <= test266151307()
                                                        require _8097 + mem[_8097] + 31 < _8097 + return_data.size
                                                        _8117 = mem[_8097 + mem[_8097]]
                                                        if mem[_8097 + mem[_8097]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        if _8097 + ceil32(return_data.size) + floor32(mem[_8097 + mem[_8097]]) + 1 > test266151307() or floor32(mem[_8097 + mem[_8097]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        mem[64] = _8097 + ceil32(return_data.size) + floor32(mem[_8097 + mem[_8097]]) + 1
                                                        mem[_8097 + ceil32(return_data.size)] = _8117
                                                        require _8107 + (32 * _8117) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _8097 + _8107 + 32
                                                        t = _8097 + ceil32(return_data.size) + 32
                                                        while idx < _8117:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 1 >= _8117:
                                                            revert with 'NH{q', 50
                                                        mem[_7505] = mem[_8097 + ceil32(return_data.size) + 64]
                                                        if mem[_7505] <= mem[v]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            v = v
                                                            continue 
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        mem[_7505 + 32] = mem[(32 * uint8(u)) + _21 + 32]
                                        if uint8(u) == 255:
                                            revert with 'NH{q', 17
                                        u = uint8(u) + 1
                                        v = _7505
                                        continue 
                                    if uint8(s) >= mem[96]:
                                        revert with 'NH{q', 50
                                    _7498 = mem[(32 * uint8(s)) + 128]
                                    _7499 = mem[v]
                                    _7504 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_7504] = 0
                                    _7508 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7508] = 0
                                    mem[_7508 + 32] = 0
                                    mem[_7504 + 32] = _7508
                                    mem[_7504 + 64] = 0
                                    _7513 = mem[_21]
                                    u = 0
                                    w = _7504
                                    while uint8(u) < _7513:
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _8078 = mem[mem[(32 * uint8(u)) + _21 + 32] + 32]
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        _8086 = mem[mem[(32 * uint8(u)) + _21 + 32]]
                                        _8096 = mem[64]
                                        mem[64] = mem[64] + 96
                                        mem[_8096] = 0
                                        _8103 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_8103] = 0
                                        mem[_8103 + 32] = 0
                                        mem[_8096 + 32] = _8103
                                        mem[_8096 + 64] = 0
                                        if address(_7498) == address(cd[36]):
                                            if 0 <= mem[w]:
                                                if uint8(u) == 255:
                                                    revert with 'NH{q', 17
                                                u = uint8(u) + 1
                                                w = w
                                                continue 
                                        else:
                                            if uint8(_8086) == 1:
                                                mem[mem[64] + 36] = address(_7498)
                                                mem[mem[64] + 68] = address(cd[36])
                                                require ext_code.size(address(_8078))
                                                staticcall address(_8078).getAmountOut(uint256 arg1, address arg2, address arg3) with:
                                                        gas gas_remaining wei
                                                       args _7499, address(_7498), address(cd[36])
                                                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    mem[_8096] = 0
                                                    if 0 <= mem[w]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        w = w
                                                        continue 
                                                else:
                                                    _8175 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    require mem[_8175] == mem[_8175]
                                                    _8211 = mem[_8175 + 32]
                                                    require mem[_8175 + 32] == bool(mem[_8175 + 32])
                                                    mem[_8096] = mem[_8175]
                                                    mem[_8096 + 64] = bool(_8211)
                                                    if mem[_8096] <= mem[w]:
                                                        if uint8(u) == 255:
                                                            revert with 'NH{q', 17
                                                        u = uint8(u) + 1
                                                        w = w
                                                        continue 
                                            else:
                                                if uint8(_8086) != 2:
                                                    if uint8(_8086) == 3:
                                                        mem[mem[64] + 4] = address(_7498)
                                                        mem[mem[64] + 36] = address(cd[36])
                                                        mem[mem[64] + 68] = 500
                                                        mem[mem[64] + 100] = _7499
                                                        mem[mem[64] + 132] = 0
                                                        require ext_code.size(address(_8078))
                                                        call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                             gas gas_remaining wei
                                                            args address(_7498), address(cd[36]), 500, _7499, 0
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            mem[_8096] = 0
                                                            if 0 <= mem[w]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                w = w
                                                                continue 
                                                        else:
                                                            _8224 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            require mem[_8224] == mem[_8224]
                                                            mem[_8096] = mem[_8224]
                                                            if mem[_8096] <= mem[w]:
                                                                if uint8(u) == 255:
                                                                    revert with 'NH{q', 17
                                                                u = uint8(u) + 1
                                                                w = w
                                                                continue 
                                                    else:
                                                        if uint8(_8086) == 4:
                                                            mem[mem[64] + 4] = address(_7498)
                                                            mem[mem[64] + 36] = address(cd[36])
                                                            if uint8(_8086) == 3:
                                                                mem[mem[64] + 68] = 500
                                                                mem[mem[64] + 100] = _7499
                                                                mem[mem[64] + 132] = 0
                                                                require ext_code.size(address(_8078))
                                                                call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                     gas gas_remaining wei
                                                                    args address(_7498), address(cd[36]), 500, _7499, 0
                                                                mem[mem[64]] = ext_call.return_data[0]
                                                                if not ext_call.success:
                                                                    mem[_8096] = 0
                                                                    if 0 <= mem[w]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        w = w
                                                                        continue 
                                                                else:
                                                                    _8229 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 32
                                                                    require mem[_8229] == mem[_8229]
                                                                    mem[_8096] = mem[_8229]
                                                                    if mem[_8096] <= mem[w]:
                                                                        if uint8(u) == 255:
                                                                            revert with 'NH{q', 17
                                                                        u = uint8(u) + 1
                                                                        w = w
                                                                        continue 
                                                            else:
                                                                if uint8(_8086) == 4:
                                                                    mem[mem[64] + 68] = 3000
                                                                    mem[mem[64] + 100] = _7499
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8078))
                                                                    call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7498), address(cd[36]), 3000, _7499, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8096] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8242 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8242] == mem[_8242]
                                                                        mem[_8096] = mem[_8242]
                                                                        if mem[_8096] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                else:
                                                                    mem[mem[64] + 68] = 10000
                                                                    mem[mem[64] + 100] = _7499
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8078))
                                                                    call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7498), address(cd[36]), 10000, _7499, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8096] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8243 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8243] == mem[_8243]
                                                                        mem[_8096] = mem[_8243]
                                                                        if mem[_8096] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                        else:
                                                            if uint8(_8086) != 5:
                                                                if 0 <= mem[w]:
                                                                    if uint8(u) == 255:
                                                                        revert with 'NH{q', 17
                                                                    u = uint8(u) + 1
                                                                    w = w
                                                                    continue 
                                                            else:
                                                                mem[mem[64] + 4] = address(_7498)
                                                                mem[mem[64] + 36] = address(cd[36])
                                                                if uint8(_8086) == 3:
                                                                    mem[mem[64] + 68] = 500
                                                                    mem[mem[64] + 100] = _7499
                                                                    mem[mem[64] + 132] = 0
                                                                    require ext_code.size(address(_8078))
                                                                    call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                         gas gas_remaining wei
                                                                        args address(_7498), address(cd[36]), 500, _7499, 0
                                                                    mem[mem[64]] = ext_call.return_data[0]
                                                                    if not ext_call.success:
                                                                        mem[_8096] = 0
                                                                        if 0 <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                    else:
                                                                        _8235 = mem[64]
                                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                                        require return_data.size >= 32
                                                                        require mem[_8235] == mem[_8235]
                                                                        mem[_8096] = mem[_8235]
                                                                        if mem[_8096] <= mem[w]:
                                                                            if uint8(u) == 255:
                                                                                revert with 'NH{q', 17
                                                                            u = uint8(u) + 1
                                                                            w = w
                                                                            continue 
                                                                else:
                                                                    if uint8(_8086) == 4:
                                                                        mem[mem[64] + 68] = 3000
                                                                        mem[mem[64] + 100] = _7499
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_8078))
                                                                        call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_7498), address(cd[36]), 3000, _7499, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_8096] = 0
                                                                            if 0 <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                        else:
                                                                            _8248 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_8248] == mem[_8248]
                                                                            mem[_8096] = mem[_8248]
                                                                            if mem[_8096] <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                    else:
                                                                        mem[mem[64] + 68] = 10000
                                                                        mem[mem[64] + 100] = _7499
                                                                        mem[mem[64] + 132] = 0
                                                                        require ext_code.size(address(_8078))
                                                                        call address(_8078).quoteExactInputSingle(address arg1, address arg2, uint24 arg3, uint256 arg4, uint160 arg5) with:
                                                                             gas gas_remaining wei
                                                                            args address(_7498), address(cd[36]), 10000, _7499, 0
                                                                        mem[mem[64]] = ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            mem[_8096] = 0
                                                                            if 0 <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                                        else:
                                                                            _8249 = mem[64]
                                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                                            require return_data.size >= 32
                                                                            require mem[_8249] == mem[_8249]
                                                                            mem[_8096] = mem[_8249]
                                                                            if mem[_8096] <= mem[w]:
                                                                                if uint8(u) == 255:
                                                                                    revert with 'NH{q', 17
                                                                                u = uint8(u) + 1
                                                                                w = w
                                                                                continue 
                                                else:
                                                    _8129 = mem[64]
                                                    mem[mem[64]] = 2
                                                    mem[64] = mem[64] + 96
                                                    if 0 >= mem[_8129]:
                                                        revert with 'NH{q', 50
                                                    mem[_8129 + 32] = address(_7498)
                                                    if 1 >= mem[_8129]:
                                                        revert with 'NH{q', 50
                                                    mem[_8129 + 64] = address(cd[36])
                                                    mem[_8129 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                                                    mem[_8129 + 100] = _7499
                                                    mem[_8129 + 132] = 64
                                                    mem[_8129 + 164] = mem[_8129]
                                                    idx = 0
                                                    s = _8129 + 32
                                                    t = _8129 + 196
                                                    while idx < mem[_8129]:
                                                        mem[t] = mem[s + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(address(_8078))
                                                    staticcall address(_8078).mem[mem[64] len 4] with:
                                                            gas gas_remaining wei
                                                           args mem[mem[64] + 4 len _8129 + (32 * mem[_8129]) + -mem[64] + 192]
                                                    if not ext_call.success:
                                                        mem[_8096] = 0
                                                        if 0 <= mem[w]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            w = w
                                                            continue 
                                                    else:
                                                        _8401 = mem[64]
                                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        _8406 = mem[_8401]
                                                        require mem[_8401] <= test266151307()
                                                        require _8401 + mem[_8401] + 31 < _8401 + return_data.size
                                                        _8409 = mem[_8401 + mem[_8401]]
                                                        if mem[_8401 + mem[_8401]] > test266151307():
                                                            revert with 'NH{q', 65
                                                        if _8401 + ceil32(return_data.size) + floor32(mem[_8401 + mem[_8401]]) + 1 > test266151307() or floor32(mem[_8401 + mem[_8401]]) + 1 < 0:
                                                            revert with 'NH{q', 65
                                                        mem[64] = _8401 + ceil32(return_data.size) + floor32(mem[_8401 + mem[_8401]]) + 1
                                                        mem[_8401 + ceil32(return_data.size)] = _8409
                                                        require _8406 + (32 * _8409) + 32 <= return_data.size
                                                        idx = 0
                                                        s = _8401 + _8406 + 32
                                                        t = _8401 + ceil32(return_data.size) + 32
                                                        while idx < _8409:
                                                            require mem[s] == mem[s]
                                                            mem[t] = mem[s]
                                                            idx = idx + 1
                                                            s = s + 32
                                                            t = t + 32
                                                            continue 
                                                        if 1 >= _8409:
                                                            revert with 'NH{q', 50
                                                        mem[_8096] = mem[_8401 + ceil32(return_data.size) + 64]
                                                        if mem[_8096] <= mem[w]:
                                                            if uint8(u) == 255:
                                                                revert with 'NH{q', 17
                                                            u = uint8(u) + 1
                                                            w = w
                                                            continue 
                                        if uint8(u) >= mem[_21]:
                                            revert with 'NH{q', 50
                                        mem[_8096 + 32] = mem[(32 * uint8(u)) + _21 + 32]
                                        if uint8(u) == 255:
                                            revert with 'NH{q', 17
                                        u = uint8(u) + 1
                                        w = _8096
                                        continue 
                                    if mem[w] > mem[_29 + 96]:
                                        mem[_29] = 3
                                        if uint8(idx) >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[_29 + 32] + 32] = mem[(32 * uint8(idx)) + 140 len 20]
                                        if uint8(s) >= mem[96]:
                                            revert with 'NH{q', 50
                                        mem[mem[_29 + 32] + 64] = mem[(32 * uint8(s)) + 140 len 20]
                                        mem[mem[_29 + 64]] = t
                                        mem[mem[_29 + 64] + 32] = v
                                        mem[mem[_29 + 64] + 64] = w
                                        mem[_29 + 96] = mem[w]
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        s = uint8(s) + 1
                        continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    _4248 = mem[64]
    mem[mem[64]] = mem[_29 + 31 len 1]
    idx = 0
    s = mem[_29 + 32]
    t = mem[64] + 32
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = mem[_29 + 64]
    t = mem[64] + 128
    while idx < 3:
        _6075 = mem[s]
        mem[t] = mem[mem[s]]
        _6099 = mem[_6075 + 32]
        mem[t + 32] = mem[mem[_6075 + 32] + 31 len 1]
        mem[t + 64] = mem[_6099 + 44 len 20]
        mem[t + 96] = bool(mem[_6075 + 64])
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    mem[_4248 + 512] = mem[_29 + 96]
    return memory
      from mem[64]
       len _4248 + -mem[64] + 544
}



}
