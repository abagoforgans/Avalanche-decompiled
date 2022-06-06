contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_490e4182(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        _28 = mem[64]
        mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
        mem[_28] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        mem[_28 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
        mem[_28 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if not cd[164]:
            revert with 0, 18
        if 120 > !block.timestamp:
            revert with 0, 17
        _30 = mem[64]
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64] + 36] = cd[132] / cd[164]
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        s = 0
        t = _28 + 32
        u = mem[64] + 196
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            mem[u] = mem[t + 12 len 20]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_30 + 100] = this.address
        mem[_30 + 132] = block.timestamp + 120
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _30 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _41 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _42 = mem[_41]
        require mem[_41] <= test266151307()
        require _41 + mem[_41] + 31 < _41 + return_data.size
        _43 = mem[_41 + mem[_41]]
        if mem[_41 + mem[_41]] > test266151307():
            revert with 0, 65
        if _41 + ceil32(return_data.size) + ceil32(32 * mem[_41 + mem[_41]]) + 1 > test266151307() or ceil32(32 * mem[_41 + mem[_41]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _41 + ceil32(return_data.size) + ceil32(32 * mem[_41 + mem[_41]]) + 1
        mem[_41 + ceil32(return_data.size)] = _43
        require return_data.size >= _42 + (32 * _43) + 32
        t = _41 + _42 + 32
        u = _41 + ceil32(return_data.size) + 32
        s = 0
        while s < _43:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _25 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_25] <= ext_call.return_data[0]:
        revert with 0, 'non profit'
}

