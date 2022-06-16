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
    while idx < cd[36]:
        _49 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 100).length
        s = 0
        t = cd[100] + 36
        u = mem[64] + 100
        while s < ('cd', 100).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[68]))
        staticcall address(cd[68]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _49 + (32 * ('cd', 100).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _96 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _97 = mem[_96]
        require mem[_96] <= test266151307()
        require _96 + mem[_96] + 31 < _96 + return_data.size
        _98 = mem[_96 + mem[_96]]
        if mem[_96 + mem[_96]] > test266151307():
            revert with 'NH{q', 65
        if _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1 > test266151307() or floor32(mem[_96 + mem[_96]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _96 + ceil32(return_data.size) + floor32(mem[_96 + mem[_96]]) + 1
        mem[_96 + ceil32(return_data.size)] = _98
        require _97 + (32 * _98) + 32 <= return_data.size
        s = 0
        t = _96 + _97 + 32
        u = _96 + ceil32(return_data.size) + 32
        while s < _98:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if 0 >= _98:
            revert with 'NH{q', 50
        if mem[_96 + ceil32(return_data.size) + 32] < eth.balance(this.address):
            if 0 >= _98:
                revert with 'NH{q', 50
            _136 = mem[_96 + ceil32(return_data.size) + 32]
            _137 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[4]
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 100).length
            s = 0
            t = cd[100] + 36
            u = mem[64] + 164
            while s < ('cd', 100).length:
                require cd[t] == address(cd[t])
                mem[u] = address(cd[t])
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_137 + 68] = this.address
            mem[_137 + 100] = block.timestamp
            require ext_code.size(address(cd[68]))
            call address(cd[68]).mem[mem[64] len 4] with:
               value _136 wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _137 + (32 * ('cd', 100).length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _164 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _166 = mem[_164]
            require mem[_164] <= test266151307()
            require _164 + mem[_164] + 31 < _164 + return_data.size
            _168 = mem[_164 + mem[_164]]
            if mem[_164 + mem[_164]] > test266151307():
                revert with 'NH{q', 65
            if _164 + ceil32(return_data.size) + floor32(mem[_164 + mem[_164]]) + 1 > test266151307() or floor32(mem[_164 + mem[_164]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _164 + ceil32(return_data.size) + floor32(mem[_164 + mem[_164]]) + 1
            mem[_164 + ceil32(return_data.size)] = _168
            require _166 + (32 * _168) + 32 <= return_data.size
            s = 0
            t = _164 + _166 + 32
            u = _164 + ceil32(return_data.size) + 32
            while s < _168:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _135 = mem[64]
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
        mem[_135 + 68] = this.address
        mem[_135 + 100] = block.timestamp
        require ext_code.size(address(cd[68]))
        call address(cd[68]).mem[mem[64] len 4] with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _135 + (32 * ('cd', 100).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _165 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _167 = mem[_165]
        require mem[_165] <= test266151307()
        require _165 + mem[_165] + 31 < _165 + return_data.size
        _169 = mem[_165 + mem[_165]]
        if mem[_165 + mem[_165]] > test266151307():
            revert with 'NH{q', 65
        if _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1 > test266151307() or floor32(mem[_165 + mem[_165]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _165 + ceil32(return_data.size) + floor32(mem[_165 + mem[_165]]) + 1
        mem[_165 + ceil32(return_data.size)] = _169
        require _167 + (32 * _169) + 32 <= return_data.size
        idx = 0
        s = _165 + _167 + 32
        t = _165 + ceil32(return_data.size) + 32
        while idx < _169:
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
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _193 = mem[_192]
        require mem[_192] == mem[_192]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = _193
        require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
        call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _193
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _196 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_196] == bool(mem[_196])
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
    _51 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _52 = mem[_51]
    require mem[_51] == mem[_51]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = _52
    require ext_code.size(address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]))
    call address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, _52
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _60 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_60] == bool(mem[_60])
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
