contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_ccddee3d(?) payable {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_570ab75f(?) payable {
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
        require cd[s] == cd[s]
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
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _53 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _55 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _57 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_55)
        mem[mem[64] + 68] = _57
        require ext_code.size(address(_53))
        call address(_53).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_55), _57
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_60] == bool(mem[_60])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_187f0a34(?) payable {
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
        require cd[s] == cd[s]
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _45 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _47 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _49 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 103] = msg.sender
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 135] = address(_47)
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 167] = _49
        require ext_code.size(address(_45))
        call address(_45).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_47), _49
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_0910ab3b(?) payable {
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
        require cd[s] == cd[s]
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                 gas 2300 * is_zero(value) wei
        else:
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            _80 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _84 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _89 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 103] = msg.sender
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 135] = address(_84)
            mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 167] = _89
            require ext_code.size(address(_80))
            call address(_80).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_84), _89
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a4ee4af6(?) payable {
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
        require cd[s] == cd[s]
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
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99
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
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if not mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 142 len 20]:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            _88 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _92 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _97 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_92)
            mem[mem[64] + 68] = _97
            require ext_code.size(address(_88))
            call address(_88).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_92), _97
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_100] == bool(mem[_100])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_e0924536(?) payable {
    require calldata.size - 4 >= 128
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
        require cd[s] == cd[s]
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
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100 > test266151307() or floor32(('cd', 100).length) + 100 < 99:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131
    while idx < ('cd', 100).length:
        require cd[s] <= test266151307()
        require cd[100] + cd[s] + 67 < calldata.size
        if cd[(cd[100] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _304 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[100] + cd[s] + 36)])) + 1
        mem[_304] = cd[(cd[100] + cd[s] + 36)]
        require cd[100] + cd[s] + cd[(cd[100] + cd[s] + 36)] + 68 <= calldata.size
        mem[_304 + 32 len cd[(cd[100] + cd[s] + 36)]] = call.data[cd[100] + cd[s] + 68 len cd[(cd[100] + cd[s] + 36)]]
        mem[_304 + cd[(cd[100] + cd[s] + 36)] + 32] = 0
        mem[t] = _304
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _303 = mem[64]
    mem[mem[64] + 32] = 'native'
    _305 = mem[64]
    mem[mem[64]] = 6
    mem[64] = mem[64] + 38
    _307 = sha3(mem[_305 + 32 len mem[_305]])
    mem[_303 + 70] = 'erc20'
    mem[_303 + 38] = 5
    mem[64] = _303 + 75
    mem[_303 + 107] = 'erc721'
    mem[_303 + 75] = 6
    mem[64] = _303 + 113
    _376 = mem[96]
    idx = 0
    while idx < _376:
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
            revert with 'NH{q', 50
        _378 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
        _379 = mem[64]
        _380 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]]
        s = 0
        while s < _380:
            mem[_379 + s + 32] = mem[_378 + s + 32]
            _376 = mem[96]
            s = s + 32
            continue 
        if ceil32(_380) <= _380:
            _437 = mem[64]
            mem[mem[64]] = _379 + _380 - mem[64]
            mem[64] = _379 + _380 + 32
            if sha3(mem[_437 + 32 len mem[_437]]) == _307:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sha3(mem[_437 + 32 len mem[_437]]) != sha3('erc20'):
                    if sha3(mem[_437 + 32 len mem[_437]]) == sha3('erc721'):
                        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _457 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _467 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _475 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_379 + _380 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[_379 + _380 + 36] = msg.sender
                        mem[_379 + _380 + 68] = address(_467)
                        mem[_379 + _380 + 100] = _475
                        require ext_code.size(address(_457))
                        call address(_457).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_467), _475
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _449 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _459 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _469 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_379 + _380 + 36] = msg.sender
                    mem[_379 + _380 + 68] = address(_459)
                    mem[_379 + _380 + 100] = _469
                    require ext_code.size(address(_449))
                    call address(_449).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_459), _469
                    mem[_379 + _380 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _379 + _380 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[_379 + _380 + 32] = 0
            _441 = mem[64]
            mem[mem[64]] = _379 + _380 - mem[64]
            mem[64] = _379 + _380 + 32
            if sha3(mem[_441 + 32 len mem[_441]]) == _307:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * idx) + floor32(('cd', 4).length) + 129] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sha3(mem[_441 + 32 len mem[_441]]) != sha3('erc20'):
                    if sha3(mem[_441 + 32 len mem[_441]]) == sha3('erc721'):
                        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                            revert with 'NH{q', 50
                        _471 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _477 = mem[(32 * idx) + 128]
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        _481 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                        mem[_379 + _380 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[_379 + _380 + 36] = msg.sender
                        mem[_379 + _380 + 68] = address(_477)
                        mem[_379 + _380 + 100] = _481
                        require ext_code.size(address(_471))
                        call address(_471).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(_477), _481
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                        revert with 'NH{q', 50
                    _462 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _473 = mem[(32 * idx) + 128]
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    _479 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
                    mem[_379 + _380 + 36] = msg.sender
                    mem[_379 + _380 + 68] = address(_473)
                    mem[_379 + _380 + 100] = _479
                    require ext_code.size(address(_462))
                    call address(_462).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_473), _479
                    mem[_379 + _380 + 32] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _379 + _380 + ceil32(return_data.size) + 32
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if idx == -1:
            revert with 'NH{q', 17
        _376 = mem[96]
        idx = idx + 1
        continue 
}



}
