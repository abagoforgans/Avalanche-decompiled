contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_93e7b29f(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + 97
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
    s = 0
    t = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _27 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = address(cd[68])
        require ext_code.size(address(_27))
        staticcall address(_27).0x5e1e6325 with:
                gas gas_remaining wei
               args cd[4], address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_31] == mem[_31]
        if mem[_31] <= t:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        t = mem[_31]
        continue 
    return t, address(s)
}

function sub_1dd34f16(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 100).length) + 97
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
    s = 0
    t = -1
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _26 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = address(cd[36])
        mem[mem[64] + 68] = address(cd[68])
        require ext_code.size(address(_26))
        staticcall address(_26).getAmountIn(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args cd[4], address(cd[36]), address(cd[68])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        _33 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_33] == mem[_33]
        if mem[_33] <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if mem[_33] >= t:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[(32 * idx) + 128]
        t = mem[_33]
        continue 
    if t != -1:
        return t, address(s)
    return 0, address(s)
}

function sub_4cfd87ae(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 2:
        revert with 0, 'INVALID_PATH'
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length != ('cd', 68).length - 1:
        revert with 0, 'INVALID_PATH'
    idx = 0
    s = cd[4]
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _67 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _72 = mem[(32 * idx + 1) + floor32(('cd', 36).length) + 129]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_69)
        mem[mem[64] + 68] = address(_72)
        require ext_code.size(address(_67))
        staticcall address(_67).0x5e1e6325 with:
                gas gas_remaining wei
               args s, address(_69), address(_72)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_75]
        continue 
    return (cd[4] + (_76 * ('cd', 36).length))
}

function sub_e871fdb3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length < 2:
        revert with 0, 'INVALID_PATH'
    if ('cd', 68).length < 1:
        revert with 'NH{q', 17
    if ('cd', 36).length != ('cd', 68).length - 1:
        revert with 0, 'INVALID_PATH'
    idx = mem[96]
    s = cd[4]
    while idx > 0:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        _67 = mem[(32 * idx - 1) + 128]
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _69 = mem[(32 * idx - 1) + floor32(('cd', 36).length) + 129]
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _71 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_69)
        mem[mem[64] + 68] = address(_71)
        require ext_code.size(address(_67))
        staticcall address(_67).getAmountIn(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_69), address(_71)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_74] == mem[_74]
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = mem[_74]
        continue 
    return s
}

function sub_378ba3c8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + floor32(('cd', 36).length) + 141 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _147 = mem[(32 * idx) + 128]
            if idx > -2:
                revert with 'NH{q', 17
            if idx + 1 >= mem[96]:
                revert with 'NH{q', 50
            _152 = mem[(32 * idx + 1) + 128]
            _172 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
            t = 0
            u = 0
            v = 0
            while t < _172:
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _176 = mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_147)
                mem[mem[64] + 68] = address(_152)
                require ext_code.size(address(_176))
                staticcall address(_176).0x5e1e6325 with:
                        gas gas_remaining wei
                       args s, address(_147), address(_152)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if t == -1:
                        revert with 'NH{q', 17
                    _172 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                    t = t + 1
                    u = u
                    v = v
                    continue 
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_182] == mem[_182]
                if mem[_182] <= v:
                    if t == -1:
                        revert with 'NH{q', 17
                    _172 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                    t = t + 1
                    u = u
                    v = v
                    continue 
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                _172 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                t = t + 1
                u = mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                v = mem[_182]
                continue 
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = address(u)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = v
            continue 
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _145 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _148 = mem[(32 * idx) + 128]
        if idx > -2:
            revert with 'NH{q', 17
        if idx + 1 >= mem[96]:
            revert with 'NH{q', 50
        _153 = mem[(32 * idx + 1) + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_148)
        mem[mem[64] + 68] = address(_153)
        require ext_code.size(address(_145))
        staticcall address(_145).0x5e1e6325 with:
                gas gas_remaining wei
               args s, address(_148), address(_153)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_165] == mem[_165]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = mem[_165]
        continue 
    _141 = mem[64]
    mem[mem[64]] = s
    mem[mem[64] + 32] = 96
    _149 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _149:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * _149) + 128
    _178 = mem[floor32(('cd', 36).length) + 97]
    mem[_141 + (32 * _149) + 128] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _141 + (32 * _149) + 160
    while idx < _178:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _141 + (32 * _149) + (32 * _178) + -mem[64] + 160
}

function sub_29c857b2(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
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
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98 > test266151307() or floor32(('cd', 68).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = floor32(('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99 > test266151307() or floor32(('cd', 100).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 99
    mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
    s = cd[4]
    while idx > 0:
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        if idx < 1:
            revert with 'NH{q', 17
        if not mem[(32 * idx - 1) + floor32(('cd', 36).length) + 141 len 20]:
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            _147 = mem[(32 * idx - 1) + 128]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _150 = mem[(32 * idx) + 128]
            _171 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
            t = 0
            u = 0
            v = -1
            while t < _171:
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                _174 = mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = address(_147)
                mem[mem[64] + 68] = address(_150)
                require ext_code.size(address(_174))
                staticcall address(_174).getAmountIn(uint256 arg1, address arg2, address arg3) with:
                        gas gas_remaining wei
                       args s, address(_147), address(_150)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if t == -1:
                        revert with 'NH{q', 17
                    _171 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                    t = t + 1
                    u = u
                    v = v
                    continue 
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_182] == mem[_182]
                if mem[_182] <= 0:
                    if t == -1:
                        revert with 'NH{q', 17
                    _171 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                    t = t + 1
                    u = u
                    v = v
                    continue 
                if mem[_182] >= v:
                    if t == -1:
                        revert with 'NH{q', 17
                    _171 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                    t = t + 1
                    u = u
                    v = v
                    continue 
                if t >= mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]:
                    revert with 'NH{q', 50
                if t == -1:
                    revert with 'NH{q', 17
                _171 = mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98]
                t = t + 1
                u = mem[(32 * t) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 130]
                v = mem[_182]
                continue 
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx - 1) + floor32(('cd', 36).length) + 129] = address(u)
            if not idx:
                revert with 'NH{q', 17
            if v != -1:
                idx = idx - 1
                s = v
                continue 
            idx = idx - 1
            s = 0
            continue 
        if idx - 1 >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        _146 = mem[(32 * idx - 1) + floor32(('cd', 36).length) + 129]
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        _157 = mem[(32 * idx - 1) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _159 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = address(_157)
        mem[mem[64] + 68] = address(_159)
        require ext_code.size(address(_146))
        staticcall address(_146).getAmountIn(uint256 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args s, address(_157), address(_159)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _167 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_167] == mem[_167]
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = mem[_167]
        continue 
    _139 = mem[64]
    mem[mem[64]] = s
    mem[mem[64] + 32] = 96
    _141 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _141:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * _141) + 128
    _176 = mem[floor32(('cd', 36).length) + 97]
    mem[_139 + (32 * _141) + 128] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = _139 + (32 * _141) + 160
    while idx < _176:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _139 + (32 * _141) + (32 * _176) + -mem[64] + 160
}



}
