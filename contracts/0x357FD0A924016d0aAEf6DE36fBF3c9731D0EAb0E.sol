contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_639e02d9(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[196] == bool(cd[196])
    if cd[196]:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[96] = ('cd', 4).length
        mem[64] = (32 * ('cd', 4).length) + 128
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _154 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_154 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _154
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                        gas 25000 wei
                mem[_154 + 96 len 64] = ext_call.return_data[0 len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_154]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_154]:
                    revert with 'NH{q', 50
                mem[_154 + 64] = ext_call.return_data[32]
                mem[_154 + 32] = ext_call.return_data[0]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _162 = mem[64]
            mem[mem[64]] = 96
            _167 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            u = mem[64] + (32 * mem[96]) + 128
            while idx < _167:
                mem[t] = u + -_162 - 128
                _296 = mem[s]
                _297 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                w = u + 32
                x = _296 + 32
                while v < _297:
                    mem[w] = mem[x]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _297) + 32
                continue 
            mem[_162 + 32] = 1
            mem[_162 + 64] = block.number
        else:
            mem[128] = 96
            s = 128
            idx = ('cd', 4).length
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < ('cd', 4).length:
                _298 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_298 + 32 len 64] = call.data[calldata.size len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _298
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                        gas 25000 wei
                mem[_298 + 96 len 64] = ext_call.return_data[0 len 64]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 0 >= mem[_298]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if 1 >= mem[_298]:
                    revert with 'NH{q', 50
                mem[_298 + 64] = ext_call.return_data[32]
                mem[_298 + 32] = ext_call.return_data[0]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _308 = mem[64]
            mem[mem[64]] = 96
            _309 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            u = mem[64] + (32 * mem[96]) + 128
            while idx < _309:
                mem[t] = u + -_308 - 128
                _410 = mem[s]
                _411 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                w = u + 32
                x = _410 + 32
                while v < _411:
                    mem[w] = mem[x]
                    v = v + 1
                    w = w + 32
                    x = x + 32
                    continue 
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = u + (32 * _411) + 32
                continue 
            mem[_308 + 32] = 1
            mem[_308 + 64] = block.number
    else:
        if 0 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[0] == address(('cd', 100)[0])
        mem[100] = address(cd[68])
        require ext_code.size(address(('cd', 100)[0]))
        staticcall address(('cd', 100)[0]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[68])
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[132]:
            mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = cd[132]
            mem[ceil32(return_data.size) + 132] = 64
            mem[ceil32(return_data.size) + 164] = ('cd', 100).length
            idx = 0
            s = ceil32(return_data.size) + 196
            t = cd[100] + 36
            while idx < ('cd', 100).length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args cd[132], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 100).length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _175 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
            _180 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
            require return_data.size >= _175 + (32 * _180) + 32
            mem[(2 * ceil32(return_data.size)) + 128 len 32 * _180] = mem[ceil32(return_data.size) + _175 + 128 len 32 * _180]
            if _180 < 1:
                revert with 'NH{q', 17
            if _180 - 1 >= _180:
                revert with 'NH{q', 50
            if mem[(32 * _180 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[164]:
                _325 = mem[64]
                mem[mem[64]] = 96
                mem[mem[64] + 96] = ext_call.return_data[0]
                idx = 0
                s = 128
                t = mem[64] + 128
                u = mem[64] + (32 * mem[96]) + 128
                while idx < ext_call.return_data[0]:
                    mem[t] = u + -_325 - 128
                    _414 = mem[s]
                    _415 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    w = u + 32
                    x = _414 + 32
                    while v < _415:
                        mem[w] = mem[x]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = u + (32 * _415) + 32
                    continue 
                mem[_325 + 32] = 0
                mem[_325 + 64] = block.number
            else:
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                _324 = mem[64]
                mem[mem[64]] = ('cd', 4).length
                mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        _412 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_412 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _324 + 32] = _412
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                                gas 25000 wei
                        mem[_412 + 96 len 64] = ext_call.return_data[0 len 64]
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_412]:
                            revert with 'NH{q', 50
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_412]:
                            revert with 'NH{q', 50
                        mem[_412 + 64] = ext_call.return_data[32]
                        mem[_412 + 32] = ext_call.return_data[0]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _422 = mem[64]
                    mem[mem[64]] = 96
                    _428 = mem[_324]
                    mem[mem[64] + 96] = mem[_324]
                    idx = 0
                    s = _324 + 32
                    t = mem[64] + 128
                    u = mem[64] + (32 * _428) + 128
                    while idx < _428:
                        mem[t] = u + -_422 - 128
                        _491 = mem[s]
                        _492 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        w = u + 32
                        x = _491 + 32
                        while v < _492:
                            mem[w] = mem[x]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = u + (32 * _492) + 32
                        continue 
                    mem[_422 + 32] = 1
                    mem[_422 + 64] = block.number
                else:
                    mem[_324 + 32] = 96
                    s = _324 + 32
                    idx = ('cd', 4).length
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 4).length:
                        _493 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_493 + 32 len 64] = call.data[calldata.size len 64]
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _324 + 32] = _493
                        if idx >= ('cd', 4).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                                gas 25000 wei
                        mem[_493 + 96 len 64] = ext_call.return_data[0 len 64]
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        if 0 >= mem[_493]:
                            revert with 'NH{q', 50
                        if idx >= mem[_324]:
                            revert with 'NH{q', 50
                        if 1 >= mem[_493]:
                            revert with 'NH{q', 50
                        mem[_493 + 64] = ext_call.return_data[32]
                        mem[_493 + 32] = ext_call.return_data[0]
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _503 = mem[64]
                    mem[mem[64]] = 96
                    _507 = mem[_324]
                    mem[mem[64] + 96] = mem[_324]
                    idx = 0
                    s = _324 + 32
                    t = mem[64] + 128
                    u = mem[64] + (32 * _507) + 128
                    while idx < _507:
                        mem[t] = u + -_503 - 128
                        _536 = mem[s]
                        _537 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        w = u + 32
                        x = _536 + 32
                        while v < _537:
                            mem[w] = mem[x]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = u + (32 * _537) + 32
                        continue 
                    mem[_503 + 32] = 1
                    mem[_503 + 64] = block.number
        else:
            if not ('cd', 100).length:
                revert with 'NH{q', 50
            require ('cd', 100)[0] == address(('cd', 100)[0])
            if address(('cd', 100)[0]) != stor0:
                mem[ceil32(return_data.size) + 96] = 96
                mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                idx = 0
                s = 128
                t = ceil32(return_data.size) + 224
                u = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                while idx < ext_call.return_data[0]:
                    mem[t] = u + -ceil32(return_data.size) - 224
                    _156 = mem[s]
                    _157 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    w = u + 32
                    x = _156 + 32
                    while v < _157:
                        mem[w] = mem[x]
                        v = v + 1
                        w = w + 32
                        x = x + 32
                        continue 
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = u + (32 * _157) + 32
                    continue 
                mem[ceil32(return_data.size) + 128] = 0
                mem[ceil32(return_data.size) + 160] = block.number
            else:
                if eth.balance(cd[68]) < cd[132]:
                    mem[ceil32(return_data.size) + 96] = 96
                    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                    idx = 0
                    s = 128
                    t = ceil32(return_data.size) + 224
                    u = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224
                    while idx < ext_call.return_data[0]:
                        mem[t] = u + -ceil32(return_data.size) - 224
                        _158 = mem[s]
                        _159 = mem[mem[s]]
                        mem[u] = mem[mem[s]]
                        v = 0
                        w = u + 32
                        x = _158 + 32
                        while v < _159:
                            mem[w] = mem[x]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        u = u + (32 * _159) + 32
                        continue 
                    mem[ceil32(return_data.size) + 128] = 0
                    mem[ceil32(return_data.size) + 160] = block.number
                else:
                    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = cd[132]
                    mem[ceil32(return_data.size) + 132] = 64
                    mem[ceil32(return_data.size) + 164] = ('cd', 100).length
                    idx = 0
                    s = ceil32(return_data.size) + 196
                    t = cd[100] + 36
                    while idx < ('cd', 100).length:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[36]))
                    staticcall address(cd[36]).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args cd[132], Array(len=('cd', 100).length, data=mem[ceil32(return_data.size) + 196 len 32 * ('cd', 100).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _176 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
                    _181 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] > test266151307():
                        revert with 'NH{q', 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 1 < 0:
                        revert with 'NH{q', 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 97
                    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
                    require return_data.size >= _176 + (32 * _181) + 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _181] = mem[ceil32(return_data.size) + _176 + 128 len 32 * _181]
                    if _181 < 1:
                        revert with 'NH{q', 17
                    if _181 - 1 >= _181:
                        revert with 'NH{q', 50
                    if mem[(32 * _181 - 1) + (2 * ceil32(return_data.size)) + 128] < cd[164]:
                        _327 = mem[64]
                        mem[mem[64]] = 96
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        u = mem[64] + (32 * mem[96]) + 128
                        while idx < ext_call.return_data[0]:
                            mem[t] = u + -_327 - 128
                            _418 = mem[s]
                            _419 = mem[mem[s]]
                            mem[u] = mem[mem[s]]
                            v = 0
                            w = u + 32
                            x = _418 + 32
                            while v < _419:
                                mem[w] = mem[x]
                                v = v + 1
                                w = w + 32
                                x = x + 32
                                continue 
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            u = u + (32 * _419) + 32
                            continue 
                        mem[_327 + 32] = 0
                        mem[_327 + 64] = block.number
                    else:
                        if ('cd', 4).length > test266151307():
                            revert with 'NH{q', 65
                        _326 = mem[64]
                        mem[mem[64]] = ('cd', 4).length
                        mem[64] = mem[64] + (32 * ('cd', 4).length) + 32
                        if not ('cd', 4).length:
                            idx = 0
                            while idx < ('cd', 4).length:
                                _416 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_416 + 32 len 64] = call.data[calldata.size len 64]
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + _326 + 32] = _416
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                                        gas 25000 wei
                                mem[_416 + 96 len 64] = ext_call.return_data[0 len 64]
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_416]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_416]:
                                    revert with 'NH{q', 50
                                mem[_416 + 64] = ext_call.return_data[32]
                                mem[_416 + 32] = ext_call.return_data[0]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            _425 = mem[64]
                            mem[mem[64]] = 96
                            _431 = mem[_326]
                            mem[mem[64] + 96] = mem[_326]
                            idx = 0
                            s = _326 + 32
                            t = mem[64] + 128
                            u = mem[64] + (32 * _431) + 128
                            while idx < _431:
                                mem[t] = u + -_425 - 128
                                _496 = mem[s]
                                _497 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                w = u + 32
                                x = _496 + 32
                                while v < _497:
                                    mem[w] = mem[x]
                                    v = v + 1
                                    w = w + 32
                                    x = x + 32
                                    continue 
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = u + (32 * _497) + 32
                                continue 
                            mem[_425 + 32] = 1
                            mem[_425 + 64] = block.number
                        else:
                            mem[_326 + 32] = 96
                            s = _326 + 32
                            idx = ('cd', 4).length
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            idx = 0
                            while idx < ('cd', 4).length:
                                _498 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                mem[_498 + 32 len 64] = call.data[calldata.size len 64]
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                mem[(32 * idx) + _326 + 32] = _498
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                staticcall cd[((32 * idx) + cd[4] + 36)].getReserves() with:
                                        gas 25000 wei
                                mem[_498 + 96 len 64] = ext_call.return_data[0 len 64]
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                if 0 >= mem[_498]:
                                    revert with 'NH{q', 50
                                if idx >= mem[_326]:
                                    revert with 'NH{q', 50
                                if 1 >= mem[_498]:
                                    revert with 'NH{q', 50
                                mem[_498 + 64] = ext_call.return_data[32]
                                mem[_498 + 32] = ext_call.return_data[0]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            _506 = mem[64]
                            mem[mem[64]] = 96
                            _508 = mem[_326]
                            mem[mem[64] + 96] = mem[_326]
                            idx = 0
                            s = _326 + 32
                            t = mem[64] + 128
                            u = mem[64] + (32 * _508) + 128
                            while idx < _508:
                                mem[t] = u + -_506 - 128
                                _539 = mem[s]
                                _540 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                w = u + 32
                                x = _539 + 32
                                while v < _540:
                                    mem[w] = mem[x]
                                    v = v + 1
                                    w = w + 32
                                    x = x + 32
                                    continue 
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = u + (32 * _540) + 32
                                continue 
                            mem[_506 + 32] = 1
                            mem[_506 + 64] = block.number
    return memory
      from mem[64]
       len u - mem[64]
}



}
