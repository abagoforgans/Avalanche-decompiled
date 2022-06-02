contract main {




// =====================  Runtime code  =====================


const getTime = block.number, block.timestamp


function _fallback() payable {
    revert
}

function sub_cf1e46e3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length and 2 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 128
    if not uint255(('cd', 4).length):
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _36 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _40 = mem[_36]
            require mem[_36] == mem[_36 + 18 len 14]
            require mem[_36 + 32] == mem[_36 + 50 len 14]
            require mem[_36 + 64] == mem[_36 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[96]:
                revert with 'NH{q', 50
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + 128] = mem[_36 + 50 len 14]
            mem[(32 * s) + 128] = Mask(112, 0, _40)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
        _26 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = block.timestamp
        return memory
          from mem[64]
           len _26 + (32 * mem[96]) + -mem[64] + 96
    mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _41 = mem[_37]
        require mem[_37] == mem[_37 + 18 len 14]
        require mem[_37 + 32] == mem[_37 + 50 len 14]
        require mem[_37 + 64] == mem[_37 + 92 len 4]
        if s == -1:
            revert with 'NH{q', 17
        if s >= mem[96]:
            revert with 'NH{q', 50
        if s + 1 == -1:
            revert with 'NH{q', 17
        if s + 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * s + 1) + 128] = mem[_37 + 50 len 14]
        mem[(32 * s) + 128] = Mask(112, 0, _41)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 2
        continue 
    _27 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = block.timestamp
    return memory
      from mem[64]
       len _27 + (32 * mem[96]) + -mem[64] + 96
}

function swapTokensForExactTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
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
    staticcall arg1.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=arg4.length, data=mem[196 len 32 * arg4.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _51 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _52 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _52
    require _51 + (32 * _52) + 32 <= return_data.size
    idx = 0
    s = _51 + 128
    t = ceil32(return_data.size) + 128
    while idx < _52:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg5 < block.timestamp:
        _98 = mem[64]
        mem[mem[64]] = arg5 >= block.timestamp
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _52
        mem[mem[64] + 192 len 32 * _52] = mem[ceil32(return_data.size) + 128 len 32 * _52]
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = (32 * _52) + 192
        mem[mem[64] + (32 * _52) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _52) + 224
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _98 + (32 * _52) + (32 * mem[96]) + -mem[64] + 224
    if 0 >= _52:
        revert with 'NH{q', 50
    _99 = mem[ceil32(return_data.size) + 128]
    if mem[ceil32(return_data.size) + 128] > arg3:
        _102 = mem[64]
        mem[mem[64]] = mem[ceil32(return_data.size) + 128] <= arg3
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _52
        mem[mem[64] + 192 len 32 * _52] = mem[ceil32(return_data.size) + 128 len 32 * _52]
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = (32 * _52) + 192
        mem[mem[64] + (32 * _52) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _52) + 224
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _102 + (32 * _52) + (32 * mem[96]) + -mem[64] + 224
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _103 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _104 = mem[_103]
    require mem[_103] == mem[_103 + 12 len 20]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    _109 = mem[64]
    mem[mem[64]] = arg4.length - 1
    mem[64] = mem[64] + (32 * arg4.length - 1) + 32
    if not arg4.length - 1:
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var200002 < arg4.length - 1:
            if var202001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var202001) + arg4 + 36)] == address(cd[((32 * var202001) + arg4 + 36)])
            s = var202001
            idx = var202001
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(_104))
                staticcall address(_104).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_376] == mem[_376 + 12 len 20]
                if idx >= mem[_109]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _109 + 32] = mem[_376 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    continue 
                _382 = mem[64]
                mem[mem[64]] = _99 <= arg3
                mem[mem[64] + 32] = 160
                _384 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 192
                while idx < _384:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_382 + 64] = block.timestamp
                mem[_382 + 96] = address(_104)
                mem[_382 + 128] = (32 * _384) + 192
                _396 = mem[_109]
                mem[_382 + (32 * _384) + 192] = mem[_109]
                idx = 0
                t = _109 + 32
                u = _382 + (32 * _384) + 224
                while idx < _396:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _382 + (32 * _384) + (32 * _396) + -mem[64] + 224
            revert with 'NH{q', 17
    else:
        mem[_109 + 32 len 32 * arg4.length - 1] = call.data[calldata.size len 32 * arg4.length - 1]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var201002 < arg4.length - 1:
            if var203001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var203001) + arg4 + 36)] == address(cd[((32 * var203001) + arg4 + 36)])
            s = var203001
            idx = var203001
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(_104))
                staticcall address(_104).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _377 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_377] == mem[_377 + 12 len 20]
                if idx >= mem[_109]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _109 + 32] = mem[_377 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    continue 
                _383 = mem[64]
                mem[mem[64]] = _99 <= arg3
                mem[mem[64] + 32] = 160
                _385 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 192
                while idx < _385:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_383 + 64] = block.timestamp
                mem[_383 + 96] = address(_104)
                mem[_383 + 128] = (32 * _385) + 192
                _397 = mem[_109]
                mem[_383 + (32 * _385) + 192] = mem[_109]
                idx = 0
                t = _109 + 32
                u = _383 + (32 * _385) + 224
                while idx < _397:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _383 + (32 * _385) + (32 * _397) + -mem[64] + 224
            revert with 'NH{q', 17
    mem[_109 + (32 * arg4.length - 1) + 32] = _99 <= arg3
    mem[_109 + (32 * arg4.length - 1) + 64] = 160
    mem[_109 + (32 * arg4.length - 1) + 192] = _52
    mem[_109 + (32 * arg4.length - 1) + 224 len 32 * _52] = mem[ceil32(return_data.size) + 128 len 32 * _52]
    mem[_109 + (32 * arg4.length - 1) + 96] = block.timestamp
    mem[_109 + (32 * arg4.length - 1) + 128] = address(_104)
    mem[_109 + (32 * arg4.length - 1) + 160] = (32 * _52) + 192
    mem[_109 + (32 * arg4.length - 1) + (32 * _52) + 224] = mem[_109]
    idx = 0
    s = _109 + 32
    t = _109 + (32 * arg4.length - 1) + (32 * _52) + 256
    while idx < mem[_109]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _109 + (32 * arg4.length - 1) + (32 * _52) + (32 * mem[_109]) + -mem[64] + 256
}

