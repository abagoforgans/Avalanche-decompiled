contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_82ec0b26(?) payable {
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
        require cd[s] <= test266151307()
        require cd[68] + cd[s] + 67 < calldata.size
        if cd[(cd[68] + cd[s] + 36)] > test266151307():
            revert with 'NH{q', 65
        _169 = mem[64]
        if mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + floor32(cd[(cd[68] + cd[s] + 36)]) + 1
        mem[_169] = cd[(cd[68] + cd[s] + 36)]
        require cd[68] + cd[s] + (32 * cd[(cd[68] + cd[s] + 36)]) + 68 <= calldata.size
        u = 0
        v = cd[68] + cd[s] + 68
        w = _169 + 32
        while u < cd[(cd[68] + cd[s] + 36)]:
            require cd[v] == address(cd[v])
            mem[w] = cd[v]
            u = u + 1
            v = v + 32
            w = w + 32
            continue 
        mem[t] = _169
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _160 = mem[floor32(('cd', 4).length) + 97]
    if mem[floor32(('cd', 4).length) + 97] > test266151307():
        revert with 'NH{q', 65
    _161 = mem[64]
    mem[mem[64]] = mem[floor32(('cd', 4).length) + 97]
    mem[64] = mem[64] + (32 * _160) + 32
    if _160:
        mem[_161 + 32 len 32 * _160] = call.data[calldata.size len 32 * _160]
        _212 = mem[96]
        idx = 0
        while idx < _212:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _219 = mem[(32 * idx) + 128]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            _223 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
            if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
                revert with 'NH{q', 50
            _227 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _223
            mem[mem[64] + 36] = 64
            _232 = mem[_227]
            mem[mem[64] + 68] = mem[_227]
            s = 0
            t = _227 + 32
            u = mem[64] + 100
            while s < _232:
                mem[u] = mem[t + 12 len 20]
                _212 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(address(_219))
            staticcall address(_219).getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args _223, 64, mem[mem[64] + 68 len (32 * _232) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _270 = mem[_268]
            require mem[_268] <= test266151307()
            require _268 + mem[_268] + 31 < _268 + return_data.size
            _272 = mem[_268 + mem[_268]]
            if mem[_268 + mem[_268]] > test266151307():
                revert with 'NH{q', 65
            if _268 + ceil32(return_data.size) + floor32(mem[_268 + mem[_268]]) + 1 > test266151307() or floor32(mem[_268 + mem[_268]]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _268 + ceil32(return_data.size) + floor32(mem[_268 + mem[_268]]) + 1
            mem[_268 + ceil32(return_data.size)] = _272
            require _270 + (32 * _272) + 32 <= return_data.size
            s = 0
            t = _268 + _270 + 32
            u = _268 + ceil32(return_data.size) + 32
            while s < _272:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _212 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if _272 < 1:
                revert with 'NH{q', 17
            if _272 - 1 >= _272:
                revert with 'NH{q', 50
            if idx >= mem[_161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _161 + 32] = mem[(32 * _272 - 1) + _268 + ceil32(return_data.size) + 32]
            if idx == -1:
                revert with 'NH{q', 17
            _212 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _230 = mem[_161]
        mem[mem[64] + 32] = mem[_161]
        mem[mem[64] + 64 len 32 * _230] = mem[_161 + 32 len 32 * _230]
        return 32, mem[mem[64] + 32 len (32 * _230) + 32]
    _211 = mem[96]
    idx = 0
    while idx < _211:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _216 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _221 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        _225 = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _221
        mem[mem[64] + 36] = 64
        _231 = mem[_225]
        mem[mem[64] + 68] = mem[_225]
        s = 0
        t = _225 + 32
        u = mem[64] + 100
        while s < _231:
            mem[u] = mem[t + 12 len 20]
            _211 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(_216))
        staticcall address(_216).getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args _221, 64, mem[mem[64] + 68 len (32 * _231) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _267 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _269 = mem[_267]
        require mem[_267] <= test266151307()
        require _267 + mem[_267] + 31 < _267 + return_data.size
        _271 = mem[_267 + mem[_267]]
        if mem[_267 + mem[_267]] > test266151307():
            revert with 'NH{q', 65
        if _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1 > test266151307() or floor32(mem[_267 + mem[_267]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _267 + ceil32(return_data.size) + floor32(mem[_267 + mem[_267]]) + 1
        mem[_267 + ceil32(return_data.size)] = _271
        require _269 + (32 * _271) + 32 <= return_data.size
        s = 0
        t = _267 + _269 + 32
        u = _267 + ceil32(return_data.size) + 32
        while s < _271:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _211 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        if _271 < 1:
            revert with 'NH{q', 17
        if _271 - 1 >= _271:
            revert with 'NH{q', 50
        if idx >= mem[_161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _161 + 32] = mem[(32 * _271 - 1) + _267 + ceil32(return_data.size) + 32]
        if idx == -1:
            revert with 'NH{q', 17
        _211 = mem[96]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _229 = mem[_161]
    mem[mem[64] + 32] = mem[_161]
    mem[mem[64] + 64 len 32 * _229] = mem[_161 + 32 len 32 * _229]
    var96001 = _229
    var96002 = _161 + (32 * _229) + 32
    return 32, mem[mem[64] + 32 len (32 * _229) + 32]
}



}
