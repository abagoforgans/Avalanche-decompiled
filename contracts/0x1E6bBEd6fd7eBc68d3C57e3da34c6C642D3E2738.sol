contract main {




// =====================  Runtime code  =====================


#
#  - query(address arg1)
#
function _fallback() payable {
    revert
}

function sub_7844626e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 0, 65
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            mem[64] = (131 * ('cd', 4).length) + 224
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _2197 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_2197))
                    staticcall address(_2197).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _2210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2210] = 1
                        mem[_2210 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2210
                        if idx >= mem[96]:
                            revert with 0, 50
                        _2230 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_2230))
                        staticcall address(_2230).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _2270 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2270] = 1
                            mem[_2270 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2270
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                            else:
                                _2355 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2355] == mem[_2355 + 31 len 1]
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_2355 + 31 len 1]
                        else:
                            _2254 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2283 = mem[_2254]
                            require mem[_2254] <= test266151307()
                            require _2254 + mem[_2254] + 31 < _2254 + return_data.size
                            _2322 = mem[_2254 + mem[_2254]]
                            if mem[_2254 + mem[_2254]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_2254 + mem[_2254]]) + 32 < 0 or _2254 + ceil32(return_data.size) + ceil32(mem[_2254 + mem[_2254]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _2254 + ceil32(return_data.size) + ceil32(mem[_2254 + mem[_2254]]) + 32
                            mem[_2254 + ceil32(return_data.size)] = _2322
                            require _2283 + _2322 + 32 <= return_data.size
                            s = 0
                            while s < _2322:
                                mem[s + _2254 + ceil32(return_data.size) + 32] = mem[s + _2254 + _2283 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_2322) <= _2322:
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2254 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _3455 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3455] == mem[_3455 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3455 + 31 len 1]
                            else:
                                mem[_2254 + ceil32(return_data.size) + _2322 + 32] = 0
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2254 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _3480 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3480] == mem[_3480 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3480 + 31 len 1]
                    else:
                        _2207 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2216 = mem[_2207]
                        require mem[_2207] <= test266151307()
                        require _2207 + mem[_2207] + 31 < _2207 + return_data.size
                        _2233 = mem[_2207 + mem[_2207]]
                        if mem[_2207 + mem[_2207]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_2207 + mem[_2207]]) + 32 < 0 or _2207 + ceil32(return_data.size) + ceil32(mem[_2207 + mem[_2207]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _2207 + ceil32(return_data.size) + ceil32(mem[_2207 + mem[_2207]]) + 32
                        mem[_2207 + ceil32(return_data.size)] = _2233
                        require _2216 + _2233 + 32 <= return_data.size
                        s = 0
                        while s < _2233:
                            mem[s + _2207 + ceil32(return_data.size) + 32] = mem[s + _2207 + _2216 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2233) <= _2233:
                            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2207 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            _3407 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3407))
                            staticcall address(_3407).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                _3481 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3481] = 1
                                mem[_3481 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3481
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _3600 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3600] == mem[_3600 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3600 + 31 len 1]
                            else:
                                _3456 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3499 = mem[_3456]
                                require mem[_3456] <= test266151307()
                                require _3456 + mem[_3456] + 31 < _3456 + return_data.size
                                _3560 = mem[_3456 + mem[_3456]]
                                if mem[_3456 + mem[_3456]] > test266151307():
                                    revert with 0, 65
                                if ceil32(mem[_3456 + mem[_3456]]) + 32 < 0 or _3456 + ceil32(return_data.size) + ceil32(mem[_3456 + mem[_3456]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3456 + ceil32(return_data.size) + ceil32(mem[_3456 + mem[_3456]]) + 32
                                mem[_3456 + ceil32(return_data.size)] = _3560
                                require _3499 + _3560 + 32 <= return_data.size
                                s = 0
                                while s < _3560:
                                    mem[s + _3456 + ceil32(return_data.size) + 32] = mem[s + _3456 + _3499 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3560) <= _3560:
                                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3456 + ceil32(return_data.size)
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                    else:
                                        _4545 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4545] == mem[_4545 + 31 len 1]
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4545 + 31 len 1]
                                else:
                                    mem[_3456 + ceil32(return_data.size) + _3560 + 32] = 0
                                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3456 + ceil32(return_data.size)
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                    else:
                                        _4566 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4566] == mem[_4566 + 31 len 1]
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4566 + 31 len 1]
                        else:
                            mem[_2207 + ceil32(return_data.size) + _2233 + 32] = 0
                            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2207 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            _3426 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_3426))
                            staticcall address(_3426).0x95d89b41 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                _3500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3500] = 1
                                mem[_3500 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3500
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _3616 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_3616] == mem[_3616 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3616 + 31 len 1]
                            else:
                                _3483 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3524 = mem[_3483]
                                require mem[_3483] <= test266151307()
                                require _3483 + mem[_3483] + 31 < _3483 + return_data.size
                                _3574 = mem[_3483 + mem[_3483]]
                                if mem[_3483 + mem[_3483]] > test266151307():
                                    revert with 0, 65
                                if ceil32(mem[_3483 + mem[_3483]]) + 32 < 0 or _3483 + ceil32(return_data.size) + ceil32(mem[_3483 + mem[_3483]]) + 32 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3483 + ceil32(return_data.size) + ceil32(mem[_3483 + mem[_3483]]) + 32
                                mem[_3483 + ceil32(return_data.size)] = _3574
                                require _3524 + _3574 + 32 <= return_data.size
                                s = 0
                                while s < _3574:
                                    mem[s + _3483 + ceil32(return_data.size) + 32] = mem[s + _3483 + _3524 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_3574) <= _3574:
                                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3483 + ceil32(return_data.size)
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                    else:
                                        _4546 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4546] == mem[_4546 + 31 len 1]
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4546 + 31 len 1]
                                else:
                                    mem[_3483 + ceil32(return_data.size) + _3574 + 32] = 0
                                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3483 + ceil32(return_data.size)
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                    else:
                                        _4568 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_4568] == mem[_4568 + 31 len 1]
                                        if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                            revert with 0, 50
                                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4568 + 31 len 1]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _2196 = mem[64]
                mem[mem[64]] = 96
                _2206 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * _2206) + 128
                u = mem[64] + 128
                while idx < _2206:
                    mem[u] = t + -_2196 - 128
                    _3286 = mem[s]
                    _3296 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _3296:
                        mem[v + t + 32] = mem[v + _3286 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_3296) > _3296:
                        mem[t + _3296 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_3296) + t + 32
                    u = u + 32
                    continue 
                mem[_2196 + 32] = t - _2196
                _3314 = mem[(64 * ('cd', 4).length) + 160]
                mem[t] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                u = t + (32 * _3314) + 32
                v = t + 32
                while idx < _3314:
                    mem[v] = u + -t - 32
                    _4315 = mem[s]
                    _4338 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _4338:
                        mem[t + u + 32] = mem[t + _4315 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_4338) > _4338:
                        mem[u + _4338 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = ceil32(_4338) + u + 32
                    v = v + 32
                    continue 
                mem[_2196 + 64] = u - _2196
                _4337 = mem[(98 * ('cd', 4).length) + 192]
                mem[u] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = u + 32
                t = (98 * ('cd', 4).length) + 224
                while idx < _4337:
                    mem[s] = mem[t + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len u + (32 * _4337) + -mem[64] + 32
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _2201 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_2201))
                staticcall address(_2201).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _2212 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2212] = 1
                    mem[_2212 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2212
                    if idx >= mem[96]:
                        revert with 0, 50
                    _2235 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_2235))
                    staticcall address(_2235).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _2274 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2274] = 1
                        mem[_2274 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2274
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                        else:
                            _2358 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2358] == mem[_2358 + 31 len 1]
                            if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                revert with 0, 50
                            mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_2358 + 31 len 1]
                    else:
                        _2258 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2284 = mem[_2258]
                        require mem[_2258] <= test266151307()
                        require _2258 + mem[_2258] + 31 < _2258 + return_data.size
                        _2328 = mem[_2258 + mem[_2258]]
                        if mem[_2258 + mem[_2258]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_2258 + mem[_2258]]) + 32 < 0 or _2258 + ceil32(return_data.size) + ceil32(mem[_2258 + mem[_2258]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _2258 + ceil32(return_data.size) + ceil32(mem[_2258 + mem[_2258]]) + 32
                        mem[_2258 + ceil32(return_data.size)] = _2328
                        require _2284 + _2328 + 32 <= return_data.size
                        s = 0
                        while s < _2328:
                            mem[s + _2258 + ceil32(return_data.size) + 32] = mem[s + _2258 + _2284 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_2328) <= _2328:
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2258 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                            else:
                                _3457 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3457] == mem[_3457 + 31 len 1]
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3457 + 31 len 1]
                        else:
                            mem[_2258 + ceil32(return_data.size) + _2328 + 32] = 0
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _2258 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                            else:
                                _3485 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3485] == mem[_3485 + 31 len 1]
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3485 + 31 len 1]
                else:
                    _2209 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2218 = mem[_2209]
                    require mem[_2209] <= test266151307()
                    require _2209 + mem[_2209] + 31 < _2209 + return_data.size
                    _2238 = mem[_2209 + mem[_2209]]
                    if mem[_2209 + mem[_2209]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_2209 + mem[_2209]]) + 32 < 0 or _2209 + ceil32(return_data.size) + ceil32(mem[_2209 + mem[_2209]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _2209 + ceil32(return_data.size) + ceil32(mem[_2209 + mem[_2209]]) + 32
                    mem[_2209 + ceil32(return_data.size)] = _2238
                    require _2218 + _2238 + 32 <= return_data.size
                    s = 0
                    while s < _2238:
                        mem[s + _2209 + ceil32(return_data.size) + 32] = mem[s + _2209 + _2218 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2238) <= _2238:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2209 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _3417 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3417))
                        staticcall address(_3417).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _3486 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3486] = 1
                            mem[_3486 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3486
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                            else:
                                _3603 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3603] == mem[_3603 + 31 len 1]
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3603 + 31 len 1]
                        else:
                            _3458 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3504 = mem[_3458]
                            require mem[_3458] <= test266151307()
                            require _3458 + mem[_3458] + 31 < _3458 + return_data.size
                            _3565 = mem[_3458 + mem[_3458]]
                            if mem[_3458 + mem[_3458]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_3458 + mem[_3458]]) + 32 < 0 or _3458 + ceil32(return_data.size) + ceil32(mem[_3458 + mem[_3458]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _3458 + ceil32(return_data.size) + ceil32(mem[_3458 + mem[_3458]]) + 32
                            mem[_3458 + ceil32(return_data.size)] = _3565
                            require _3504 + _3565 + 32 <= return_data.size
                            s = 0
                            while s < _3565:
                                mem[s + _3458 + ceil32(return_data.size) + 32] = mem[s + _3458 + _3504 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3565) <= _3565:
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3458 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _4547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4547] == mem[_4547 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4547 + 31 len 1]
                            else:
                                mem[_3458 + ceil32(return_data.size) + _3565 + 32] = 0
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3458 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _4570 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4570] == mem[_4570 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4570 + 31 len 1]
                    else:
                        mem[_2209 + ceil32(return_data.size) + _2238 + 32] = 0
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _2209 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _3432 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_3432))
                        staticcall address(_3432).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _3505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3505] = 1
                            mem[_3505 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3505
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                            else:
                                _3620 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3620] == mem[_3620 + 31 len 1]
                                if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_3620 + 31 len 1]
                        else:
                            _3488 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3527 = mem[_3488]
                            require mem[_3488] <= test266151307()
                            require _3488 + mem[_3488] + 31 < _3488 + return_data.size
                            _3578 = mem[_3488 + mem[_3488]]
                            if mem[_3488 + mem[_3488]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_3488 + mem[_3488]]) + 32 < 0 or _3488 + ceil32(return_data.size) + ceil32(mem[_3488 + mem[_3488]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _3488 + ceil32(return_data.size) + ceil32(mem[_3488 + mem[_3488]]) + 32
                            mem[_3488 + ceil32(return_data.size)] = _3578
                            require _3527 + _3578 + 32 <= return_data.size
                            s = 0
                            while s < _3578:
                                mem[s + _3488 + ceil32(return_data.size) + 32] = mem[s + _3488 + _3527 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_3578) <= _3578:
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3488 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _4548 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4548] == mem[_4548 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4548 + 31 len 1]
                            else:
                                mem[_3488 + ceil32(return_data.size) + _3578 + 32] = 0
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3488 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = 255
                                else:
                                    _4572 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_4572] == mem[_4572 + 31 len 1]
                                    if idx >= mem[(98 * ('cd', 4).length) + 192]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_4572 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _2200 = mem[64]
            mem[mem[64]] = 96
            _2208 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _2208) + 128
            u = mem[64] + 128
            while idx < _2208:
                mem[u] = t + -_2200 - 128
                _3289 = mem[s]
                _3297 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _3297:
                    mem[v + t + 32] = mem[v + _3289 + 32]
                    v = v + 32
                    continue 
                if ceil32(_3297) > _3297:
                    mem[t + _3297 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_3297) + t + 32
                u = u + 32
                continue 
            mem[_2200 + 32] = t - _2200
            _3315 = mem[(64 * ('cd', 4).length) + 160]
            mem[t] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            u = t + (32 * _3315) + 32
            v = t + 32
            while idx < _3315:
                mem[v] = u + -t - 32
                _4319 = mem[s]
                _4340 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _4340:
                    mem[t + u + 32] = mem[t + _4319 + 32]
                    t = t + 32
                    continue 
                if ceil32(_4340) > _4340:
                    mem[u + _4340 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_4340) + u + 32
                v = v + 32
                continue 
            mem[_2200 + 64] = u - _2200
            _4339 = mem[(98 * ('cd', 4).length) + 192]
            mem[u] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = u + 32
            t = (98 * ('cd', 4).length) + 224
            while idx < _4339:
                mem[s] = mem[t + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len u + (32 * _4339) + -mem[64] + 32
        mem[(64 * ('cd', 4).length) + 192] = 96
        s = (64 * ('cd', 4).length) + 192
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        _2204 = mem[64]
        mem[mem[64]] = ('cd', 4).length
        mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _3299 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3299))
                staticcall address(_3299).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _3329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3329] = 1
                    mem[_3329 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3329
                    if idx >= mem[96]:
                        revert with 0, 50
                    _3378 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3378))
                    staticcall address(_3378).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _3461 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3461] = 1
                        mem[_3461 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3461
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = 255
                        else:
                            _3579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3579] == mem[_3579 + 31 len 1]
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = mem[_3579 + 31 len 1]
                    else:
                        _3437 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3489 = mem[_3437]
                        require mem[_3437] <= test266151307()
                        require _3437 + mem[_3437] + 31 < _3437 + return_data.size
                        _3533 = mem[_3437 + mem[_3437]]
                        if mem[_3437 + mem[_3437]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_3437 + mem[_3437]]) + 32 < 0 or _3437 + ceil32(return_data.size) + ceil32(mem[_3437 + mem[_3437]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _3437 + ceil32(return_data.size) + ceil32(mem[_3437 + mem[_3437]]) + 32
                        mem[_3437 + ceil32(return_data.size)] = _3533
                        require _3489 + _3533 + 32 <= return_data.size
                        s = 0
                        while s < _3533:
                            mem[s + _3437 + ceil32(return_data.size) + 32] = mem[s + _3437 + _3489 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3533) <= _3533:
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3437 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _4549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4549] == mem[_4549 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_4549 + 31 len 1]
                        else:
                            mem[_3437 + ceil32(return_data.size) + _3533 + 32] = 0
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3437 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _4574 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4574] == mem[_4574 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_4574 + 31 len 1]
                else:
                    _3318 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3346 = mem[_3318]
                    require mem[_3318] <= test266151307()
                    require _3318 + mem[_3318] + 31 < _3318 + return_data.size
                    _3381 = mem[_3318 + mem[_3318]]
                    if mem[_3318 + mem[_3318]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_3318 + mem[_3318]]) + 32 < 0 or _3318 + ceil32(return_data.size) + ceil32(mem[_3318 + mem[_3318]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3318 + ceil32(return_data.size) + ceil32(mem[_3318 + mem[_3318]]) + 32
                    mem[_3318 + ceil32(return_data.size)] = _3381
                    require _3346 + _3381 + 32 <= return_data.size
                    s = 0
                    while s < _3381:
                        mem[s + _3318 + ceil32(return_data.size) + 32] = mem[s + _3318 + _3346 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3381) <= _3381:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3318 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _4467 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4467))
                        staticcall address(_4467).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _4575 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4575] = 1
                            mem[_4575 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4575
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _4702 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4702] == mem[_4702 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_4702 + 31 len 1]
                        else:
                            _4550 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4605 = mem[_4550]
                            require mem[_4550] <= test266151307()
                            require _4550 + mem[_4550] + 31 < _4550 + return_data.size
                            _4658 = mem[_4550 + mem[_4550]]
                            if mem[_4550 + mem[_4550]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_4550 + mem[_4550]]) + 32 < 0 or _4550 + ceil32(return_data.size) + ceil32(mem[_4550 + mem[_4550]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _4550 + ceil32(return_data.size) + ceil32(mem[_4550 + mem[_4550]]) + 32
                            mem[_4550 + ceil32(return_data.size)] = _4658
                            require _4605 + _4658 + 32 <= return_data.size
                            s = 0
                            while s < _4658:
                                mem[s + _4550 + ceil32(return_data.size) + 32] = mem[s + _4550 + _4605 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4658) <= _4658:
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4550 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = 255
                                else:
                                    _5287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5287] == mem[_5287 + 31 len 1]
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = mem[_5287 + 31 len 1]
                            else:
                                mem[_4550 + ceil32(return_data.size) + _4658 + 32] = 0
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4550 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = 255
                                else:
                                    _5300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5300] == mem[_5300 + 31 len 1]
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = mem[_5300 + 31 len 1]
                    else:
                        mem[_3318 + ceil32(return_data.size) + _3381 + 32] = 0
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3318 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _4516 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4516))
                        staticcall address(_4516).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _4606 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4606] = 1
                            mem[_4606 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4606
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _4721 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4721] == mem[_4721 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_4721 + 31 len 1]
                        else:
                            _4577 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4633 = mem[_4577]
                            require mem[_4577] <= test266151307()
                            require _4577 + mem[_4577] + 31 < _4577 + return_data.size
                            _4678 = mem[_4577 + mem[_4577]]
                            if mem[_4577 + mem[_4577]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_4577 + mem[_4577]]) + 32 < 0 or _4577 + ceil32(return_data.size) + ceil32(mem[_4577 + mem[_4577]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _4577 + ceil32(return_data.size) + ceil32(mem[_4577 + mem[_4577]]) + 32
                            mem[_4577 + ceil32(return_data.size)] = _4678
                            require _4633 + _4678 + 32 <= return_data.size
                            s = 0
                            while s < _4678:
                                mem[s + _4577 + ceil32(return_data.size) + 32] = mem[s + _4577 + _4633 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4678) <= _4678:
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4577 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = 255
                                else:
                                    _5288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5288] == mem[_5288 + 31 len 1]
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = mem[_5288 + 31 len 1]
                            else:
                                mem[_4577 + ceil32(return_data.size) + _4678 + 32] = 0
                                if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4577 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = 255
                                else:
                                    _5302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5302] == mem[_5302 + 31 len 1]
                                    if idx >= mem[_2204]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2204 + 32] = mem[_5302 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3298 = mem[64]
            mem[mem[64]] = 96
            _3317 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _3317) + 128
            u = mem[64] + 128
            while idx < _3317:
                mem[u] = t + -_3298 - 128
                _4323 = mem[s]
                _4341 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _4341:
                    mem[v + t + 32] = mem[v + _4323 + 32]
                    v = v + 32
                    continue 
                if ceil32(_4341) > _4341:
                    mem[t + _4341 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_4341) + t + 32
                u = u + 32
                continue 
            mem[_3298 + 32] = t - _3298
            _4353 = mem[(64 * ('cd', 4).length) + 160]
            mem[t] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            u = t + (32 * _4353) + 32
            v = t + 32
            while idx < _4353:
                mem[v] = u + -t - 32
                _5105 = mem[s]
                _5130 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _5130:
                    mem[t + u + 32] = mem[t + _5105 + 32]
                    t = t + 32
                    continue 
                if ceil32(_5130) > _5130:
                    mem[u + _5130 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_5130) + u + 32
                v = v + 32
                continue 
            mem[_3298 + 64] = u - _3298
            _5129 = mem[_2204]
            mem[u] = mem[_2204]
            idx = 0
            s = u + 32
            t = _2204 + 32
            while idx < _5129:
                mem[s] = mem[t + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len u + (32 * _5129) + -mem[64] + 32
        mem[_2204 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _3303 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_3303))
            staticcall address(_3303).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                _3331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3331] = 1
                mem[_3331 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3331
                if idx >= mem[96]:
                    revert with 0, 50
                _3383 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3383))
                staticcall address(_3383).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _3465 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3465] = 1
                    mem[_3465 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[(64 * ('cd', 4).length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3465
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_2204]:
                            revert with 0, 50
                        mem[(32 * idx) + _2204 + 32] = 255
                    else:
                        _3582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3582] == mem[_3582 + 31 len 1]
                        if idx >= mem[_2204]:
                            revert with 0, 50
                        mem[(32 * idx) + _2204 + 32] = mem[_3582 + 31 len 1]
                else:
                    _3441 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3490 = mem[_3441]
                    require mem[_3441] <= test266151307()
                    require _3441 + mem[_3441] + 31 < _3441 + return_data.size
                    _3539 = mem[_3441 + mem[_3441]]
                    if mem[_3441 + mem[_3441]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_3441 + mem[_3441]]) + 32 < 0 or _3441 + ceil32(return_data.size) + ceil32(mem[_3441 + mem[_3441]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3441 + ceil32(return_data.size) + ceil32(mem[_3441 + mem[_3441]]) + 32
                    mem[_3441 + ceil32(return_data.size)] = _3539
                    require _3490 + _3539 + 32 <= return_data.size
                    s = 0
                    while s < _3539:
                        mem[s + _3441 + ceil32(return_data.size) + 32] = mem[s + _3441 + _3490 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3539) <= _3539:
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3441 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = 255
                        else:
                            _4551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4551] == mem[_4551 + 31 len 1]
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = mem[_4551 + 31 len 1]
                    else:
                        mem[_3441 + ceil32(return_data.size) + _3539 + 32] = 0
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _3441 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = 255
                        else:
                            _4579 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4579] == mem[_4579 + 31 len 1]
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = mem[_4579 + 31 len 1]
            else:
                _3320 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3348 = mem[_3320]
                require mem[_3320] <= test266151307()
                require _3320 + mem[_3320] + 31 < _3320 + return_data.size
                _3386 = mem[_3320 + mem[_3320]]
                if mem[_3320 + mem[_3320]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_3320 + mem[_3320]]) + 32 < 0 or _3320 + ceil32(return_data.size) + ceil32(mem[_3320 + mem[_3320]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _3320 + ceil32(return_data.size) + ceil32(mem[_3320 + mem[_3320]]) + 32
                mem[_3320 + ceil32(return_data.size)] = _3386
                require _3348 + _3386 + 32 <= return_data.size
                s = 0
                while s < _3386:
                    mem[s + _3320 + ceil32(return_data.size) + 32] = mem[s + _3320 + _3348 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3386) <= _3386:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3320 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _4477 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_4477))
                    staticcall address(_4477).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _4580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4580] = 1
                        mem[_4580 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4580
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = 255
                        else:
                            _4705 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4705] == mem[_4705 + 31 len 1]
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = mem[_4705 + 31 len 1]
                    else:
                        _4552 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4610 = mem[_4552]
                        require mem[_4552] <= test266151307()
                        require _4552 + mem[_4552] + 31 < _4552 + return_data.size
                        _4663 = mem[_4552 + mem[_4552]]
                        if mem[_4552 + mem[_4552]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_4552 + mem[_4552]]) + 32 < 0 or _4552 + ceil32(return_data.size) + ceil32(mem[_4552 + mem[_4552]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _4552 + ceil32(return_data.size) + ceil32(mem[_4552 + mem[_4552]]) + 32
                        mem[_4552 + ceil32(return_data.size)] = _4663
                        require _4610 + _4663 + 32 <= return_data.size
                        s = 0
                        while s < _4663:
                            mem[s + _4552 + ceil32(return_data.size) + 32] = mem[s + _4552 + _4610 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4663) <= _4663:
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4552 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _5289 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5289] == mem[_5289 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_5289 + 31 len 1]
                        else:
                            mem[_4552 + ceil32(return_data.size) + _4663 + 32] = 0
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4552 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _5304 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5304] == mem[_5304 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_5304 + 31 len 1]
                else:
                    mem[_3320 + ceil32(return_data.size) + _3386 + 32] = 0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3320 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _4522 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_4522))
                    staticcall address(_4522).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _4611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4611] = 1
                        mem[_4611 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[(64 * ('cd', 4).length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4611
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = 255
                        else:
                            _4725 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4725] == mem[_4725 + 31 len 1]
                            if idx >= mem[_2204]:
                                revert with 0, 50
                            mem[(32 * idx) + _2204 + 32] = mem[_4725 + 31 len 1]
                    else:
                        _4582 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4636 = mem[_4582]
                        require mem[_4582] <= test266151307()
                        require _4582 + mem[_4582] + 31 < _4582 + return_data.size
                        _4682 = mem[_4582 + mem[_4582]]
                        if mem[_4582 + mem[_4582]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_4582 + mem[_4582]]) + 32 < 0 or _4582 + ceil32(return_data.size) + ceil32(mem[_4582 + mem[_4582]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _4582 + ceil32(return_data.size) + ceil32(mem[_4582 + mem[_4582]]) + 32
                        mem[_4582 + ceil32(return_data.size)] = _4682
                        require _4636 + _4682 + 32 <= return_data.size
                        s = 0
                        while s < _4682:
                            mem[s + _4582 + ceil32(return_data.size) + 32] = mem[s + _4582 + _4636 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4682) <= _4682:
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4582 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _5290 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5290] == mem[_5290 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_5290 + 31 len 1]
                        else:
                            mem[_4582 + ceil32(return_data.size) + _4682 + 32] = 0
                            if idx >= mem[(64 * ('cd', 4).length) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _4582 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = 255
                            else:
                                _5306 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5306] == mem[_5306 + 31 len 1]
                                if idx >= mem[_2204]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2204 + 32] = mem[_5306 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3302 = mem[64]
        mem[mem[64]] = 96
        _3319 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _3319) + 128
        u = mem[64] + 128
        while idx < _3319:
            mem[u] = t + -_3302 - 128
            _4326 = mem[s]
            _4342 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _4342:
                mem[v + t + 32] = mem[v + _4326 + 32]
                v = v + 32
                continue 
            if ceil32(_4342) > _4342:
                mem[t + _4342 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_4342) + t + 32
            u = u + 32
            continue 
        mem[_3302 + 32] = t - _3302
        _4354 = mem[(64 * ('cd', 4).length) + 160]
        mem[t] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        u = t + (32 * _4354) + 32
        v = t + 32
        while idx < _4354:
            mem[v] = u + -t - 32
            _5109 = mem[s]
            _5132 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _5132:
                mem[t + u + 32] = mem[t + _5109 + 32]
                t = t + 32
                continue 
            if ceil32(_5132) > _5132:
                mem[u + _5132 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_5132) + u + 32
            v = v + 32
            continue 
        mem[_3302 + 64] = u - _3302
        _5131 = mem[_2204]
        mem[u] = mem[_2204]
        idx = 0
        s = u + 32
        t = _2204 + 32
        while idx < _5131:
            mem[s] = mem[t + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _5131) + -mem[64] + 32
    mem[(32 * ('cd', 4).length) + 160] = 96
    s = (32 * ('cd', 4).length) + 160
    idx = ('cd', 4).length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    _2205 = mem[64]
    mem[mem[64]] = ('cd', 4).length
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 0, 65
        mem[_2205 + (32 * ('cd', 4).length) + 32] = ('cd', 4).length
        mem[64] = _2205 + (64 * ('cd', 4).length) + 64
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _3307 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3307))
                staticcall address(_3307).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _3333 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3333] = 1
                    mem[_3333 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3333
                    if idx >= mem[96]:
                        revert with 0, 50
                    _3388 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3388))
                    staticcall address(_3388).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _3469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3469] = 1
                        mem[_3469 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _3469
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                        else:
                            _3585 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3585] == mem[_3585 + 31 len 1]
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_3585 + 31 len 1]
                    else:
                        _3445 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _3491 = mem[_3445]
                        require mem[_3445] <= test266151307()
                        require _3445 + mem[_3445] + 31 < _3445 + return_data.size
                        _3545 = mem[_3445 + mem[_3445]]
                        if mem[_3445 + mem[_3445]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_3445 + mem[_3445]]) + 32 < 0 or _3445 + ceil32(return_data.size) + ceil32(mem[_3445 + mem[_3445]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _3445 + ceil32(return_data.size) + ceil32(mem[_3445 + mem[_3445]]) + 32
                        mem[_3445 + ceil32(return_data.size)] = _3545
                        require _3491 + _3545 + 32 <= return_data.size
                        s = 0
                        while s < _3545:
                            mem[s + _3445 + ceil32(return_data.size) + 32] = mem[s + _3445 + _3491 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_3545) <= _3545:
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _3445 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _4553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4553] == mem[_4553 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4553 + 31 len 1]
                        else:
                            mem[_3445 + ceil32(return_data.size) + _3545 + 32] = 0
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _3445 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _4584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4584] == mem[_4584 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4584 + 31 len 1]
                else:
                    _3322 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3350 = mem[_3322]
                    require mem[_3322] <= test266151307()
                    require _3322 + mem[_3322] + 31 < _3322 + return_data.size
                    _3391 = mem[_3322 + mem[_3322]]
                    if mem[_3322 + mem[_3322]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_3322 + mem[_3322]]) + 32 < 0 or _3322 + ceil32(return_data.size) + ceil32(mem[_3322 + mem[_3322]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3322 + ceil32(return_data.size) + ceil32(mem[_3322 + mem[_3322]]) + 32
                    mem[_3322 + ceil32(return_data.size)] = _3391
                    require _3350 + _3391 + 32 <= return_data.size
                    s = 0
                    while s < _3391:
                        mem[s + _3322 + ceil32(return_data.size) + 32] = mem[s + _3322 + _3350 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3391) <= _3391:
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3322 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _4487 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4487))
                        staticcall address(_4487).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _4585 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4585] = 1
                            mem[_4585 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4585
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _4708 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4708] == mem[_4708 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4708 + 31 len 1]
                        else:
                            _4554 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4615 = mem[_4554]
                            require mem[_4554] <= test266151307()
                            require _4554 + mem[_4554] + 31 < _4554 + return_data.size
                            _4668 = mem[_4554 + mem[_4554]]
                            if mem[_4554 + mem[_4554]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_4554 + mem[_4554]]) + 32 < 0 or _4554 + ceil32(return_data.size) + ceil32(mem[_4554 + mem[_4554]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _4554 + ceil32(return_data.size) + ceil32(mem[_4554 + mem[_4554]]) + 32
                            mem[_4554 + ceil32(return_data.size)] = _4668
                            require _4615 + _4668 + 32 <= return_data.size
                            s = 0
                            while s < _4668:
                                mem[s + _4554 + ceil32(return_data.size) + 32] = mem[s + _4554 + _4615 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4668) <= _4668:
                                if idx >= mem[_2205]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + 32] = _4554 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                                else:
                                    _5291 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5291] == mem[_5291 + 31 len 1]
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5291 + 31 len 1]
                            else:
                                mem[_4554 + ceil32(return_data.size) + _4668 + 32] = 0
                                if idx >= mem[_2205]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + 32] = _4554 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                                else:
                                    _5308 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5308] == mem[_5308 + 31 len 1]
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5308 + 31 len 1]
                    else:
                        mem[_3322 + ceil32(return_data.size) + _3391 + 32] = 0
                        if idx >= mem[(32 * ('cd', 4).length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3322 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        _4528 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_4528))
                        staticcall address(_4528).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            _4616 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4616] = 1
                            mem[_4616 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4616
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _4729 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4729] == mem[_4729 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4729 + 31 len 1]
                        else:
                            _4587 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _4639 = mem[_4587]
                            require mem[_4587] <= test266151307()
                            require _4587 + mem[_4587] + 31 < _4587 + return_data.size
                            _4686 = mem[_4587 + mem[_4587]]
                            if mem[_4587 + mem[_4587]] > test266151307():
                                revert with 0, 65
                            if ceil32(mem[_4587 + mem[_4587]]) + 32 < 0 or _4587 + ceil32(return_data.size) + ceil32(mem[_4587 + mem[_4587]]) + 32 > test266151307():
                                revert with 0, 65
                            mem[64] = _4587 + ceil32(return_data.size) + ceil32(mem[_4587 + mem[_4587]]) + 32
                            mem[_4587 + ceil32(return_data.size)] = _4686
                            require _4639 + _4686 + 32 <= return_data.size
                            s = 0
                            while s < _4686:
                                mem[s + _4587 + ceil32(return_data.size) + 32] = mem[s + _4587 + _4639 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_4686) <= _4686:
                                if idx >= mem[_2205]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + 32] = _4587 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                                else:
                                    _5292 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5292] == mem[_5292 + 31 len 1]
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5292 + 31 len 1]
                            else:
                                mem[_4587 + ceil32(return_data.size) + _4686 + 32] = 0
                                if idx >= mem[_2205]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + 32] = _4587 + ceil32(return_data.size)
                                if idx >= mem[96]:
                                    revert with 0, 50
                                require ext_code.size(mem[(32 * idx) + 140 len 20])
                                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                                else:
                                    _5310 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_5310] == mem[_5310 + 31 len 1]
                                    if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                        revert with 0, 50
                                    mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5310 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _3306 = mem[64]
            mem[mem[64]] = 96
            _3321 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _3321) + 128
            u = mem[64] + 128
            while idx < _3321:
                mem[u] = t + -_3306 - 128
                _4329 = mem[s]
                _4343 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _4343:
                    mem[v + t + 32] = mem[v + _4329 + 32]
                    v = v + 32
                    continue 
                if ceil32(_4343) > _4343:
                    mem[t + _4343 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_4343) + t + 32
                u = u + 32
                continue 
            mem[_3306 + 32] = t - _3306
            _4355 = mem[_2205]
            mem[t] = mem[_2205]
            idx = 0
            s = _2205 + 32
            u = t + (32 * _4355) + 32
            v = t + 32
            while idx < _4355:
                mem[v] = u + -t - 32
                _5113 = mem[s]
                _5134 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _5134:
                    mem[t + u + 32] = mem[t + _5113 + 32]
                    t = t + 32
                    continue 
                if ceil32(_5134) > _5134:
                    mem[u + _5134 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_5134) + u + 32
                v = v + 32
                continue 
            mem[_3306 + 64] = u - _3306
            _5133 = mem[_2205 + (32 * ('cd', 4).length) + 32]
            mem[u] = mem[_2205 + (32 * ('cd', 4).length) + 32]
            idx = 0
            s = u + 32
            t = _2205 + (32 * ('cd', 4).length) + 64
            while idx < _5133:
                mem[s] = mem[t + 31 len 1]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len u + (32 * _5133) + -mem[64] + 32
        mem[_2205 + (32 * ('cd', 4).length) + 64 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _3311 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_3311))
            staticcall address(_3311).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                _3335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3335] = 1
                mem[_3335 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3335
                if idx >= mem[96]:
                    revert with 0, 50
                _3393 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3393))
                staticcall address(_3393).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _3473 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3473] = 1
                    mem[_3473 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _3473
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                    else:
                        _3588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3588] == mem[_3588 + 31 len 1]
                        if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_3588 + 31 len 1]
                else:
                    _3449 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3492 = mem[_3449]
                    require mem[_3449] <= test266151307()
                    require _3449 + mem[_3449] + 31 < _3449 + return_data.size
                    _3551 = mem[_3449 + mem[_3449]]
                    if mem[_3449 + mem[_3449]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_3449 + mem[_3449]]) + 32 < 0 or _3449 + ceil32(return_data.size) + ceil32(mem[_3449 + mem[_3449]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _3449 + ceil32(return_data.size) + ceil32(mem[_3449 + mem[_3449]]) + 32
                    mem[_3449 + ceil32(return_data.size)] = _3551
                    require _3492 + _3551 + 32 <= return_data.size
                    s = 0
                    while s < _3551:
                        mem[s + _3449 + ceil32(return_data.size) + 32] = mem[s + _3449 + _3492 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3551) <= _3551:
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _3449 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                        else:
                            _4555 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4555] == mem[_4555 + 31 len 1]
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4555 + 31 len 1]
                    else:
                        mem[_3449 + ceil32(return_data.size) + _3551 + 32] = 0
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _3449 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                        else:
                            _4589 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4589] == mem[_4589 + 31 len 1]
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4589 + 31 len 1]
            else:
                _3324 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3352 = mem[_3324]
                require mem[_3324] <= test266151307()
                require _3324 + mem[_3324] + 31 < _3324 + return_data.size
                _3396 = mem[_3324 + mem[_3324]]
                if mem[_3324 + mem[_3324]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_3324 + mem[_3324]]) + 32 < 0 or _3324 + ceil32(return_data.size) + ceil32(mem[_3324 + mem[_3324]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _3324 + ceil32(return_data.size) + ceil32(mem[_3324 + mem[_3324]]) + 32
                mem[_3324 + ceil32(return_data.size)] = _3396
                require _3352 + _3396 + 32 <= return_data.size
                s = 0
                while s < _3396:
                    mem[s + _3324 + ceil32(return_data.size) + 32] = mem[s + _3324 + _3352 + 32]
                    s = s + 32
                    continue 
                if ceil32(_3396) <= _3396:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3324 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _4497 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_4497))
                    staticcall address(_4497).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _4590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4590] = 1
                        mem[_4590 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _4590
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                        else:
                            _4711 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4711] == mem[_4711 + 31 len 1]
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4711 + 31 len 1]
                    else:
                        _4556 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4620 = mem[_4556]
                        require mem[_4556] <= test266151307()
                        require _4556 + mem[_4556] + 31 < _4556 + return_data.size
                        _4673 = mem[_4556 + mem[_4556]]
                        if mem[_4556 + mem[_4556]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_4556 + mem[_4556]]) + 32 < 0 or _4556 + ceil32(return_data.size) + ceil32(mem[_4556 + mem[_4556]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _4556 + ceil32(return_data.size) + ceil32(mem[_4556 + mem[_4556]]) + 32
                        mem[_4556 + ceil32(return_data.size)] = _4673
                        require _4620 + _4673 + 32 <= return_data.size
                        s = 0
                        while s < _4673:
                            mem[s + _4556 + ceil32(return_data.size) + 32] = mem[s + _4556 + _4620 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4673) <= _4673:
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4556 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _5293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5293] == mem[_5293 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5293 + 31 len 1]
                        else:
                            mem[_4556 + ceil32(return_data.size) + _4673 + 32] = 0
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4556 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _5312 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5312] == mem[_5312 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5312 + 31 len 1]
                else:
                    mem[_3324 + ceil32(return_data.size) + _3396 + 32] = 0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _3324 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _4534 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_4534))
                    staticcall address(_4534).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _4621 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4621] = 1
                        mem[_4621 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _4621
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                        else:
                            _4733 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4733] == mem[_4733 + 31 len 1]
                            if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_4733 + 31 len 1]
                    else:
                        _4592 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _4642 = mem[_4592]
                        require mem[_4592] <= test266151307()
                        require _4592 + mem[_4592] + 31 < _4592 + return_data.size
                        _4690 = mem[_4592 + mem[_4592]]
                        if mem[_4592 + mem[_4592]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_4592 + mem[_4592]]) + 32 < 0 or _4592 + ceil32(return_data.size) + ceil32(mem[_4592 + mem[_4592]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _4592 + ceil32(return_data.size) + ceil32(mem[_4592 + mem[_4592]]) + 32
                        mem[_4592 + ceil32(return_data.size)] = _4690
                        require _4642 + _4690 + 32 <= return_data.size
                        s = 0
                        while s < _4690:
                            mem[s + _4592 + ceil32(return_data.size) + 32] = mem[s + _4592 + _4642 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_4690) <= _4690:
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4592 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _5294 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5294] == mem[_5294 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5294 + 31 len 1]
                        else:
                            mem[_4592 + ceil32(return_data.size) + _4690 + 32] = 0
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _4592 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = 255
                            else:
                                _5314 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5314] == mem[_5314 + 31 len 1]
                                if idx >= mem[_2205 + (32 * ('cd', 4).length) + 32]:
                                    revert with 0, 50
                                mem[(32 * idx) + _2205 + (32 * ('cd', 4).length) + 64] = mem[_5314 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3310 = mem[64]
        mem[mem[64]] = 96
        _3323 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _3323) + 128
        u = mem[64] + 128
        while idx < _3323:
            mem[u] = t + -_3310 - 128
            _4332 = mem[s]
            _4344 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _4344:
                mem[v + t + 32] = mem[v + _4332 + 32]
                v = v + 32
                continue 
            if ceil32(_4344) > _4344:
                mem[t + _4344 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_4344) + t + 32
            u = u + 32
            continue 
        mem[_3310 + 32] = t - _3310
        _4356 = mem[_2205]
        mem[t] = mem[_2205]
        idx = 0
        s = _2205 + 32
        u = t + (32 * _4356) + 32
        v = t + 32
        while idx < _4356:
            mem[v] = u + -t - 32
            _5117 = mem[s]
            _5136 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _5136:
                mem[t + u + 32] = mem[t + _5117 + 32]
                t = t + 32
                continue 
            if ceil32(_5136) > _5136:
                mem[u + _5136 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_5136) + u + 32
            v = v + 32
            continue 
        mem[_3310 + 64] = u - _3310
        _5135 = mem[_2205 + (32 * ('cd', 4).length) + 32]
        mem[u] = mem[_2205 + (32 * ('cd', 4).length) + 32]
        idx = 0
        s = u + 32
        t = _2205 + (32 * ('cd', 4).length) + 64
        while idx < _5135:
            mem[s] = mem[t + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _5135) + -mem[64] + 32
    mem[_2205 + 32] = 96
    s = _2205 + 32
    idx = ('cd', 4).length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    _3316 = mem[64]
    mem[mem[64]] = ('cd', 4).length
    mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _4346 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_4346))
            staticcall address(_4346).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                _4375 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4375] = 1
                mem[_4375 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4375
                if idx >= mem[96]:
                    revert with 0, 50
                _4436 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_4436))
                staticcall address(_4436).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _4559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4559] = 1
                    mem[_4559 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _4559
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = 255
                    else:
                        _4691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4691] == mem[_4691 + 31 len 1]
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = mem[_4691 + 31 len 1]
                else:
                    _4539 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4593 = mem[_4539]
                    require mem[_4539] <= test266151307()
                    require _4539 + mem[_4539] + 31 < _4539 + return_data.size
                    _4648 = mem[_4539 + mem[_4539]]
                    if mem[_4539 + mem[_4539]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_4539 + mem[_4539]]) + 32 < 0 or _4539 + ceil32(return_data.size) + ceil32(mem[_4539 + mem[_4539]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _4539 + ceil32(return_data.size) + ceil32(mem[_4539 + mem[_4539]]) + 32
                    mem[_4539 + ceil32(return_data.size)] = _4648
                    require _4593 + _4648 + 32 <= return_data.size
                    s = 0
                    while s < _4648:
                        mem[s + _4539 + ceil32(return_data.size) + 32] = mem[s + _4539 + _4593 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4648) <= _4648:
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _4539 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5295] == mem[_5295 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5295 + 31 len 1]
                    else:
                        mem[_4539 + ceil32(return_data.size) + _4648 + 32] = 0
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _4539 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5316 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5316] == mem[_5316 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5316 + 31 len 1]
            else:
                _4360 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4400 = mem[_4360]
                require mem[_4360] <= test266151307()
                require _4360 + mem[_4360] + 31 < _4360 + return_data.size
                _4439 = mem[_4360 + mem[_4360]]
                if mem[_4360 + mem[_4360]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_4360 + mem[_4360]]) + 32 < 0 or _4360 + ceil32(return_data.size) + ceil32(mem[_4360 + mem[_4360]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _4360 + ceil32(return_data.size) + ceil32(mem[_4360 + mem[_4360]]) + 32
                mem[_4360 + ceil32(return_data.size)] = _4439
                require _4400 + _4439 + 32 <= return_data.size
                s = 0
                while s < _4439:
                    mem[s + _4360 + ceil32(return_data.size) + 32] = mem[s + _4360 + _4400 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4439) <= _4439:
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4360 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _5237 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5237))
                    staticcall address(_5237).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _5317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5317] = 1
                        mem[_5317 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5317
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5392 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5392] == mem[_5392 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5392 + 31 len 1]
                    else:
                        _5296 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5343 = mem[_5296]
                        require mem[_5296] <= test266151307()
                        require _5296 + mem[_5296] + 31 < _5296 + return_data.size
                        _5368 = mem[_5296 + mem[_5296]]
                        if mem[_5296 + mem[_5296]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_5296 + mem[_5296]]) + 32 < 0 or _5296 + ceil32(return_data.size) + ceil32(mem[_5296 + mem[_5296]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _5296 + ceil32(return_data.size) + ceil32(mem[_5296 + mem[_5296]]) + 32
                        mem[_5296 + ceil32(return_data.size)] = _5368
                        require _5343 + _5368 + 32 <= return_data.size
                        s = 0
                        while s < _5368:
                            mem[s + _5296 + ceil32(return_data.size) + 32] = mem[s + _5296 + _5343 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5368) <= _5368:
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _5296 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = 255
                            else:
                                _5569 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5569] == mem[_5569 + 31 len 1]
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = mem[_5569 + 31 len 1]
                        else:
                            mem[_5296 + ceil32(return_data.size) + _5368 + 32] = 0
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _5296 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = 255
                            else:
                                _5574 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5574] == mem[_5574 + 31 len 1]
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = mem[_5574 + 31 len 1]
                else:
                    mem[_4360 + ceil32(return_data.size) + _4439 + 32] = 0
                    if idx >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4360 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    _5278 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5278))
                    staticcall address(_5278).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        _5344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5344] = 1
                        mem[_5344 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5344
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5407 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5407] == mem[_5407 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5407 + 31 len 1]
                    else:
                        _5319 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5361 = mem[_5319]
                        require mem[_5319] <= test266151307()
                        require _5319 + mem[_5319] + 31 < _5319 + return_data.size
                        _5378 = mem[_5319 + mem[_5319]]
                        if mem[_5319 + mem[_5319]] > test266151307():
                            revert with 0, 65
                        if ceil32(mem[_5319 + mem[_5319]]) + 32 < 0 or _5319 + ceil32(return_data.size) + ceil32(mem[_5319 + mem[_5319]]) + 32 > test266151307():
                            revert with 0, 65
                        mem[64] = _5319 + ceil32(return_data.size) + ceil32(mem[_5319 + mem[_5319]]) + 32
                        mem[_5319 + ceil32(return_data.size)] = _5378
                        require _5361 + _5378 + 32 <= return_data.size
                        s = 0
                        while s < _5378:
                            mem[s + _5319 + ceil32(return_data.size) + 32] = mem[s + _5319 + _5361 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_5378) <= _5378:
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _5319 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = 255
                            else:
                                _5570 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5570] == mem[_5570 + 31 len 1]
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = mem[_5570 + 31 len 1]
                        else:
                            mem[_5319 + ceil32(return_data.size) + _5378 + 32] = 0
                            if idx >= mem[_2205]:
                                revert with 0, 50
                            mem[(32 * idx) + _2205 + 32] = _5319 + ceil32(return_data.size)
                            if idx >= mem[96]:
                                revert with 0, 50
                            require ext_code.size(mem[(32 * idx) + 140 len 20])
                            staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = 255
                            else:
                                _5576 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5576] == mem[_5576 + 31 len 1]
                                if idx >= mem[_3316]:
                                    revert with 0, 50
                                mem[(32 * idx) + _3316 + 32] = mem[_5576 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _4345 = mem[64]
        mem[mem[64]] = 96
        _4359 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _4359) + 128
        u = mem[64] + 128
        while idx < _4359:
            mem[u] = t + -_4345 - 128
            _5121 = mem[s]
            _5137 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _5137:
                mem[v + t + 32] = mem[v + _5121 + 32]
                v = v + 32
                continue 
            if ceil32(_5137) > _5137:
                mem[t + _5137 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_5137) + t + 32
            u = u + 32
            continue 
        mem[_4345 + 32] = t - _4345
        _5139 = mem[_2205]
        mem[t] = mem[_2205]
        idx = 0
        s = _2205 + 32
        u = t + (32 * _5139) + 32
        v = t + 32
        while idx < _5139:
            mem[v] = u + -t - 32
            _5507 = mem[s]
            _5520 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _5520:
                mem[t + u + 32] = mem[t + _5507 + 32]
                t = t + 32
                continue 
            if ceil32(_5520) > _5520:
                mem[u + _5520 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = ceil32(_5520) + u + 32
            v = v + 32
            continue 
        mem[_4345 + 64] = u - _4345
        _5519 = mem[_3316]
        mem[u] = mem[_3316]
        idx = 0
        s = u + 32
        t = _3316 + 32
        while idx < _5519:
            mem[s] = mem[t + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _5519) + -mem[64] + 32
    mem[_3316 + 32 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _4350 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_4350))
        staticcall address(_4350).name() with:
                gas gas_remaining wei
        if not ext_call.success:
            _4377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4377] = 1
            mem[_4377 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4377
            if idx >= mem[96]:
                revert with 0, 50
            _4441 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_4441))
            staticcall address(_4441).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                _4563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4563] = 1
                mem[_4563 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                if idx >= mem[_2205]:
                    revert with 0, 50
                mem[(32 * idx) + _2205 + 32] = _4563
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if idx >= mem[_3316]:
                        revert with 0, 50
                    mem[(32 * idx) + _3316 + 32] = 255
                else:
                    _4694 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4694] == mem[_4694 + 31 len 1]
                    if idx >= mem[_3316]:
                        revert with 0, 50
                    mem[(32 * idx) + _3316 + 32] = mem[_4694 + 31 len 1]
            else:
                _4543 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4594 = mem[_4543]
                require mem[_4543] <= test266151307()
                require _4543 + mem[_4543] + 31 < _4543 + return_data.size
                _4654 = mem[_4543 + mem[_4543]]
                if mem[_4543 + mem[_4543]] > test266151307():
                    revert with 0, 65
                if ceil32(mem[_4543 + mem[_4543]]) + 32 < 0 or _4543 + ceil32(return_data.size) + ceil32(mem[_4543 + mem[_4543]]) + 32 > test266151307():
                    revert with 0, 65
                mem[64] = _4543 + ceil32(return_data.size) + ceil32(mem[_4543 + mem[_4543]]) + 32
                mem[_4543 + ceil32(return_data.size)] = _4654
                require _4594 + _4654 + 32 <= return_data.size
                s = 0
                while s < _4654:
                    mem[s + _4543 + ceil32(return_data.size) + 32] = mem[s + _4543 + _4594 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4654) <= _4654:
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _4543 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = 255
                    else:
                        _5297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5297] == mem[_5297 + 31 len 1]
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = mem[_5297 + 31 len 1]
                else:
                    mem[_4543 + ceil32(return_data.size) + _4654 + 32] = 0
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _4543 + ceil32(return_data.size)
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = 255
                    else:
                        _5321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5321] == mem[_5321 + 31 len 1]
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = mem[_5321 + 31 len 1]
        else:
            _4362 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4402 = mem[_4362]
            require mem[_4362] <= test266151307()
            require _4362 + mem[_4362] + 31 < _4362 + return_data.size
            _4444 = mem[_4362 + mem[_4362]]
            if mem[_4362 + mem[_4362]] > test266151307():
                revert with 0, 65
            if ceil32(mem[_4362 + mem[_4362]]) + 32 < 0 or _4362 + ceil32(return_data.size) + ceil32(mem[_4362 + mem[_4362]]) + 32 > test266151307():
                revert with 0, 65
            mem[64] = _4362 + ceil32(return_data.size) + ceil32(mem[_4362 + mem[_4362]]) + 32
            mem[_4362 + ceil32(return_data.size)] = _4444
            require _4402 + _4444 + 32 <= return_data.size
            s = 0
            while s < _4444:
                mem[s + _4362 + ceil32(return_data.size) + 32] = mem[s + _4362 + _4402 + 32]
                s = s + 32
                continue 
            if ceil32(_4444) <= _4444:
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4362 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                _5247 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5247))
                staticcall address(_5247).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _5322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5322] = 1
                    mem[_5322 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _5322
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = 255
                    else:
                        _5395 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5395] == mem[_5395 + 31 len 1]
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = mem[_5395 + 31 len 1]
                else:
                    _5298 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5348 = mem[_5298]
                    require mem[_5298] <= test266151307()
                    require _5298 + mem[_5298] + 31 < _5298 + return_data.size
                    _5373 = mem[_5298 + mem[_5298]]
                    if mem[_5298 + mem[_5298]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_5298 + mem[_5298]]) + 32 < 0 or _5298 + ceil32(return_data.size) + ceil32(mem[_5298 + mem[_5298]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _5298 + ceil32(return_data.size) + ceil32(mem[_5298 + mem[_5298]]) + 32
                    mem[_5298 + ceil32(return_data.size)] = _5373
                    require _5348 + _5373 + 32 <= return_data.size
                    s = 0
                    while s < _5373:
                        mem[s + _5298 + ceil32(return_data.size) + 32] = mem[s + _5298 + _5348 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5373) <= _5373:
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5298 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5571 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5571] == mem[_5571 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5571 + 31 len 1]
                    else:
                        mem[_5298 + ceil32(return_data.size) + _5373 + 32] = 0
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5298 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5578 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5578] == mem[_5578 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5578 + 31 len 1]
            else:
                mem[_4362 + ceil32(return_data.size) + _4444 + 32] = 0
                if idx >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _4362 + ceil32(return_data.size)
                if idx >= mem[96]:
                    revert with 0, 50
                _5284 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5284))
                staticcall address(_5284).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    _5349 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5349] = 1
                    mem[_5349 + 32] = 0x2d00000000000000000000000000000000000000000000000000000000000000
                    if idx >= mem[_2205]:
                        revert with 0, 50
                    mem[(32 * idx) + _2205 + 32] = _5349
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = 255
                    else:
                        _5411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5411] == mem[_5411 + 31 len 1]
                        if idx >= mem[_3316]:
                            revert with 0, 50
                        mem[(32 * idx) + _3316 + 32] = mem[_5411 + 31 len 1]
                else:
                    _5324 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5364 = mem[_5324]
                    require mem[_5324] <= test266151307()
                    require _5324 + mem[_5324] + 31 < _5324 + return_data.size
                    _5382 = mem[_5324 + mem[_5324]]
                    if mem[_5324 + mem[_5324]] > test266151307():
                        revert with 0, 65
                    if ceil32(mem[_5324 + mem[_5324]]) + 32 < 0 or _5324 + ceil32(return_data.size) + ceil32(mem[_5324 + mem[_5324]]) + 32 > test266151307():
                        revert with 0, 65
                    mem[64] = _5324 + ceil32(return_data.size) + ceil32(mem[_5324 + mem[_5324]]) + 32
                    mem[_5324 + ceil32(return_data.size)] = _5382
                    require _5364 + _5382 + 32 <= return_data.size
                    s = 0
                    while s < _5382:
                        mem[s + _5324 + ceil32(return_data.size) + 32] = mem[s + _5324 + _5364 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5382) <= _5382:
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5324 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5572 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5572] == mem[_5572 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5572 + 31 len 1]
                    else:
                        mem[_5324 + ceil32(return_data.size) + _5382 + 32] = 0
                        if idx >= mem[_2205]:
                            revert with 0, 50
                        mem[(32 * idx) + _2205 + 32] = _5324 + ceil32(return_data.size)
                        if idx >= mem[96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = 255
                        else:
                            _5580 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5580] == mem[_5580 + 31 len 1]
                            if idx >= mem[_3316]:
                                revert with 0, 50
                            mem[(32 * idx) + _3316 + 32] = mem[_5580 + 31 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _4349 = mem[64]
    mem[mem[64]] = 96
    _4361 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + (32 * _4361) + 128
    u = mem[64] + 128
    while idx < _4361:
        mem[u] = t + -_4349 - 128
        _5124 = mem[s]
        _5138 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _5138:
            mem[v + t + 32] = mem[v + _5124 + 32]
            v = v + 32
            continue 
        if ceil32(_5138) > _5138:
            mem[t + _5138 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_5138) + t + 32
        u = u + 32
        continue 
    mem[_4349 + 32] = t - _4349
    _5140 = mem[_2205]
    mem[t] = mem[_2205]
    idx = 0
    s = _2205 + 32
    u = t + (32 * _5140) + 32
    v = t + 32
    while idx < _5140:
        mem[v] = u + -t - 32
        _5511 = mem[s]
        _5522 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _5522:
            mem[t + u + 32] = mem[t + _5511 + 32]
            t = t + 32
            continue 
        if ceil32(_5522) > _5522:
            mem[u + _5522 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = ceil32(_5522) + u + 32
        v = v + 32
        continue 
    mem[_4349 + 64] = u - _4349
    _5521 = mem[_3316]
    mem[u] = mem[_3316]
    idx = 0
    s = u + 32
    t = _3316 + 32
    while idx < _5521:
        mem[s] = mem[t + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len u + (32 * _5521) + -mem[64] + 32
}



}
