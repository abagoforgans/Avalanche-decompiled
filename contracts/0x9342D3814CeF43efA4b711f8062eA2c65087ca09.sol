contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4522dc9f(?) payable {
    require calldata.size - 4 >= 96
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] == address(cd[68])
    if ('cd', 36).length < 1:
        revert with 0, 'Token id length'
    if not address(cd[4]):
        revert with 0, 'Token address'
    mem[floor32(('cd', 36).length) + 101] = msg.sender
    mem[floor32(('cd', 36).length) + 133] = this.address
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0xe985e9c5 with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Token not approved'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _41 = mem[(32 * idx) + 128]
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 133] = address(cd[68])
        mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 165] = _41
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[68]), _41
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 1
}

function sub_83b2d5c3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
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
    if cd[36] <= 0:
        revert with 0, 'Value error'
    if ('cd', 68).length < 1:
        revert with 0, 'Address error'
    if cd[36] and ('cd', 68).length > -1 / cd[36]:
        revert with 'NH{q', 17
    if not address(cd[4]):
        if cd[36] * ('cd', 68).length != msg.value:
            revert with 0, 'ETH transfer value not enough'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            call mem[(32 * idx) + 140 len 20] with:
               value cd[36] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[floor32(('cd', 68).length) + 101] = msg.sender
        mem[floor32(('cd', 68).length) + 133] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[floor32(('cd', 68).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[36] * ('cd', 68).length:
            revert with 0, 'Token allowance not enough'
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 101] = msg.sender
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(('cd', 68).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < cd[36] * ('cd', 68).length:
            revert with 0, 'Token balance not enough'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _82 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_82)
            mem[mem[64] + 68] = cd[36]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_82), cd[36]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _92 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_92] == bool(mem[_92])
            if not mem[_92]:
                revert with 0, 'Transfer token failed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 1
}

function sub_0ac74e24(?) payable {
    require calldata.size - 4 >= 96
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
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'length'
    if ('cd', 68).length < 1:
        revert with 0, 'length'
    idx = 0
    s = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + 128] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 128]
        continue 
    if not address(cd[4]):
        if s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length != msg.value:
            revert with 0, 'ETH transfer value not enough'
        s = 0
        while ('cd', 68).length < ('cd', 68).length:
            if ('cd', 68).length >= ('cd', 68).length:
                revert with 'NH{q', 50
            if ('cd', 68).length >= ('cd', 36).length:
                revert with 'NH{q', 50
            call mem[(32 * ('cd', 68).length) + floor32(('cd', 36).length) + 141 len 20] with:
               value mem[(32 * ('cd', 68).length) + 128] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 68).length == -1:
                revert with 'NH{q', 17
            s = ('cd', 68).length + 1
            continue 
    else:
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 102] = msg.sender
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 134] = this.address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length:
            revert with 0, 'Token allowance not enough'
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 102] = msg.sender
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[floor32(('cd', 36).length) + floor32(('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = floor32(('cd', 36).length) + floor32(('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length:
            revert with 0, 'Token balance not enough'
        idx = 0
        while idx < ('cd', 68).length:
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            _185 = mem[(32 * idx) + floor32(('cd', 36).length) + 129]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _190 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_185)
            mem[mem[64] + 68] = _190
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_185), _190
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_199] == bool(mem[_199])
            if not mem[_199]:
                revert with 0, 'Transfer token failed'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 1
}



}
