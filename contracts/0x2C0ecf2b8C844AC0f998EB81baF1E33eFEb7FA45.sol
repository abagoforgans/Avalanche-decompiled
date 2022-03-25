contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_d9cf5cfc(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if (32 * ('cd', 4).length) + 128 > test266151307() or (32 * ('cd', 4).length) + 128 < 96:
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
    if (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307() or (32 * ('cd', 36).length) + 160 < 128:
        revert with 'NH{q', 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        if cd[(cd[36] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _142 = mem[64]
        if mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 > test266151307() or mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_142] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + (32 * cd[(cd[36] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[36] + cd[s] + 68
        w = _142 + 32
        while u < cd[(cd[36] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _142
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _202 = mem[96]
    idx = 0
    s = msg.value
    while idx < _202:
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
            revert with 'NH{q', 50
        if mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 44 len 20] != stor0:
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
                revert with 'NH{q', 50
            _214 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 36] = s
            require ext_code.size(address(_214))
            call address(_214).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_230] == bool(mem[_230])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _236 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 'NH{q', 50
            _238 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if block.timestamp > -11:
                revert with 'NH{q', 17
            _243 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _245 = mem[_238]
            mem[mem[64] + 164] = mem[_238]
            s = 0
            t = _238 + 32
            u = mem[64] + 196
            while s < _245:
                mem[u] = mem[t + 12 len 20]
                _202 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_243 + 100] = this.address
            mem[_243 + 132] = block.timestamp + 10
            require ext_code.size(address(_236))
            call address(_236).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _243 + (32 * _245) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _271 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _273 = mem[_271]
            require mem[_271] <= test266151307()
            require _271 + mem[_271] + 31 < _271 + return_data.size
            _275 = mem[_271 + mem[_271]]
            if mem[_271 + mem[_271]] > test266151307():
                revert with 'NH{q', 65
            if _271 + ceil32(return_data.size) + (32 * mem[_271 + mem[_271]]) + 32 > test266151307() or (32 * mem[_271 + mem[_271]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _271 + ceil32(return_data.size) + (32 * mem[_271 + mem[_271]]) + 32
            mem[_271 + ceil32(return_data.size)] = _275
            require _273 + (32 * _275) + 32 <= return_data.size
            s = 0
            t = _271 + _273 + 32
            u = _271 + ceil32(return_data.size) + 32
            while s < _275:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _202 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _275 < 1:
                revert with 'NH{q', 17
            if _275 - 1 >= _275:
                revert with 'NH{q', 50
            if idx == -1:
                revert with 'NH{q', 17
            _202 = mem[96]
            idx = idx + 1
            s = mem[(32 * _275 - 1) + _271 + ceil32(return_data.size) + 32]
            continue 
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.deposit() with:
           value s wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        if 0 >= mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160]]:
            revert with 'NH{q', 50
        _222 = mem[mem[(32 * idx) + (32 * ('cd', 4).length) + 160] + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = s
        require ext_code.size(address(_222))
        call address(_222).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_233] == bool(mem[_233])
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _240 = mem[(32 * idx) + 128]
        if idx >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 'NH{q', 50
        _242 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
        if block.timestamp > -11:
            revert with 'NH{q', 17
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _246 = mem[_242]
        mem[mem[64] + 164] = mem[_242]
        t = 0
        u = _242 + 32
        v = mem[64] + 196
        while t < _246:
            mem[v] = mem[u + 12 len 20]
            _202 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp + 10
        require ext_code.size(address(_240))
        call address(_240).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 0, 160, address(this.address), block.timestamp + 10, mem[mem[64] + 164 len (32 * _246) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _272 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _274 = mem[_272]
        require mem[_272] <= test266151307()
        require _272 + mem[_272] + 31 < _272 + return_data.size
        _276 = mem[_272 + mem[_272]]
        if mem[_272 + mem[_272]] > test266151307():
            revert with 'NH{q', 65
        if _272 + ceil32(return_data.size) + (32 * mem[_272 + mem[_272]]) + 32 > test266151307() or (32 * mem[_272 + mem[_272]]) + 32 < 0:
            revert with 'NH{q', 65
        mem[64] = _272 + ceil32(return_data.size) + (32 * mem[_272 + mem[_272]]) + 32
        mem[_272 + ceil32(return_data.size)] = _276
        require _274 + (32 * _276) + 32 <= return_data.size
        s = 0
        t = _272 + _274 + 32
        u = _272 + ceil32(return_data.size) + 32
        while s < _276:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _202 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _276 < 1:
            revert with 'NH{q', 17
        if _276 - 1 >= _276:
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        _202 = mem[96]
        idx = idx + 1
        s = mem[(32 * _276 - 1) + _272 + ceil32(return_data.size) + 32]
        continue 
    if s <= msg.value:
        revert with 0, 'Swap not profitable'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s
    require ext_code.size(stor0)
    call stor0.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _227 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_227] == bool(mem[_227])
}



}