function sub_11575f93(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _24 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_24] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_24 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_24 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + 128]] - 1 >= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _16 = mem[64]
        mem[mem[64]] = 32
        _17 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _17:
            mem[t] = u + -_16 - 64
            _35 = mem[s]
            _36 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _35 + 32
            while v < _36:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _36) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _45 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_45] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_45 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_45 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + 128]] - 1 >= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 50
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _40 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _40:
            mem[t] = u + -_38 - 64
            _52 = mem[s]
            _53 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _52 + 32
            while v < _53:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _53) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_7fe96ab4(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _44 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_44] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_44 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_44 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not idx:
                _50 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _44 + 32
                u = mem[64] + 100
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _50 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _96 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _101 = mem[_96]
                require mem[_96] <= test266151307()
                require _96 + mem[_96] + 31 < _96 + return_data.size
                _105 = mem[_96 + mem[_96]]
                if mem[_96 + mem[_96]] > test266151307():
                    revert with 0, 65
                if _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1 > test266151307() or ceil32(32 * mem[_96 + mem[_96]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _96 + ceil32(return_data.size) + ceil32(32 * mem[_96 + mem[_96]]) + 1
                mem[_96 + ceil32(return_data.size)] = _105
                require return_data.size >= _101 + (32 * _105) + 32
                t = _96 + _101 + 32
                u = _96 + ceil32(return_data.size) + 32
                s = 0
                while s < _105:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _96 + ceil32(return_data.size)
            else:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + 128]] - 1 >= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 50
                _60 = mem[(32 * mem[mem[(32 * idx - 1) + 128]] - 1) + mem[(32 * idx - 1) + 128] + 32]
                _62 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _60
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _44 + 32
                u = mem[64] + 100
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _62 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _95 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _100 = mem[_95]
                require mem[_95] <= test266151307()
                require _95 + mem[_95] + 31 < _95 + return_data.size
                _104 = mem[_95 + mem[_95]]
                if mem[_95 + mem[_95]] > test266151307():
                    revert with 0, 65
                if _95 + ceil32(return_data.size) + ceil32(32 * mem[_95 + mem[_95]]) + 1 > test266151307() or ceil32(32 * mem[_95 + mem[_95]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _95 + ceil32(return_data.size) + ceil32(32 * mem[_95 + mem[_95]]) + 1
                mem[_95 + ceil32(return_data.size)] = _104
                require return_data.size >= _100 + (32 * _104) + 32
                t = _95 + _100 + 32
                u = _95 + ceil32(return_data.size) + 32
                s = 0
                while s < _104:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _95 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _36 = mem[64]
        mem[mem[64]] = 32
        _37 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _37:
            mem[t] = u + -_36 - 64
            _85 = mem[s]
            _86 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _85 + 32
            while v < _86:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _86) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _103 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_103] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_103 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_103 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not idx:
                _112 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _103 + 32
                u = mem[64] + 100
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _112 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _151 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _153 = mem[_151]
                require mem[_151] <= test266151307()
                require _151 + mem[_151] + 31 < _151 + return_data.size
                _155 = mem[_151 + mem[_151]]
                if mem[_151 + mem[_151]] > test266151307():
                    revert with 0, 65
                if _151 + ceil32(return_data.size) + ceil32(32 * mem[_151 + mem[_151]]) + 1 > test266151307() or ceil32(32 * mem[_151 + mem[_151]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _151 + ceil32(return_data.size) + ceil32(32 * mem[_151 + mem[_151]]) + 1
                mem[_151 + ceil32(return_data.size)] = _155
                require return_data.size >= _153 + (32 * _155) + 32
                t = _151 + _153 + 32
                u = _151 + ceil32(return_data.size) + 32
                s = 0
                while s < _155:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _151 + ceil32(return_data.size)
            else:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + 128]] - 1 >= mem[mem[(32 * idx - 1) + 128]]:
                    revert with 0, 50
                _120 = mem[(32 * mem[mem[(32 * idx - 1) + 128]] - 1) + mem[(32 * idx - 1) + 128] + 32]
                _121 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _120
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _103 + 32
                u = mem[64] + 100
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                staticcall address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _121 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _152 = mem[_150]
                require mem[_150] <= test266151307()
                require _150 + mem[_150] + 31 < _150 + return_data.size
                _154 = mem[_150 + mem[_150]]
                if mem[_150 + mem[_150]] > test266151307():
                    revert with 0, 65
                if _150 + ceil32(return_data.size) + ceil32(32 * mem[_150 + mem[_150]]) + 1 > test266151307() or ceil32(32 * mem[_150 + mem[_150]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _150 + ceil32(return_data.size) + ceil32(32 * mem[_150 + mem[_150]]) + 1
                mem[_150 + ceil32(return_data.size)] = _154
                require return_data.size >= _152 + (32 * _154) + 32
                t = _150 + _152 + 32
                u = _150 + ceil32(return_data.size) + 32
                s = 0
                while s < _154:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _150 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 32
        _94 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _94:
            mem[t] = u + -_90 - 64
            _140 = mem[s]
            _141 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _140 + 32
            while v < _141:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _141) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_b81f7a6a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[100] == address(cd[100])
    mem[100] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ('cd', 4).length
    mem[64] = ceil32(return_data.size) + (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _76 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_76] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_76 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_76 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not idx:
                if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    revert with 0, 50
                _95 = mem[_76 + 32]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(address(_95))
                call address(_95).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_101] == bool(mem[_101])
                if not mem[_101]:
                    revert with 0, 'approve failed'
                if 120 > !block.timestamp:
                    revert with 0, 17
                _118 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _76 + 32
                u = mem[64] + 196
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_118 + 100] = this.address
                mem[_118 + 132] = block.timestamp + 120
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _118 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _165 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _168 = mem[_165]
                require mem[_165] <= test266151307()
                require _165 + mem[_165] + 31 < _165 + return_data.size
                _174 = mem[_165 + mem[_165]]
                if mem[_165 + mem[_165]] > test266151307():
                    revert with 0, 65
                if _165 + ceil32(return_data.size) + ceil32(32 * mem[_165 + mem[_165]]) + 1 > test266151307() or ceil32(32 * mem[_165 + mem[_165]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _165 + ceil32(return_data.size) + ceil32(32 * mem[_165 + mem[_165]]) + 1
                mem[_165 + ceil32(return_data.size)] = _174
                require return_data.size >= _168 + (32 * _174) + 32
                t = _165 + _168 + 32
                u = _165 + ceil32(return_data.size) + 32
                s = 0
                while s < _174:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _165 + ceil32(return_data.size)
            else:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] - 1 >= mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]]:
                    revert with 0, 50
                _109 = mem[(32 * mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] - 1) + mem[(32 * idx - 1) + ceil32(return_data.size) + 128] + 32]
                if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    revert with 0, 50
                _113 = mem[_76 + 32]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _109
                require ext_code.size(address(_113))
                call address(_113).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _109
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_117] == bool(mem[_117])
                if not mem[_117]:
                    revert with 0, 'approve failed'
                if 120 > !block.timestamp:
                    revert with 0, 17
                _130 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _109
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _76 + 32
                u = mem[64] + 196
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_130 + 100] = this.address
                mem[_130 + 132] = block.timestamp + 120
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _130 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _164 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _167 = mem[_164]
                require mem[_164] <= test266151307()
                require _164 + mem[_164] + 31 < _164 + return_data.size
                _173 = mem[_164 + mem[_164]]
                if mem[_164 + mem[_164]] > test266151307():
                    revert with 0, 65
                if _164 + ceil32(return_data.size) + ceil32(32 * mem[_164 + mem[_164]]) + 1 > test266151307() or ceil32(32 * mem[_164 + mem[_164]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _164 + ceil32(return_data.size) + ceil32(32 * mem[_164 + mem[_164]]) + 1
                mem[_164 + ceil32(return_data.size)] = _173
                require return_data.size >= _167 + (32 * _173) + 32
                t = _164 + _167 + 32
                u = _164 + ceil32(return_data.size) + 32
                s = 0
                while s < _173:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _164 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_70] <= ext_call.return_data[0]:
            revert with 0, 'non profit'
        _77 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _80) + 64
        while idx < _80:
            mem[t] = u + -_77 - 64
            _153 = mem[s]
            _154 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _153 + 32
            while v < _154:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _154) + 32
            continue 
    else:
        mem[ceil32(return_data.size) + 128] = 96
        s = ceil32(return_data.size) + 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
            require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
            _170 = mem[64]
            mem[64] = mem[64] + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32
            mem[_170] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
            mem[_170 + 32 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]] = call.data[cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 len 32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]]
            mem[_170 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not idx:
                if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    revert with 0, 50
                _187 = mem[_170 + 32]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = cd[68]
                require ext_code.size(address(_187))
                call address(_187).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), cd[68]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_193] == bool(mem[_193])
                if not mem[_193]:
                    revert with 0, 'approve failed'
                if 120 > !block.timestamp:
                    revert with 0, 17
                _204 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68]
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _170 + 32
                u = mem[64] + 196
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_204 + 100] = this.address
                mem[_204 + 132] = block.timestamp + 120
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _204 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _241 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _243 = mem[_241]
                require mem[_241] <= test266151307()
                require _241 + mem[_241] + 31 < _241 + return_data.size
                _245 = mem[_241 + mem[_241]]
                if mem[_241 + mem[_241]] > test266151307():
                    revert with 0, 65
                if _241 + ceil32(return_data.size) + ceil32(32 * mem[_241 + mem[_241]]) + 1 > test266151307() or ceil32(32 * mem[_241 + mem[_241]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _241 + ceil32(return_data.size) + ceil32(32 * mem[_241 + mem[_241]]) + 1
                mem[_241 + ceil32(return_data.size)] = _245
                require return_data.size >= _243 + (32 * _245) + 32
                t = _241 + _243 + 32
                u = _241 + ceil32(return_data.size) + 32
                s = 0
                while s < _245:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _241 + ceil32(return_data.size)
            else:
                if idx < 1:
                    revert with 0, 17
                if idx - 1 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] < 1:
                    revert with 0, 17
                if mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] - 1 >= mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]]:
                    revert with 0, 50
                _196 = mem[(32 * mem[mem[(32 * idx - 1) + ceil32(return_data.size) + 128]] - 1) + mem[(32 * idx - 1) + ceil32(return_data.size) + 128] + 32]
                if 0 >= cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    revert with 0, 50
                _199 = mem[_170 + 32]
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = _196
                require ext_code.size(address(_199))
                call address(_199).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), _196
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _203 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_203] == bool(mem[_203])
                if not mem[_203]:
                    revert with 0, 'approve failed'
                if 120 > !block.timestamp:
                    revert with 0, 17
                _211 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _196
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
                s = 0
                t = _170 + 32
                u = mem[64] + 196
                while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_211 + 100] = this.address
                mem[_211 + 132] = block.timestamp + 120
                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                call address(cd[((32 * idx) + cd[4] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _211 + (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _240 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _242 = mem[_240]
                require mem[_240] <= test266151307()
                require _240 + mem[_240] + 31 < _240 + return_data.size
                _244 = mem[_240 + mem[_240]]
                if mem[_240 + mem[_240]] > test266151307():
                    revert with 0, 65
                if _240 + ceil32(return_data.size) + ceil32(32 * mem[_240 + mem[_240]]) + 1 > test266151307() or ceil32(32 * mem[_240 + mem[_240]]) + 1 < 0:
                    revert with 0, 65
                mem[64] = _240 + ceil32(return_data.size) + ceil32(32 * mem[_240 + mem[_240]]) + 1
                mem[_240 + ceil32(return_data.size)] = _244
                require return_data.size >= _242 + (32 * _244) + 32
                t = _240 + _242 + 32
                u = _240 + ceil32(return_data.size) + 32
                s = 0
                while s < _244:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _240 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_163] <= ext_call.return_data[0]:
            revert with 0, 'non profit'
        _171 = mem[64]
        mem[mem[64]] = 32
        _175 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        u = mem[64] + (32 * _175) + 64
        while idx < _175:
            mem[t] = u + -_171 - 64
            _230 = mem[s]
            _231 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _230 + 32
            while v < _231:
                mem[w] = mem[x]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _231) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
