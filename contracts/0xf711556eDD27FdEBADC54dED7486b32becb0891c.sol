contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_bf081e60(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
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
    if address(cd[4]) == address(cd[36]):
        return 1
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(('cd', 68).length) + 97] = 2
    mem[floor32(('cd', 68).length) + 129] = address(cd[4])
    mem[floor32(('cd', 68).length) + 161] = address(cd[36])
    mem[floor32(('cd', 68).length) + 193] = 2
    mem[64] = floor32(('cd', 68).length) + 289
    mem[floor32(('cd', 68).length) + 225] = address(cd[36])
    mem[floor32(('cd', 68).length) + 257] = address(cd[4])
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _100 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = msg.value
        require ext_code.size(address(cd[4]))
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], msg.value
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _107 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_107] == bool(mem[_107])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.value
        mem[mem[64] + 36] = 64
        _110 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 68] = mem[floor32(('cd', 68).length) + 97]
        s = 0
        t = floor32(('cd', 68).length) + 129
        u = mem[64] + 100
        while s < _110:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_100))
        staticcall address(_100).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args msg.value, 64, mem[mem[64] + 68 len (32 * _110) + 32]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _148 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _149 = mem[_148]
        require mem[_148] <= test266151307()
        require _148 + mem[_148] + 31 < _148 + return_data.size
        _150 = mem[_148 + mem[_148]]
        if mem[_148 + mem[_148]] > test266151307():
            revert with 'NH{q', 65
        if _148 + ceil32(return_data.size) + floor32(mem[_148 + mem[_148]]) + 1 > test266151307() or floor32(mem[_148 + mem[_148]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _148 + ceil32(return_data.size) + floor32(mem[_148 + mem[_148]]) + 1
        mem[_148 + ceil32(return_data.size)] = _150
        require _149 + (32 * _150) + 32 <= return_data.size
        s = 0
        t = _148 + _149 + 32
        u = _148 + ceil32(return_data.size) + 32
        while s < _150:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if 1 >= _150:
            revert with 'NH{q', 50
        _190 = mem[_148 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.value
        mem[mem[64] + 36] = _190
        mem[mem[64] + 68] = 160
        _192 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 164] = mem[floor32(('cd', 68).length) + 97]
        s = 0
        t = floor32(('cd', 68).length) + 129
        u = mem[64] + 196
        while s < _192:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(_100))
        call address(_100).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.value, _190, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _192) + 32]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _231 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _232 = mem[_231]
        require mem[_231] <= test266151307()
        require _231 + mem[_231] + 31 < _231 + return_data.size
        _233 = mem[_231 + mem[_231]]
        if mem[_231 + mem[_231]] > test266151307():
            revert with 'NH{q', 65
        if _231 + ceil32(return_data.size) + floor32(mem[_231 + mem[_231]]) + 1 > test266151307() or floor32(mem[_231 + mem[_231]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _231 + ceil32(return_data.size) + floor32(mem[_231 + mem[_231]]) + 1
        mem[_231 + ceil32(return_data.size)] = _233
        require _232 + (32 * _233) + 32 <= return_data.size
        s = 0
        t = _231 + _232 + 32
        u = _231 + ceil32(return_data.size) + 32
        while s < _233:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _271 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _272 = mem[_271]
        require mem[_271] == mem[_271]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 36] = _272
        require ext_code.size(address(cd[36]))
        call address(cd[36]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _272
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _277 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_277] == bool(mem[_277])
        _279 = mem[64]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _272
        mem[mem[64] + 36] = 64
        _280 = mem[floor32(('cd', 68).length) + 193]
        mem[mem[64] + 68] = mem[floor32(('cd', 68).length) + 193]
        s = 0
        t = floor32(('cd', 68).length) + 225
        u = mem[64] + 100
        while s < _280:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_100))
        staticcall address(_100).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _279 + (32 * _280) + -mem[64] + 96]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _303 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _304 = mem[_303]
        require mem[_303] <= test266151307()
        require _303 + mem[_303] + 31 < _303 + return_data.size
        _305 = mem[_303 + mem[_303]]
        if mem[_303 + mem[_303]] > test266151307():
            revert with 'NH{q', 65
        if _303 + ceil32(return_data.size) + floor32(mem[_303 + mem[_303]]) + 1 > test266151307() or floor32(mem[_303 + mem[_303]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _303 + ceil32(return_data.size) + floor32(mem[_303 + mem[_303]]) + 1
        mem[_303 + ceil32(return_data.size)] = _305
        require _304 + (32 * _305) + 32 <= return_data.size
        s = 0
        t = _303 + _304 + 32
        u = _303 + ceil32(return_data.size) + 32
        while s < _305:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if 1 >= _305:
            revert with 'NH{q', 50
        _323 = mem[_303 + ceil32(return_data.size) + 64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _272
        mem[mem[64] + 36] = _323
        mem[mem[64] + 68] = 160
        _325 = mem[floor32(('cd', 68).length) + 193]
        mem[mem[64] + 164] = mem[floor32(('cd', 68).length) + 193]
        s = 0
        t = floor32(('cd', 68).length) + 225
        u = mem[64] + 196
        while s < _325:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[mem[64] + 100] = this.address
        mem[mem[64] + 132] = block.timestamp
        require ext_code.size(address(_100))
        call address(_100).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _272, _323, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _325) + 32]
        if not ext_call.success:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _337 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _338 = mem[_337]
        require mem[_337] <= test266151307()
        require _337 + mem[_337] + 31 < _337 + return_data.size
        _339 = mem[_337 + mem[_337]]
        if mem[_337 + mem[_337]] > test266151307():
            revert with 'NH{q', 65
        if _337 + ceil32(return_data.size) + floor32(mem[_337 + mem[_337]]) + 1 > test266151307() or floor32(mem[_337 + mem[_337]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _337 + ceil32(return_data.size) + floor32(mem[_337 + mem[_337]]) + 1
        mem[_337 + ceil32(return_data.size)] = _339
        require _338 + (32 * _339) + 32 <= return_data.size
        idx = 0
        s = _337 + _338 + 32
        t = _337 + ceil32(return_data.size) + 32
        while idx < _339:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return 1
    return 0
}



}
