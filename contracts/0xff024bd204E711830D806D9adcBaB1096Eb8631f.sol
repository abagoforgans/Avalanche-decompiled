contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_89f97669(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == bool(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if ('cd', 132).length < 1:
        revert with 'NH{q', 17
    if ('cd', 132).length - 1 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
    idx = 0
    while idx < cd[36]:
        _53 = mem[64]
        mem[mem[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = ('cd', 132).length
        s = 0
        t = cd[132] + 36
        u = mem[64] + 100
        while s < ('cd', 132).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _53 + (32 * ('cd', 132).length) + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _106 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _107 = mem[_106]
        require mem[_106] <= test266151307()
        require _106 + mem[_106] + 31 < _106 + return_data.size
        _108 = mem[_106 + mem[_106]]
        if mem[_106 + mem[_106]] > test266151307():
            revert with 'NH{q', 65
        if _106 + ceil32(return_data.size) + floor32(mem[_106 + mem[_106]]) + 1 > test266151307() or floor32(mem[_106 + mem[_106]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _106 + ceil32(return_data.size) + floor32(mem[_106 + mem[_106]]) + 1
        mem[_106 + ceil32(return_data.size)] = _108
        require _107 + (32 * _108) + 32 <= return_data.size
        s = 0
        t = _106 + _107 + 32
        u = _106 + ceil32(return_data.size) + 32
        while s < _108:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if 0 >= _108:
            revert with 'NH{q', 50
        if mem[_106 + ceil32(return_data.size) + 32] >= eth.balance(this.address):
            _151 = mem[64]
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = ('cd', 132).length
            idx = 0
            s = cd[132] + 36
            t = mem[64] + 164
            while idx < ('cd', 132).length:
                require cd[s] == address(cd[s])
                mem[t] = address(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_151 + 68] = this.address
            mem[_151 + 100] = block.timestamp
            require ext_code.size(address(cd[100]))
            call address(cd[100]).mem[mem[64] len 4] with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _151 + (32 * ('cd', 132).length) + -mem[64] + 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _187 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _189 = mem[_187]
            require mem[_187] <= test266151307()
            require _187 + mem[_187] + 31 < _187 + return_data.size
            _191 = mem[_187 + mem[_187]]
            if mem[_187 + mem[_187]] > test266151307():
                revert with 'NH{q', 65
            if _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1 > test266151307() or floor32(mem[_187 + mem[_187]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _187 + ceil32(return_data.size) + floor32(mem[_187 + mem[_187]]) + 1
            mem[_187 + ceil32(return_data.size)] = _191
            require _189 + (32 * _191) + 32 <= return_data.size
            idx = 0
            s = _187 + _189 + 32
            t = _187 + ceil32(return_data.size) + 32
            while idx < _191:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _221 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _223 = mem[_221]
            require mem[_221] == mem[_221]
            mem[mem[64] + 4] = tx.origin
            mem[mem[64] + 36] = _223
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args tx.origin, _223
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_229] == bool(mem[_229])
            call tx.origin with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 0 >= _108:
            revert with 'NH{q', 50
        _152 = mem[_106 + ceil32(return_data.size) + 32]
        _153 = mem[64]
        mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[4]
        mem[mem[64] + 36] = 128
        mem[mem[64] + 132] = ('cd', 132).length
        s = 0
        t = cd[132] + 36
        u = mem[64] + 164
        while s < ('cd', 132).length:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_153 + 68] = this.address
        mem[_153 + 100] = block.timestamp
        require ext_code.size(address(cd[100]))
        call address(cd[100]).mem[mem[64] len 4] with:
           value _152 wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len _153 + (32 * ('cd', 132).length) + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _188 = mem[_186]
        require mem[_186] <= test266151307()
        require _186 + mem[_186] + 31 < _186 + return_data.size
        _190 = mem[_186 + mem[_186]]
        if mem[_186 + mem[_186]] > test266151307():
            revert with 'NH{q', 65
        if _186 + ceil32(return_data.size) + floor32(mem[_186 + mem[_186]]) + 1 > test266151307() or floor32(mem[_186 + mem[_186]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _186 + ceil32(return_data.size) + floor32(mem[_186 + mem[_186]]) + 1
        mem[_186 + ceil32(return_data.size)] = _190
        require _188 + (32 * _190) + 32 <= return_data.size
        s = 0
        t = _186 + _188 + 32
        u = _186 + ceil32(return_data.size) + 32
        while s < _190:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if cd[68]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _222 = mem[_220]
            require mem[_220] == mem[_220]
            mem[mem[64] + 4] = tx.origin
            mem[mem[64] + 36] = _222
            require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
            call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args tx.origin, _222
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _228 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_228] == bool(mem[_228])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _55 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _56 = mem[_55]
    require mem[_55] == mem[_55]
    mem[mem[64] + 4] = tx.origin
    mem[mem[64] + 36] = _56
    require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
    call address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args tx.origin, _56
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _64 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_64] == bool(mem[_64])
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