function swapExactTokensForTokens(address arg1, uint256 arg2, uint256 arg3, address[] arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 == arg5
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
    _52 = mem[96 len 4], Mask(224, 32, arg2) >> 32
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, arg2) >> 32 + 127 < return_data.size + 96
    _53 = mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg2) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _53
    require _52 + (32 * _53) + 32 <= return_data.size
    idx = 0
    s = _52 + 128
    t = ceil32(return_data.size) + 128
    while idx < _53:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg5 < block.timestamp:
        _100 = mem[64]
        mem[mem[64]] = arg5 >= block.timestamp
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _53
        mem[mem[64] + 192 len 32 * _53] = mem[ceil32(return_data.size) + 128 len 32 * _53]
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = (32 * _53) + 192
        mem[mem[64] + (32 * _53) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _53) + 224
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _100 + (32 * _53) + (32 * mem[96]) + -mem[64] + 224
    if _53 < 1:
        revert with 'NH{q', 17
    if _53 - 1 >= _53:
        revert with 'NH{q', 50
    _103 = mem[(32 * _53 - 1) + ceil32(return_data.size) + 128]
    if mem[(32 * _53 - 1) + ceil32(return_data.size) + 128] < arg3:
        _106 = mem[64]
        mem[mem[64]] = mem[(32 * _53 - 1) + ceil32(return_data.size) + 128] >= arg3
        mem[mem[64] + 32] = 160
        mem[mem[64] + 160] = _53
        mem[mem[64] + 192 len 32 * _53] = mem[ceil32(return_data.size) + 128 len 32 * _53]
        mem[mem[64] + 64] = block.timestamp
        mem[mem[64] + 96] = 0
        mem[mem[64] + 128] = (32 * _53) + 192
        mem[mem[64] + (32 * _53) + 192] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _53) + 224
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _106 + (32 * _53) + (32 * mem[96]) + -mem[64] + 224
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] == mem[_107 + 12 len 20]
    if arg4.length < 1:
        revert with 'NH{q', 17
    if arg4.length - 1 > test266151307():
        revert with 'NH{q', 65
    _113 = mem[64]
    mem[mem[64]] = arg4.length - 1
    mem[64] = mem[64] + (32 * arg4.length - 1) + 32
    if not arg4.length - 1:
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var207002 < arg4.length - 1:
            if var209001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var209001) + arg4 + 36)] == address(cd[((32 * var209001) + arg4 + 36)])
            s = var209001
            idx = var209001
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(_108))
                staticcall address(_108).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_379] == mem[_379 + 12 len 20]
                if idx >= mem[_113]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _113 + 32] = mem[_379 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    continue 
                _385 = mem[64]
                mem[mem[64]] = _103 >= arg3
                mem[mem[64] + 32] = 160
                _387 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 192
                while idx < _387:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_385 + 64] = block.timestamp
                mem[_385 + 96] = address(_108)
                mem[_385 + 128] = (32 * _387) + 192
                _399 = mem[_113]
                mem[_385 + (32 * _387) + 192] = mem[_113]
                idx = 0
                t = _113 + 32
                u = _385 + (32 * _387) + 224
                while idx < _399:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _385 + (32 * _387) + (32 * _399) + -mem[64] + 224
            revert with 'NH{q', 17
    else:
        mem[_113 + 32 len 32 * arg4.length - 1] = call.data[calldata.size len 32 * arg4.length - 1]
        if arg4.length < 1:
            revert with 'NH{q', 17
        if var208002 < arg4.length - 1:
            if var210001 >= arg4.length:
                revert with 'NH{q', 50
            require cd[((32 * var210001) + arg4 + 36)] == address(cd[((32 * var210001) + arg4 + 36)])
            s = var210001
            idx = var210001
            while idx <= -2:
                if idx + 1 >= arg4.length:
                    revert with 'NH{q', 50
                require cd[((32 * idx + 1) + arg4 + 36)] == address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg4 + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + arg4 + 36)])
                require ext_code.size(address(_108))
                staticcall address(_108).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg4 + 36)]), address(cd[((32 * idx + 1) + arg4 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _380 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_380] == mem[_380 + 12 len 20]
                if idx >= mem[_113]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _113 + 32] = mem[_380 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                if arg4.length < 1:
                    revert with 'NH{q', 17
                if idx + 1 < arg4.length - 1:
                    require cd[((32 * idx + 2) + arg4 + 36)] == address(cd[((32 * idx + 2) + arg4 + 36)])
                    s = idx + 1
                    idx = idx + 1
                    continue 
                _386 = mem[64]
                mem[mem[64]] = _103 >= arg3
                mem[mem[64] + 32] = 160
                _388 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160] = mem[ceil32(return_data.size) + 96]
                idx = 0
                t = ceil32(return_data.size) + 128
                u = mem[64] + 192
                while idx < _388:
                    mem[u] = mem[t]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_386 + 64] = block.timestamp
                mem[_386 + 96] = address(_108)
                mem[_386 + 128] = (32 * _388) + 192
                _400 = mem[_113]
                mem[_386 + (32 * _388) + 192] = mem[_113]
                idx = 0
                t = _113 + 32
                u = _386 + (32 * _388) + 224
                while idx < _400:
                    mem[u] = mem[t + 12 len 20]
                    require cd[((32 * s) + arg4 + 36)] == address(cd[((32 * s) + arg4 + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 32
                    continue 
                return memory
                  from mem[64]
                   len _386 + (32 * _388) + (32 * _400) + -mem[64] + 224
            revert with 'NH{q', 17
    mem[_113 + (32 * arg4.length - 1) + 32] = _103 >= arg3
    mem[_113 + (32 * arg4.length - 1) + 64] = 160
    mem[_113 + (32 * arg4.length - 1) + 192] = _53
    mem[_113 + (32 * arg4.length - 1) + 224 len 32 * _53] = mem[ceil32(return_data.size) + 128 len 32 * _53]
    mem[_113 + (32 * arg4.length - 1) + 96] = block.timestamp
    mem[_113 + (32 * arg4.length - 1) + 128] = address(_108)
    mem[_113 + (32 * arg4.length - 1) + 160] = (32 * _53) + 192
    mem[_113 + (32 * arg4.length - 1) + (32 * _53) + 224] = mem[_113]
    idx = 0
    s = _113 + 32
    t = _113 + (32 * arg4.length - 1) + (32 * _53) + 256
    while idx < mem[_113]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _113 + (32 * arg4.length - 1) + (32 * _53) + (32 * mem[_113]) + -mem[64] + 256
}

function sub_d8665712(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length and 2 > -1 / ('cd', 4).length:
            revert with 'NH{q', 17
        if 2 * ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[(32 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 160
        if not uint255(('cd', 4).length):
            idx = 0
            s = 0
            while idx < ('cd', 4).length:
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _148 = mem[_144]
                require mem[_144] == mem[_144 + 12 len 20]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = address(cd[68])
                require ext_code.size(address(_148))
                staticcall address(_148).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), address(cd[68])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _168 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_168] == mem[_168 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_168 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * idx) + 140 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + (32 * ('cd', 4).length) + 160] = 0
                    if s + 1 == -1:
                        revert with 'NH{q', 17
                    if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = 0
                else:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _204 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _212 = mem[_204]
                    require mem[_204] == mem[_204 + 18 len 14]
                    require mem[_204 + 32] == mem[_204 + 50 len 14]
                    require mem[_204 + 64] == mem[_204 + 92 len 4]
                    if s == -1:
                        revert with 'NH{q', 17
                    if s >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    if s + 1 == -1:
                        revert with 'NH{q', 17
                    if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = mem[_204 + 50 len 14]
                    mem[(32 * s) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _212)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + 2
                continue 
            _120 = mem[64]
            mem[mem[64]] = 96
            _124 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _124:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_120 + 32] = (32 * _124) + 128
            _240 = mem[(32 * ('cd', 4).length) + 128]
            mem[_120 + (32 * _124) + 128] = mem[(32 * ('cd', 4).length) + 128]
            mem[_120 + (32 * _124) + 160 len 32 * _240] = mem[(32 * ('cd', 4).length) + 160 len 32 * _240]
            mem[_120 + 64] = block.timestamp
            return memory
              from mem[64]
               len _120 + (32 * _124) + (32 * _240) + -mem[64] + 160
        mem[(32 * ('cd', 4).length) + 160 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _145 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_145]
            require mem[_145] == mem[_145 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_149))
            staticcall address(_149).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_169] == mem[_169 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_169 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                if s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + 160] = 0
                if s + 1 == -1:
                    revert with 'NH{q', 17
                if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _213 = mem[_205]
                require mem[_205] == mem[_205 + 18 len 14]
                require mem[_205 + 32] == mem[_205 + 50 len 14]
                require mem[_205 + 64] == mem[_205 + 92 len 4]
                if s == -1:
                    revert with 'NH{q', 17
                if s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                if s + 1 == -1:
                    revert with 'NH{q', 17
                if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = mem[_205 + 50 len 14]
                mem[(32 * s) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _213)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
        _121 = mem[64]
        mem[mem[64]] = 96
        _125 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _125:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_121 + 32] = (32 * _125) + 128
        _241 = mem[(32 * ('cd', 4).length) + 128]
        mem[_121 + (32 * _125) + 128] = mem[(32 * ('cd', 4).length) + 128]
        mem[_121 + (32 * _125) + 160 len 32 * _241] = mem[(32 * ('cd', 4).length) + 160 len 32 * _241]
        mem[_121 + 64] = block.timestamp
        return memory
          from mem[64]
           len _121 + (32 * _125) + (32 * _241) + -mem[64] + 160
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length and 2 > -1 / ('cd', 4).length:
        revert with 'NH{q', 17
    if 2 * ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[(32 * ('cd', 4).length) + 128] = 2 * ('cd', 4).length
    mem[64] = (98 * ('cd', 4).length) + 160
    if not uint255(('cd', 4).length):
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_146]
            require mem[_146] == mem[_146 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = address(cd[68])
            require ext_code.size(address(_150))
            staticcall address(_150).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), address(cd[68])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _170 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_170] == mem[_170 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_170 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * idx) + 140 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                if s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s) + (32 * ('cd', 4).length) + 160] = 0
                if s + 1 == -1:
                    revert with 'NH{q', 17
                if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = 0
            else:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _214 = mem[_206]
                require mem[_206] == mem[_206 + 18 len 14]
                require mem[_206 + 32] == mem[_206 + 50 len 14]
                require mem[_206 + 64] == mem[_206 + 92 len 4]
                if s == -1:
                    revert with 'NH{q', 17
                if s >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                if s + 1 == -1:
                    revert with 'NH{q', 17
                if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = mem[_206 + 50 len 14]
                mem[(32 * s) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _214)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 2
            continue 
        _122 = mem[64]
        mem[mem[64]] = 96
        _126 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _126:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_122 + 32] = (32 * _126) + 128
        _242 = mem[(32 * ('cd', 4).length) + 128]
        mem[_122 + (32 * _126) + 128] = mem[(32 * ('cd', 4).length) + 128]
        mem[_122 + (32 * _126) + 160 len 32 * _242] = mem[(32 * ('cd', 4).length) + 160 len 32 * _242]
        mem[_122 + 64] = block.timestamp
        return memory
          from mem[64]
           len _122 + (32 * _126) + (32 * _242) + -mem[64] + 160
    mem[(32 * ('cd', 4).length) + 160 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _151 = mem[_147]
        require mem[_147] == mem[_147 + 12 len 20]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = address(cd[68])
        require ext_code.size(address(_151))
        staticcall address(_151).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_171] == mem[_171 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_171 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + 140 len 20]:
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * s) + (32 * ('cd', 4).length) + 160] = 0
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = 0
        else:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _215 = mem[_207]
            require mem[_207] == mem[_207 + 18 len 14]
            require mem[_207 + 32] == mem[_207 + 50 len 14]
            require mem[_207 + 64] == mem[_207 + 92 len 4]
            if s == -1:
                revert with 'NH{q', 17
            if s >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            if s + 1 == -1:
                revert with 'NH{q', 17
            if s + 1 >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            mem[(32 * s + 1) + (32 * ('cd', 4).length) + 160] = mem[_207 + 50 len 14]
            mem[(32 * s) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _215)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 2
        continue 
    _123 = mem[64]
    mem[mem[64]] = 96
    _127 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _127:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_123 + 32] = (32 * _127) + 128
    _243 = mem[(32 * ('cd', 4).length) + 128]
    mem[_123 + (32 * _127) + 128] = mem[(32 * ('cd', 4).length) + 128]
    mem[_123 + (32 * _127) + 160 len 32 * _243] = mem[(32 * ('cd', 4).length) + 160 len 32 * _243]
    mem[_123 + 64] = block.timestamp
    return memory
      from mem[64]
       len _123 + (32 * _127) + (32 * _243) + -mem[64] + 160
}



}
