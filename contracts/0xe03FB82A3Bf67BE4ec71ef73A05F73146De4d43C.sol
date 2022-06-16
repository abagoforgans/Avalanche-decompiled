contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_caf58552(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length < 1:
        revert with 'NH{q', 17
    if ('cd', 100).length - 1 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    idx = 0
    s = msg.value
    while idx < cd[36]:
        _51 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        t = 0
        u = cd[100] + 36
        v = mem[64] + 100
        while t < ('cd', 100).length:
            require cd[u] == address(cd[u])
            mem[v] = address(cd[u])
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _51 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _101 = mem[_100]
        require mem[_100] <= test266151307()
        require _100 + mem[_100] + 31 < _100 + return_data.size
        _102 = mem[_100 + mem[_100]]
        if mem[_100 + mem[_100]] > test266151307():
            revert with 'NH{q', 65
        if _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1 > test266151307() or floor32(mem[_100 + mem[_100]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _100 + ceil32(return_data.size) + floor32(mem[_100 + mem[_100]]) + 1
        mem[_100 + ceil32(return_data.size)] = _102
        require _101 + (32 * _102) + 32 <= return_data.size
        t = 0
        u = _100 + _101 + 32
        v = _100 + ceil32(return_data.size) + 32
        while t < _102:
            require mem[u] == mem[u]
            mem[v] = mem[u]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        if 0 >= _102:
            revert with 'NH{q', 50
        if 0 >= _102:
            revert with 'NH{q', 50
        if mem[_100 + ceil32(return_data.size) + 32] < s:
            _142 = mem[_100 + ceil32(return_data.size) + 32]
            if s < mem[_100 + ceil32(return_data.size) + 32]:
                revert with 'NH{q', 17
            _145 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 100).length
            t = 0
            u = cd[100] + 36
            v = mem[64] + 164
            while t < ('cd', 100).length:
                require cd[u] == address(cd[u])
                mem[v] = address(cd[u])
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_145 + 68] = this.address
            mem[_145 + 100] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).mem[mem[64] len 4] with:
               value s - _142 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _145 + (32 * ('cd', 100).length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _172 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _174 = mem[_172]
            require mem[_172] <= test266151307()
            require _172 + mem[_172] + 31 < _172 + return_data.size
            _176 = mem[_172 + mem[_172]]
            if mem[_172 + mem[_172]] > test266151307():
                revert with 'NH{q', 65
            if _172 + ceil32(return_data.size) + floor32(mem[_172 + mem[_172]]) + 1 > test266151307() or floor32(mem[_172 + mem[_172]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _172 + ceil32(return_data.size) + floor32(mem[_172 + mem[_172]]) + 1
            mem[_172 + ceil32(return_data.size)] = _176
            require _174 + (32 * _176) + 32 <= return_data.size
            t = 0
            u = _172 + _174 + 32
            v = _172 + ceil32(return_data.size) + 32
            while t < _176:
                require mem[u] == mem[u]
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - _142
            continue 
        _143 = mem[_100 + ceil32(return_data.size) + 32]
        _144 = mem[64]
        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + 164
        while idx < ('cd', 100).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_144 + 68] = this.address
        mem[_144 + 100] = block.timestamp
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
           value _143 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _144 + (32 * ('cd', 100).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _175 = mem[_173]
        require mem[_173] <= test266151307()
        require _173 + mem[_173] + 31 < _173 + return_data.size
        _177 = mem[_173 + mem[_173]]
        if mem[_173 + mem[_173]] > test266151307():
            revert with 'NH{q', 65
        if _173 + ceil32(return_data.size) + floor32(mem[_173 + mem[_173]]) + 1 > test266151307() or floor32(mem[_173 + mem[_173]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _173 + ceil32(return_data.size) + floor32(mem[_173 + mem[_173]]) + 1
        mem[_173 + ceil32(return_data.size)] = _177
        require _175 + (32 * _177) + 32 <= return_data.size
        idx = 0
        s = _173 + _175 + 32
        t = _173 + ceil32(return_data.size) + 32
        while idx < _177:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit InsufficientFunds()
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
        staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _201 = mem[_200]
        require mem[_200] == mem[_200]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _201
        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
        call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _201
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_204] == bool(mem[_204])
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    staticcall address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _53 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _54 = mem[_53]
    require mem[_53] == mem[_53]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _54
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _54
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_62] == bool(mem[_62])
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
