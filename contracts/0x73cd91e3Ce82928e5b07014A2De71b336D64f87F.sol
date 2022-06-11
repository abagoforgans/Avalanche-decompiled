contract main {




// =====================  Runtime code  =====================


#
#  - getAmountsIn(address arg1, uint256 arg2, uint256 arg3, address[] arg4)
#
function _fallback() payable {
    revert
}

function getReserves(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return ext_call.return_data[12 len 20], 0, 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg2 < arg3:
        if arg2 == arg2:
            return address(ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    else:
        if arg2 == arg3:
            return address(ext_call.return_data[0]), ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
    return address(ext_call.return_data[0]), ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
}

function getReservesOfPairs(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if arg1.length and 2 > -1 / arg1.length:
        revert with 'NH{q', 17
    if 2 * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * arg1.length
    mem[64] = (64 * arg1.length) + 128
    if not uint255(arg1.length):
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _40 = mem[_38]
            require mem[_38] == mem[_38 + 18 len 14]
            require mem[_38 + 32] == mem[_38 + 50 len 14]
            require mem[_38 + 64] == mem[_38 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[96]:
                revert with 'NH{q', 50
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + 128] = mem[_38 + 50 len 14]
            mem[(32 * s) + 128] = Mask(112, 0, _40)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
    else:
        mem[128 len 64 * arg1.length] = call.data[calldata.size len 64 * arg1.length]
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _41 = mem[_39]
            require mem[_39] == mem[_39 + 18 len 14]
            require mem[_39 + 32] == mem[_39 + 50 len 14]
            require mem[_39 + 64] == mem[_39 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[96]:
                revert with 'NH{q', 50
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + 128] = mem[_39 + 50 len 14]
            mem[(32 * s) + 128] = Mask(112, 0, _41)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getAmountsOut(address arg1, uint256 arg2, uint256 arg3, address[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    mem[132] = 64
    mem[164] = arg4.length
    idx = 0
    s = arg4 + 36
    t = 196
    while idx < arg4.length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(arg1)
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg4.length, data=mem[196 len 32 * arg4.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _122 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _123 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _123
    require _122 + (32 * _123) + 32 <= return_data.size
    idx = 0
    s = _122 + 128
    t = ceil32(return_data.size) + 128
    while idx < _123:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _123 < 1:
        revert with 'NH{q', 17
    if _123 - 1 >= _123:
        revert with 'NH{q', 50
    if mem[(32 * _123 - 1) + ceil32(return_data.size) + 128] < arg3:
        _328 = mem[64]
        mem[mem[64]] = 96
        _329 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _329:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _329) + 128
        _540 = mem[ceil32(return_data.size) + 96]
        mem[_328 + (32 * _329) + 128] = mem[ceil32(return_data.size) + 96]
        mem[_328 + (32 * _329) + 160 len 32 * _540] = mem[ceil32(return_data.size) + 128 len 32 * _540]
        mem[_328 + 64] = (32 * _329) + (32 * _540) + 160
        mem[_328 + (32 * _329) + (32 * _540) + 160] = mem[96]
        mem[_328 + (32 * _329) + (32 * _540) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        return memory
          from mem[64]
           len _328 + (32 * _329) + (32 * _540) + (32 * mem[96]) + -mem[64] + 192
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    _330 = mem[64]
    mem[mem[64]] = arg4.length - 1
    if not arg4.length - 1:
        if arg4.length < 1:
            revert with 'NH{q', 17
        if arg4.length - 1 and 2 > -1 / arg4.length - 1:
            revert with 'NH{q', 17
        if 2 * arg4.length - 1 > test266151307():
            revert with 'NH{q', 65
        _335 = mem[64] + (32 * arg4.length - 1) + 32
        mem[mem[64] + (32 * arg4.length - 1) + 32] = 2 * arg4.length - 1
        if not uint255(arg4.length - 1):
            require ext_code.size(arg1)
            staticcall arg1.factory() with:
                    gas gas_remaining wei
            mem[mem[64] + (98 * arg4.length) - 34] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + (98 * arg4.length) + ceil32(return_data.size) - 34
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if arg4.length < 1:
                revert with 'NH{q', 17
            if var268002 < arg4.length - 1:
                if var270001 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * var270001) + arg4 + 36)] == address(cd[((32 * var270001) + arg4 + 36)])
                s = var270001
                idx = var270001
                t = var270003
                u = var270004
                while idx <= -2:
                    if idx + 1 >= arg4.length:
                        revert with 'NH{q', 50
                    require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                    mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                    require ext_code.size(ext_call.return_data[12 len 20])
                    staticcall ext_call.return_data[12 len 20].getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                        _2615 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2623 = mem[_2615]
                        require mem[_2615] == mem[_2615 + 12 len 20]
                        if not mem[_2615 + 12 len 20]:
                            if u == -1:
                                revert with 'NH{q', 17
                            if u >= mem[_330]:
                                revert with 'NH{q', 50
                            if t == -1:
                                revert with 'NH{q', 17
                            if t >= mem[_335]:
                                revert with 'NH{q', 50
                            if t + 1 == -1:
                                revert with 'NH{q', 17
                            if t + 1 >= mem[_335]:
                                revert with 'NH{q', 50
                            mem[(32 * t + 1) + _335 + 32] = 0
                            mem[(32 * t) + _335 + 32] = 0
                            mem[(32 * u) + _330 + 32] = address(_2623)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if arg4.length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < arg4.length - 1:
                                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                                s = idx + 1
                                idx = idx + 1
                                t = t + 2
                                u = u + 1
                                continue 
                            _2703 = mem[64]
                            mem[mem[64]] = 96
                            _2727 = mem[_330]
                            mem[mem[64] + 96] = mem[_330]
                            idx = 0
                            t = _330 + 32
                            u = mem[64] + 128
                            while idx < _2727:
                                mem[u] = mem[t + 12 len 20]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _2727) + 128
                            _2975 = mem[ceil32(return_data.size) + 96]
                            mem[_2703 + (32 * _2727) + 128] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            t = ceil32(return_data.size) + 128
                            u = _2703 + (32 * _2727) + 160
                            while idx < _2975:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2703 + 64] = (32 * _2727) + (32 * _2975) + 160
                            _3119 = mem[_335]
                            mem[_2703 + (32 * _2727) + (32 * _2975) + 160] = mem[_335]
                            idx = 0
                            t = _335 + 32
                            u = _2703 + (32 * _2727) + (32 * _2975) + 192
                            while idx < _3119:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _2703 + (32 * _2727) + (32 * _2975) + (32 * _3119) + -mem[64] + 192
                        require ext_code.size(mem[_2615 + 12 len 20])
                        staticcall mem[_2615 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2647 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _2655 = mem[_2647]
                        require mem[_2647] == mem[_2647 + 18 len 14]
                        _2672 = mem[_2647 + 32]
                        require mem[_2647 + 32] == mem[_2647 + 50 len 14]
                        require mem[_2647 + 64] == mem[_2647 + 92 len 4]
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                            mem[(32 * t + 1) + _335 + 32] = mem[_2647 + 50 len 14]
                            mem[(32 * t) + _335 + 32] = Mask(112, 0, _2655)
                            mem[(32 * u) + _330 + 32] = address(_2623)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if arg4.length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < arg4.length - 1:
                                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                                s = idx + 1
                                idx = idx + 1
                                t = t + 2
                                u = u + 1
                                continue 
                            _2799 = mem[64]
                            mem[mem[64]] = 96
                            _2824 = mem[_330]
                            mem[mem[64] + 96] = mem[_330]
                            idx = 0
                            t = _330 + 32
                            u = mem[64] + 128
                            while idx < _2824:
                                mem[u] = mem[t + 12 len 20]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _2824) + 128
                            _2976 = mem[ceil32(return_data.size) + 96]
                            mem[_2799 + (32 * _2824) + 128] = mem[ceil32(return_data.size) + 96]
                            idx = 0
                            t = ceil32(return_data.size) + 128
                            u = _2799 + (32 * _2824) + 160
                            while idx < _2976:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_2799 + 64] = (32 * _2824) + (32 * _2976) + 160
                            _3120 = mem[_335]
                            mem[_2799 + (32 * _2824) + (32 * _2976) + 160] = mem[_335]
                            idx = 0
                            t = _335 + 32
                            u = _2799 + (32 * _2824) + (32 * _2976) + 192
                            while idx < _3120:
                                mem[u] = mem[t]
                                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _2799 + (32 * _2824) + (32 * _2976) + (32 * _3120) + -mem[64] + 192
                        mem[(32 * t + 1) + _335 + 32] = mem[_2647 + 18 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2672)
                        mem[(32 * u) + _330 + 32] = address(_2623)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2800 = mem[64]
                        mem[mem[64]] = 96
                        _2825 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2825:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2825) + 128
                        _2977 = mem[ceil32(return_data.size) + 96]
                        mem[_2800 + (32 * _2825) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2800 + (32 * _2825) + 160
                        while idx < _2977:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2800 + 64] = (32 * _2825) + (32 * _2977) + 160
                        _3121 = mem[_335]
                        mem[_2800 + (32 * _2825) + (32 * _2977) + 160] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2800 + (32 * _2825) + (32 * _2977) + 192
                        while idx < _3121:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2800 + (32 * _2825) + (32 * _2977) + (32 * _3121) + -mem[64] + 192
                    _2616 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2624 = mem[_2616]
                    require mem[_2616] == mem[_2616 + 12 len 20]
                    if not mem[_2616 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _335 + 32] = 0
                        mem[(32 * t) + _335 + 32] = 0
                        mem[(32 * u) + _330 + 32] = address(_2624)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2706 = mem[64]
                        mem[mem[64]] = 96
                        _2728 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2728:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2706 + 32] = (32 * _2728) + 128
                        _2978 = mem[ceil32(return_data.size) + 96]
                        mem[_2706 + (32 * _2728) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2706 + (32 * _2728) + 160
                        while idx < _2978:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2706 + 64] = (32 * _2728) + (32 * _2978) + 160
                        _3122 = mem[_335]
                        mem[_2706 + (32 * _2728) + (32 * _2978) + 160] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2706 + (32 * _2728) + (32 * _2978) + 192
                        while idx < _3122:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2706 + (32 * _2728) + (32 * _2978) + (32 * _3122) + -mem[64] + 192
                    require ext_code.size(mem[_2616 + 12 len 20])
                    staticcall mem[_2616 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2648 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2656 = mem[_2648]
                    require mem[_2648] == mem[_2648 + 18 len 14]
                    _2674 = mem[_2648 + 32]
                    require mem[_2648 + 32] == mem[_2648 + 50 len 14]
                    require mem[_2648 + 64] == mem[_2648 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                        mem[(32 * t + 1) + _335 + 32] = mem[_2648 + 50 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2656)
                        mem[(32 * u) + _330 + 32] = address(_2624)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2801 = mem[64]
                        mem[mem[64]] = 96
                        _2827 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2827:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2827) + 128
                        _2979 = mem[ceil32(return_data.size) + 96]
                        mem[_2801 + (32 * _2827) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2801 + (32 * _2827) + 160
                        while idx < _2979:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2801 + 64] = (32 * _2827) + (32 * _2979) + 160
                        _3123 = mem[_335]
                        mem[_2801 + (32 * _2827) + (32 * _2979) + 160] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2801 + (32 * _2827) + (32 * _2979) + 192
                        while idx < _3123:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2801 + (32 * _2827) + (32 * _2979) + (32 * _3123) + -mem[64] + 192
                    mem[(32 * t + 1) + _335 + 32] = mem[_2648 + 18 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2674)
                    mem[(32 * u) + _330 + 32] = address(_2624)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2802 = mem[64]
                    mem[mem[64]] = 96
                    _2828 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2828:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2802 + 32] = (32 * _2828) + 128
                    _2980 = mem[ceil32(return_data.size) + 96]
                    mem[_2802 + (32 * _2828) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2802 + (32 * _2828) + 160
                    while idx < _2980:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2802 + 64] = (32 * _2828) + (32 * _2980) + 160
                    _3124 = mem[_335]
                    mem[_2802 + (32 * _2828) + (32 * _2980) + 160] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2802 + (32 * _2828) + (32 * _2980) + 192
                    while idx < _3124:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2802 + (32 * _2828) + (32 * _2980) + (32 * _3124) + -mem[64] + 192
                revert with 'NH{q', 17
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32] = 96
            _1843 = mem[_330]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 128] = mem[_330]
            idx = 0
            s = _330 + 32
            t = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 160
            while idx < _1843:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 64] = (32 * _1843) + 128
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + 192 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 192] = mem[_335]
            mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 224 len 32 * mem[_335]] = mem[_335 + 32 len 32 * mem[_335]]
            return mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32 len -ceil32(return_data.size)], 
                   ext_call.return_data[0],
                   mem[_335 + (64 * arg4.length - 1) + 64 len ceil32(return_data.size) + 32],
                   (32 * _1843) + (32 * _123) + 160,
                   mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 128 len (32 * _1843) + 32],
                   _123,
                   mem[ceil32(return_data.size) + 128 len 32 * _123],
                   mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1843) + (32 * _123) + 192 len (32 * mem[_335]) + 32]
        mem[mem[64] + (32 * arg4.length - 1) + 64 len 64 * arg4.length - 1] = call.data[calldata.size len 64 * arg4.length - 1]
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
        mem[mem[64] + (98 * arg4.length) - 34] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + (98 * arg4.length) + ceil32(return_data.size) - 34
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var269002 < arg4.length - 1:
            if var271001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var271001) + arg4 + 36)] == address(cd[((32 * var271001) + arg4 + 36)])
            s = var271001
            idx = var271001
            t = var271003
            u = var271004
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(ext_call.return_data[12 len 20])
                staticcall ext_call.return_data[12 len 20].getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                    _2617 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2625 = mem[_2617]
                    require mem[_2617] == mem[_2617 + 12 len 20]
                    if not mem[_2617 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_335]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_335]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _335 + 32] = 0
                        mem[(32 * t) + _335 + 32] = 0
                        mem[(32 * u) + _330 + 32] = address(_2625)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2709 = mem[64]
                        mem[mem[64]] = 96
                        _2729 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2729:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2729) + 128
                        _2981 = mem[ceil32(return_data.size) + 96]
                        mem[_2709 + (32 * _2729) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2709 + (32 * _2729) + 160
                        while idx < _2981:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2709 + 64] = (32 * _2729) + (32 * _2981) + 160
                        _3125 = mem[_335]
                        mem[_2709 + (32 * _2729) + (32 * _2981) + 160] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2709 + (32 * _2729) + (32 * _2981) + 192
                        while idx < _3125:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2709 + (32 * _2729) + (32 * _2981) + (32 * _3125) + -mem[64] + 192
                    require ext_code.size(mem[_2617 + 12 len 20])
                    staticcall mem[_2617 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2649 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2657 = mem[_2649]
                    require mem[_2649] == mem[_2649 + 18 len 14]
                    _2676 = mem[_2649 + 32]
                    require mem[_2649 + 32] == mem[_2649 + 50 len 14]
                    require mem[_2649 + 64] == mem[_2649 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                        mem[(32 * t + 1) + _335 + 32] = mem[_2649 + 50 len 14]
                        mem[(32 * t) + _335 + 32] = Mask(112, 0, _2657)
                        mem[(32 * u) + _330 + 32] = address(_2625)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2803 = mem[64]
                        mem[mem[64]] = 96
                        _2830 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2830:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2830) + 128
                        _2982 = mem[ceil32(return_data.size) + 96]
                        mem[_2803 + (32 * _2830) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2803 + (32 * _2830) + 160
                        while idx < _2982:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2803 + 64] = (32 * _2830) + (32 * _2982) + 160
                        _3126 = mem[_335]
                        mem[_2803 + (32 * _2830) + (32 * _2982) + 160] = mem[_335]
                        idx = 0
                        t = _335 + 32
                        u = _2803 + (32 * _2830) + (32 * _2982) + 192
                        while idx < _3126:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2803 + (32 * _2830) + (32 * _2982) + (32 * _3126) + -mem[64] + 192
                    mem[(32 * t + 1) + _335 + 32] = mem[_2649 + 18 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2676)
                    mem[(32 * u) + _330 + 32] = address(_2625)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2804 = mem[64]
                    mem[mem[64]] = 96
                    _2831 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2831:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2831) + 128
                    _2983 = mem[ceil32(return_data.size) + 96]
                    mem[_2804 + (32 * _2831) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2804 + (32 * _2831) + 160
                    while idx < _2983:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2804 + 64] = (32 * _2831) + (32 * _2983) + 160
                    _3127 = mem[_335]
                    mem[_2804 + (32 * _2831) + (32 * _2983) + 160] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2804 + (32 * _2831) + (32 * _2983) + 192
                    while idx < _3127:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2804 + (32 * _2831) + (32 * _2983) + (32 * _3127) + -mem[64] + 192
                _2618 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2626 = mem[_2618]
                require mem[_2618] == mem[_2618 + 12 len 20]
                if not mem[_2618 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_335]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_335]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _335 + 32] = 0
                    mem[(32 * t) + _335 + 32] = 0
                    mem[(32 * u) + _330 + 32] = address(_2626)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2712 = mem[64]
                    mem[mem[64]] = 96
                    _2730 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2730:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2730) + 128
                    _2984 = mem[ceil32(return_data.size) + 96]
                    mem[_2712 + (32 * _2730) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2712 + (32 * _2730) + 160
                    while idx < _2984:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2712 + 64] = (32 * _2730) + (32 * _2984) + 160
                    _3128 = mem[_335]
                    mem[_2712 + (32 * _2730) + (32 * _2984) + 160] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2712 + (32 * _2730) + (32 * _2984) + 192
                    while idx < _3128:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2712 + (32 * _2730) + (32 * _2984) + (32 * _3128) + -mem[64] + 192
                require ext_code.size(mem[_2618 + 12 len 20])
                staticcall mem[_2618 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2650 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2658 = mem[_2650]
                require mem[_2650] == mem[_2650 + 18 len 14]
                _2678 = mem[_2650 + 32]
                require mem[_2650 + 32] == mem[_2650 + 50 len 14]
                require mem[_2650 + 64] == mem[_2650 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_335]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_335]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                    mem[(32 * t + 1) + _335 + 32] = mem[_2650 + 50 len 14]
                    mem[(32 * t) + _335 + 32] = Mask(112, 0, _2658)
                    mem[(32 * u) + _330 + 32] = address(_2626)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2805 = mem[64]
                    mem[mem[64]] = 96
                    _2833 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2833:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2833) + 128
                    _2985 = mem[ceil32(return_data.size) + 96]
                    mem[_2805 + (32 * _2833) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2805 + (32 * _2833) + 160
                    while idx < _2985:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2805 + 64] = (32 * _2833) + (32 * _2985) + 160
                    _3129 = mem[_335]
                    mem[_2805 + (32 * _2833) + (32 * _2985) + 160] = mem[_335]
                    idx = 0
                    t = _335 + 32
                    u = _2805 + (32 * _2833) + (32 * _2985) + 192
                    while idx < _3129:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2805 + (32 * _2833) + (32 * _2985) + (32 * _3129) + -mem[64] + 192
                mem[(32 * t + 1) + _335 + 32] = mem[_2650 + 18 len 14]
                mem[(32 * t) + _335 + 32] = Mask(112, 0, _2678)
                mem[(32 * u) + _330 + 32] = address(_2626)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2806 = mem[64]
                mem[mem[64]] = 96
                _2834 = mem[_330]
                mem[mem[64] + 96] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 128
                while idx < _2834:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2834) + 128
                _2986 = mem[ceil32(return_data.size) + 96]
                mem[_2806 + (32 * _2834) + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = _2806 + (32 * _2834) + 160
                while idx < _2986:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2806 + 64] = (32 * _2834) + (32 * _2986) + 160
                _3130 = mem[_335]
                mem[_2806 + (32 * _2834) + (32 * _2986) + 160] = mem[_335]
                idx = 0
                t = _335 + 32
                u = _2806 + (32 * _2834) + (32 * _2986) + 192
                while idx < _3130:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _2806 + (32 * _2834) + (32 * _2986) + (32 * _3130) + -mem[64] + 192
            revert with 'NH{q', 17
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32] = 96
        _1844 = mem[_330]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 128] = mem[_330]
        idx = 0
        s = _330 + 32
        t = _335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 160
        while idx < _1844:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 64] = (32 * _1844) + 128
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + 192 len 32 * _123] = mem[ceil32(return_data.size) + 128 len 32 * _123]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 192] = mem[_335]
        mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 224 len 32 * mem[_335]] = mem[_335 + 32 len 32 * mem[_335]]
        return mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 32 len -ceil32(return_data.size)], 
               ext_call.return_data[0],
               mem[_335 + (64 * arg4.length - 1) + 64 len ceil32(return_data.size) + 32],
               (32 * _1844) + (32 * _123) + 160,
               mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + 128 len (32 * _1844) + 32],
               _123,
               mem[ceil32(return_data.size) + 128 len 32 * _123],
               mem[_335 + (64 * arg4.length - 1) + ceil32(return_data.size) + (32 * _1844) + (32 * _123) + 192 len (32 * mem[_335]) + 32]
    mem[mem[64] + 32 len 32 * arg4.length - 1] = call.data[calldata.size len 32 * arg4.length - 1]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 and 2 > -1 / arg4.length - 1:
        revert with 'NH{q', 17
    if 2 * arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    mem[mem[64] + (32 * arg4.length - 1) + 32] = 2 * arg4.length - 1
    mem[64] = mem[64] + (98 * arg4.length) - 34
    if not uint255(arg4.length - 1):
        mem[_330 + (98 * arg4.length) - 34] = 0xc45a015500000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.factory() with:
                gas gas_remaining wei
               args mem[_330 + (98 * arg4.length) - 30 len (192 * arg4.length) - 192]
        mem[_330 + (98 * arg4.length) - 34] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _330 + (98 * arg4.length) + ceil32(return_data.size) - 34
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var269002 < arg4.length - 1:
            if var271001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var271001) + arg4 + 36)] == address(cd[((32 * var271001) + arg4 + 36)])
            s = var271001
            idx = var271001
            t = var271003
            u = var271004
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                    _2619 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2627 = mem[_2619]
                    require mem[_2619] == mem[_2619 + 12 len 20]
                    if not mem[_2619 + 12 len 20]:
                        if u == -1:
                            revert with 'NH{q', 17
                        if u >= mem[_330]:
                            revert with 'NH{q', 50
                        if t == -1:
                            revert with 'NH{q', 17
                        if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                            revert with 'NH{q', 50
                        if t + 1 == -1:
                            revert with 'NH{q', 17
                        if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                            revert with 'NH{q', 50
                        mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                        mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                        mem[(32 * u) + _330 + 32] = address(_2627)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2715 = mem[64]
                        mem[mem[64]] = 96
                        _2731 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2731:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2731) + 128
                        _2987 = mem[ceil32(return_data.size) + 96]
                        mem[_2715 + (32 * _2731) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2715 + (32 * _2731) + 160
                        while idx < _2987:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2715 + 64] = (32 * _2731) + (32 * _2987) + 160
                        _3131 = mem[_330 + (32 * arg4.length - 1) + 32]
                        mem[_2715 + (32 * _2731) + (32 * _2987) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                        idx = 0
                        t = _330 + (32 * arg4.length - 1) + 64
                        u = _2715 + (32 * _2731) + (32 * _2987) + 192
                        while idx < _3131:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2715 + (32 * _2731) + (32 * _2987) + (32 * _3131) + -mem[64] + 192
                    require ext_code.size(mem[_2619 + 12 len 20])
                    staticcall mem[_2619 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2651 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _2659 = mem[_2651]
                    require mem[_2651] == mem[_2651 + 18 len 14]
                    require mem[_2651 + 32] == mem[_2651 + 50 len 14]
                    require mem[_2651 + 64] == mem[_2651 + 92 len 4]
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                        mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 50 len 14]
                        mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2659)
                        mem[(32 * u) + _330 + 32] = address(_2627)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if arg4.length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < arg4.length - 1:
                            require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                            s = idx + 1
                            idx = idx + 1
                            t = t + 2
                            u = u + 1
                            continue 
                        _2807 = mem[64]
                        mem[mem[64]] = 96
                        _2836 = mem[_330]
                        mem[mem[64] + 96] = mem[_330]
                        idx = 0
                        t = _330 + 32
                        u = mem[64] + 128
                        while idx < _2836:
                            mem[u] = mem[t + 12 len 20]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _2836) + 128
                        _2988 = mem[ceil32(return_data.size) + 96]
                        mem[_2807 + (32 * _2836) + 128] = mem[ceil32(return_data.size) + 96]
                        idx = 0
                        t = ceil32(return_data.size) + 128
                        u = _2807 + (32 * _2836) + 160
                        while idx < _2988:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_2807 + 64] = (32 * _2836) + (32 * _2988) + 160
                        _3132 = mem[_330 + (32 * arg4.length - 1) + 32]
                        mem[_2807 + (32 * _2836) + (32 * _2988) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                        idx = 0
                        t = _330 + (32 * arg4.length - 1) + 64
                        u = _2807 + (32 * _2836) + (32 * _2988) + 192
                        while idx < _3132:
                            mem[u] = mem[t]
                            require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _2807 + (32 * _2836) + (32 * _2988) + (32 * _3132) + -mem[64] + 192
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 18 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2651 + 50 len 14]
                    mem[(32 * u) + _330 + 32] = address(_2627)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2808 = mem[64]
                    mem[mem[64]] = 96
                    _2837 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2837:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2837) + 128
                    _2989 = mem[ceil32(return_data.size) + 96]
                    mem[_2808 + (32 * _2837) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2808 + (32 * _2837) + 160
                    while idx < _2989:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2808 + 64] = (32 * _2837) + (32 * _2989) + 160
                    _3133 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2808 + (32 * _2837) + (32 * _2989) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2808 + (32 * _2837) + (32 * _2989) + 192
                    while idx < _3133:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2808 + (32 * _2837) + (32 * _2989) + (32 * _3133) + -mem[64] + 192
                _2620 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2628 = mem[_2620]
                require mem[_2620] == mem[_2620 + 12 len 20]
                if not mem[_2620 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * u) + _330 + 32] = address(_2628)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2718 = mem[64]
                    mem[mem[64]] = 96
                    _2732 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2732:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2732) + 128
                    _2990 = mem[ceil32(return_data.size) + 96]
                    mem[_2718 + (32 * _2732) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2718 + (32 * _2732) + 160
                    while idx < _2990:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2718 + 64] = (32 * _2732) + (32 * _2990) + 160
                    _3134 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2718 + (32 * _2732) + (32 * _2990) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2718 + (32 * _2732) + (32 * _2990) + 192
                    while idx < _3134:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2718 + (32 * _2732) + (32 * _2990) + (32 * _3134) + -mem[64] + 192
                require ext_code.size(mem[_2620 + 12 len 20])
                staticcall mem[_2620 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2660 = mem[_2652]
                require mem[_2652] == mem[_2652 + 18 len 14]
                require mem[_2652 + 32] == mem[_2652 + 50 len 14]
                require mem[_2652 + 64] == mem[_2652 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 50 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2660)
                    mem[(32 * u) + _330 + 32] = address(_2628)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2809 = mem[64]
                    mem[mem[64]] = 96
                    _2839 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2839:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2809 + 32] = (32 * _2839) + 128
                    _2991 = mem[ceil32(return_data.size) + 96]
                    mem[_2809 + (32 * _2839) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2809 + (32 * _2839) + 160
                    while idx < _2991:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2809 + 64] = (32 * _2839) + (32 * _2991) + 160
                    _3135 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2809 + (32 * _2839) + (32 * _2991) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2809 + (32 * _2839) + (32 * _2991) + 192
                    while idx < _3135:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2809 + (32 * _2839) + (32 * _2991) + (32 * _3135) + -mem[64] + 192
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 18 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2652 + 50 len 14]
                mem[(32 * u) + _330 + 32] = address(_2628)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2810 = mem[64]
                mem[mem[64]] = 96
                _2840 = mem[_330]
                mem[mem[64] + 96] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 128
                while idx < _2840:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2840) + 128
                _2992 = mem[ceil32(return_data.size) + 96]
                mem[_2810 + (32 * _2840) + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = _2810 + (32 * _2840) + 160
                while idx < _2992:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2810 + 64] = (32 * _2840) + (32 * _2992) + 160
                _3136 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[_2810 + (32 * _2840) + (32 * _2992) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = _2810 + (32 * _2840) + (32 * _2992) + 192
                while idx < _3136:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _2810 + (32 * _2840) + (32 * _2992) + (32 * _3136) + -mem[64] + 192
            revert with 'NH{q', 17
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 34] = 96
        _1845 = mem[_330]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 62] = mem[_330]
        idx = 0
        s = _330 + 32
        t = _330 + (98 * arg4.length) + ceil32(return_data.size) + 94
        while idx < mem[_330]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2] = (32 * mem[_330]) + 128
        _2221 = mem[ceil32(return_data.size) + 96]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + 94] = mem[ceil32(return_data.size) + 96]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + 126 len 32 * _2221] = mem[ceil32(return_data.size) + 128 len 32 * _2221]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 30] = (32 * _1845) + (32 * _2221) + 160
        _2589 = mem[_330 + (32 * arg4.length - 1) + 32]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + (32 * _2221) + 126] = mem[_330 + (32 * arg4.length - 1) + 32]
        mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + (32 * _2221) + 158 len 32 * _2589] = mem[_330 + (32 * arg4.length - 1) + 64 len 32 * _2589]
        return memory
          from mem[64]
           len _330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1845) + (32 * _2221) + (32 * _2589) + -mem[64] + 158
    mem[_330 + (32 * arg4.length - 1) + 64 len 64 * arg4.length - 1] = call.data[calldata.size len 64 * arg4.length - 1]
    mem[_330 + (98 * arg4.length) - 34] = 0xc45a015500000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
           args mem[_330 + (98 * arg4.length) - 30 len (192 * arg4.length) - 192]
    mem[_330 + (98 * arg4.length) - 34] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _330 + (98 * arg4.length) + ceil32(return_data.size) - 34
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if var270002 < arg4.length - 1:
        if var272001 >= arg4.length:
            revert with 'NH{q', 50
        require cd[((32 * var272001) + arg4 + 36)] == address(cd[((32 * var272001) + arg4 + 36)])
        s = var272001
        idx = var272001
        t = var272003
        u = var272004
        while idx <= -2:
            if idx + 1 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[((32 * s) + arg4 + 36)]) < address(cd[((32 * idx + 1) + arg4 + 36)]):
                _2621 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2629 = mem[_2621]
                require mem[_2621] == mem[_2621 + 12 len 20]
                if not mem[_2621 + 12 len 20]:
                    if u == -1:
                        revert with 'NH{q', 17
                    if u >= mem[_330]:
                        revert with 'NH{q', 50
                    if t == -1:
                        revert with 'NH{q', 17
                    if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    if t + 1 == -1:
                        revert with 'NH{q', 17
                    if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                        revert with 'NH{q', 50
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                    mem[(32 * u) + _330 + 32] = address(_2629)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2721 = mem[64]
                    mem[mem[64]] = 96
                    _2733 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2733:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _2733) + 128
                    _2993 = mem[ceil32(return_data.size) + 96]
                    mem[_2721 + (32 * _2733) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2721 + (32 * _2733) + 160
                    while idx < _2993:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2721 + 64] = (32 * _2733) + (32 * _2993) + 160
                    _3137 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2721 + (32 * _2733) + (32 * _2993) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2721 + (32 * _2733) + (32 * _2993) + 192
                    while idx < _3137:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2721 + (32 * _2733) + (32 * _2993) + (32 * _3137) + -mem[64] + 192
                require ext_code.size(mem[_2621 + 12 len 20])
                staticcall mem[_2621 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2653 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _2661 = mem[_2653]
                require mem[_2653] == mem[_2653 + 18 len 14]
                require mem[_2653 + 32] == mem[_2653 + 50 len 14]
                require mem[_2653 + 64] == mem[_2653 + 92 len 4]
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * s) + arg4 + 36)]):
                    mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 50 len 14]
                    mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2661)
                    mem[(32 * u) + _330 + 32] = address(_2629)
                    if idx == -1:
                        revert with 'NH{q', 17
                    if arg4.length < 1:
                        revert with 'NH{q', 17
                    if idx + 1 < arg4.length - 1:
                        require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                        s = idx + 1
                        idx = idx + 1
                        t = t + 2
                        u = u + 1
                        continue 
                    _2811 = mem[64]
                    mem[mem[64]] = 96
                    _2842 = mem[_330]
                    mem[mem[64] + 96] = mem[_330]
                    idx = 0
                    t = _330 + 32
                    u = mem[64] + 128
                    while idx < _2842:
                        mem[u] = mem[t + 12 len 20]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2811 + 32] = (32 * _2842) + 128
                    _2994 = mem[ceil32(return_data.size) + 96]
                    mem[_2811 + (32 * _2842) + 128] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    t = ceil32(return_data.size) + 128
                    u = _2811 + (32 * _2842) + 160
                    while idx < _2994:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_2811 + 64] = (32 * _2842) + (32 * _2994) + 160
                    _3138 = mem[_330 + (32 * arg4.length - 1) + 32]
                    mem[_2811 + (32 * _2842) + (32 * _2994) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                    idx = 0
                    t = _330 + (32 * arg4.length - 1) + 64
                    u = _2811 + (32 * _2842) + (32 * _2994) + 192
                    while idx < _3138:
                        mem[u] = mem[t]
                        require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    return memory
                      from mem[64]
                       len _2811 + (32 * _2842) + (32 * _2994) + (32 * _3138) + -mem[64] + 192
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 18 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2653 + 50 len 14]
                mem[(32 * u) + _330 + 32] = address(_2629)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2812 = mem[64]
                mem[mem[64]] = 96
                _2843 = mem[_330]
                mem[mem[64] + 96] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 128
                while idx < _2843:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2843) + 128
                _2995 = mem[ceil32(return_data.size) + 96]
                mem[_2812 + (32 * _2843) + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = _2812 + (32 * _2843) + 160
                while idx < _2995:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2812 + 64] = (32 * _2843) + (32 * _2995) + 160
                _3139 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[_2812 + (32 * _2843) + (32 * _2995) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = _2812 + (32 * _2843) + (32 * _2995) + 192
                while idx < _3139:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _2812 + (32 * _2843) + (32 * _2995) + (32 * _3139) + -mem[64] + 192
            _2622 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2630 = mem[_2622]
            require mem[_2622] == mem[_2622 + 12 len 20]
            if not mem[_2622 + 12 len 20]:
                if u == -1:
                    revert with 'NH{q', 17
                if u >= mem[_330]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                if t + 1 == -1:
                    revert with 'NH{q', 17
                if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = 0
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = 0
                mem[(32 * u) + _330 + 32] = address(_2630)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2724 = mem[64]
                mem[mem[64]] = 96
                _2734 = mem[_330]
                mem[mem[64] + 96] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 128
                while idx < _2734:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2734) + 128
                _2996 = mem[ceil32(return_data.size) + 96]
                mem[_2724 + (32 * _2734) + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = _2724 + (32 * _2734) + 160
                while idx < _2996:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2724 + 64] = (32 * _2734) + (32 * _2996) + 160
                _3140 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[_2724 + (32 * _2734) + (32 * _2996) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = _2724 + (32 * _2734) + (32 * _2996) + 192
                while idx < _3140:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _2724 + (32 * _2734) + (32 * _2996) + (32 * _3140) + -mem[64] + 192
            require ext_code.size(mem[_2622 + 12 len 20])
            staticcall mem[_2622 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2654 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _2662 = mem[_2654]
            require mem[_2654] == mem[_2654 + 18 len 14]
            require mem[_2654 + 32] == mem[_2654 + 50 len 14]
            require mem[_2654 + 64] == mem[_2654 + 92 len 4]
            if u == -1:
                revert with 'NH{q', 17
            if u >= mem[_330]:
                revert with 'NH{q', 50
            if t == -1:
                revert with 'NH{q', 17
            if t >= mem[_330 + (32 * arg4.length - 1) + 32]:
                revert with 'NH{q', 50
            if t + 1 == -1:
                revert with 'NH{q', 17
            if t + 1 >= mem[_330 + (32 * arg4.length - 1) + 32]:
                revert with 'NH{q', 50
            if address(cd[((32 * s) + arg4 + 36)]) == address(cd[((32 * idx + 1) + arg4 + 36)]):
                mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 50 len 14]
                mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = Mask(112, 0, _2662)
                mem[(32 * u) + _330 + 32] = address(_2630)
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    t = t + 2
                    u = u + 1
                    continue 
                _2813 = mem[64]
                mem[mem[64]] = 96
                _2845 = mem[_330]
                mem[mem[64] + 96] = mem[_330]
                idx = 0
                t = _330 + 32
                u = mem[64] + 128
                while idx < _2845:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 32] = (32 * _2845) + 128
                _2997 = mem[ceil32(return_data.size) + 96]
                mem[_2813 + (32 * _2845) + 128] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = _2813 + (32 * _2845) + 160
                while idx < _2997:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_2813 + 64] = (32 * _2845) + (32 * _2997) + 160
                _3141 = mem[_330 + (32 * arg4.length - 1) + 32]
                mem[_2813 + (32 * _2845) + (32 * _2997) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
                idx = 0
                t = _330 + (32 * arg4.length - 1) + 64
                u = _2813 + (32 * _2845) + (32 * _2997) + 192
                while idx < _3141:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _2813 + (32 * _2845) + (32 * _2997) + (32 * _3141) + -mem[64] + 192
            mem[(32 * t + 1) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 18 len 14]
            mem[(32 * t) + _330 + (32 * arg4.length - 1) + 64] = mem[_2654 + 50 len 14]
            mem[(32 * u) + _330 + 32] = address(_2630)
            if idx == -1:
                revert with 'NH{q', 17
            if arg4.length < 1:
                revert with 'NH{q', 17
            if idx + 1 < arg4.length - 1:
                require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                s = idx + 1
                idx = idx + 1
                t = t + 2
                u = u + 1
                continue 
            _2814 = mem[64]
            mem[mem[64]] = 96
            _2846 = mem[_330]
            mem[mem[64] + 96] = mem[_330]
            idx = 0
            t = _330 + 32
            u = mem[64] + 128
            while idx < _2846:
                mem[u] = mem[t + 12 len 20]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 32] = (32 * _2846) + 128
            _2998 = mem[ceil32(return_data.size) + 96]
            mem[_2814 + (32 * _2846) + 128] = mem[ceil32(return_data.size) + 96]
            idx = 0
            t = ceil32(return_data.size) + 128
            u = _2814 + (32 * _2846) + 160
            while idx < _2998:
                mem[u] = mem[t]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_2814 + 64] = (32 * _2846) + (32 * _2998) + 160
            _3142 = mem[_330 + (32 * arg4.length - 1) + 32]
            mem[_2814 + (32 * _2846) + (32 * _2998) + 160] = mem[_330 + (32 * arg4.length - 1) + 32]
            idx = 0
            t = _330 + (32 * arg4.length - 1) + 64
            u = _2814 + (32 * _2846) + (32 * _2998) + 192
            while idx < _3142:
                mem[u] = mem[t]
                require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len _2814 + (32 * _2846) + (32 * _2998) + (32 * _3142) + -mem[64] + 192
        revert with 'NH{q', 17
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 34] = 96
    _1846 = mem[_330]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 62] = mem[_330]
    idx = 0
    s = _330 + 32
    t = _330 + (98 * arg4.length) + ceil32(return_data.size) + 94
    while idx < mem[_330]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) - 2] = (32 * mem[_330]) + 128
    _2222 = mem[ceil32(return_data.size) + 96]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + 94] = mem[ceil32(return_data.size) + 96]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + 126 len 32 * _2222] = mem[ceil32(return_data.size) + 128 len 32 * _2222]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + 30] = (32 * _1846) + (32 * _2222) + 160
    _2590 = mem[_330 + (32 * arg4.length - 1) + 32]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + (32 * _2222) + 126] = mem[_330 + (32 * arg4.length - 1) + 32]
    mem[_330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + (32 * _2222) + 158 len 32 * _2590] = mem[_330 + (32 * arg4.length - 1) + 64 len 32 * _2590]
    return memory
      from mem[64]
       len _330 + (98 * arg4.length) + ceil32(return_data.size) + (32 * _1846) + (32 * _2222) + (32 * _2590) + -mem[64] + 158
}



}
