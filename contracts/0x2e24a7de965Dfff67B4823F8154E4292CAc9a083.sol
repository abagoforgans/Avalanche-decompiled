contract main {




// =====================  Runtime code  =====================


#
#  - sub_7af82713(?)
#  - sub_dea56635(?)
#
address stor0;
uint256 version;

function version() {
    return version
}

function _fallback() payable {
    revert
}

function emptyBalance() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multiCallWithoutRevert(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length and 2 > -1 / arg2.length:
        revert with 'NH{q', 17
    if 2 * arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * arg2.length
    mem[64] = (64 * arg2.length) + 128
    if not uint255(arg2.length):
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _43 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _43 + -mem[64] - 4]
            if not return_data.size:
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _55 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _55
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_49] = return_data.size
                mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _58 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _58
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _49
            if idx == -1:
                revert with 'NH{q', 17
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
            _70 = mem[s]
            _72 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _72:
                mem[v + u + 32] = mem[v + _70 + 32]
                v = v + 32
                continue 
            if ceil32(_72) > _72:
                mem[_72 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_72) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = 2 * arg2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _79 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _79 + -mem[64] - 4]
            if not return_data.size:
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _84 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _84
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_82] = return_data.size
                mem[_82 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _87 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _87
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _82
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _73 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _74:
            mem[t] = u + -_73 - 64
            _92 = mem[s]
            _94 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _94:
                mem[v + u + 32] = mem[v + _92 + 32]
                v = v + 32
                continue 
            if ceil32(_94) > _94:
                mem[_94 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_94) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function multiSendWithRevert(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        revert with 'NH{q', 18
    mem[128] = 96
    s = 128
    idx = arg2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if not arg2.length:
        revert with 'NH{q', 18
    idx = 0
    while idx < arg2.length:
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call arg1 with:
           value msg.value / arg2.length wei
             gas gas_remaining wei
            args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        if not return_data.size:
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = 96
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require mem[96] >= 68
            _101 = mem[100]
            require mem[100] >= 32
            _103 = mem[132]
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _105 = mem[mem[132] + 132]
            if mem[mem[132] + 132] > test266151307():
                revert with 'NH{q', 65
            _107 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
            mem[_107] = mem[mem[132] + 132]
            require _103 + _105 + 164 <= _101 + 132
            idx = 0
            while idx < _105:
                mem[idx + _107 + 32] = mem[idx + _103 + 164]
                idx = idx + 32
                continue 
            if ceil32(_105) <= _105:
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _141 = mem[_107]
                mem[mem[64] + 36] = mem[_107]
                idx = 0
                while idx < _141:
                    mem[idx + _136 + 68] = mem[idx + _107 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_141) > _141:
                    mem[_141 + _136 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_141) + _136 + -mem[64] + 68
            mem[_105 + _107 + 32] = 0
            _137 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _142 = mem[_107]
            mem[mem[64] + 36] = mem[_107]
            idx = 0
            while idx < _142:
                mem[idx + _137 + 68] = mem[idx + _107 + 32]
                idx = idx + 32
                continue 
            if ceil32(_142) > _142:
                mem[_142 + _137 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_142) + _137 + -mem[64] + 68
        _96 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_96] = return_data.size
        mem[_96 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require return_data.size >= 68
        _102 = Mask(224, 0, return_data.size), mem[_96 + 32 len 4]
        require Mask(224, 0, return_data.size), mem[_96 + 32 len 4] >= 32
        _104 = mem[_96 + 36]
        require mem[_96 + 36] <= test266151307()
        require _96 + mem[_96 + 36] + 67 < _96 + Mask(224, 0, return_data.size), mem[_96 + 32 len 4] + 36
        _106 = mem[_96 + mem[_96 + 36] + 36]
        if mem[_96 + mem[_96 + 36] + 36] > test266151307():
            revert with 'NH{q', 65
        _108 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1
        mem[_108] = _106
        require _104 + _106 + 68 <= _102 + 36
        idx = 0
        while idx < _106:
            mem[idx + _108 + 32] = mem[idx + _96 + _104 + 68]
            idx = idx + 32
            continue 
        if ceil32(_106) <= _106:
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _106
            idx = 0
            while idx < _106:
                mem[idx + _138 + 68] = mem[idx + _108 + 32]
                idx = idx + 32
                continue 
            if ceil32(_106) > _106:
                mem[_106 + _138 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_106) + _138 + -mem[64] + 68
        mem[_106 + _108 + 32] = 0
        _139 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _106
        idx = 0
        while idx < _106:
            mem[idx + _139 + 68] = mem[idx + _108 + 32]
            idx = idx + 32
            continue 
        if ceil32(_106) > _106:
            mem[_106 + _139 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_106) + _139 + -mem[64] + 68
    _88 = mem[64]
    mem[mem[64]] = 32
    _89 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    u = mem[64] + (32 * mem[96]) + 64
    while idx < _89:
        mem[t] = u + -_88 - 64
        _131 = mem[s]
        _135 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _135:
            mem[v + u + 32] = mem[v + _131 + 32]
            v = v + 32
            continue 
        if ceil32(_135) > _135:
            mem[_135 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_135) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function multiSendWithoutRevert(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length and 2 > -1 / arg2.length:
        revert with 'NH{q', 17
    if 2 * arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = 2 * arg2.length
    mem[64] = (64 * arg2.length) + 128
    if not uint255(arg2.length):
        if not arg2.length:
            revert with 'NH{q', 18
        idx = 0
        s = msg.value
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _74 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
               value msg.value / arg2.length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _74 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _93 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _93
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _106 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _106
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_80] = return_data.size
                mem[_80 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _96 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _96
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = _80
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _110 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _110
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _80
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - (msg.value / arg2.length)
            continue 
        if not s:
            _67 = mem[64]
            mem[mem[64]] = 32
            _68 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _68:
                mem[t] = u + -_67 - 64
                _130 = mem[s]
                _133 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _133:
                    mem[v + u + 32] = mem[v + _130 + 32]
                    v = v + 32
                    continue 
                if ceil32(_133) > _133:
                    mem[_133 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_133) + u + 32
                continue 
        else:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[mem[64]] = 32
            _71 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _71:
                mem[t] = u + -_69 - 64
                _131 = mem[s]
                _135 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _135:
                    mem[v + u + 32] = mem[v + _131 + 32]
                    v = v + 32
                    continue 
                if ceil32(_135) > _135:
                    mem[_135 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_135) + u + 32
                continue 
    else:
        mem[128] = 96
        s = 128
        idx = 2 * arg2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if not arg2.length:
            revert with 'NH{q', 18
        idx = 0
        s = msg.value
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _146 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
               value msg.value / arg2.length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _146 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _155 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _155
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _162 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _162
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_152] = return_data.size
                mem[_152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _158 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _158
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = _152
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _166 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _166
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _152
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - (msg.value / arg2.length)
            continue 
        if not s:
            _137 = mem[64]
            mem[mem[64]] = 32
            _138 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _138:
                mem[t] = u + -_137 - 64
                _172 = mem[s]
                _175 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _175:
                    mem[v + u + 32] = mem[v + _172 + 32]
                    v = v + 32
                    continue 
                if ceil32(_175) > _175:
                    mem[_175 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_175) + u + 32
                continue 
        else:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[mem[64]] = 32
            _143 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            u = mem[64] + (32 * mem[96]) + 64
            while idx < _143:
                mem[t] = u + -_141 - 64
                _173 = mem[s]
                _177 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _177:
                    mem[v + u + 32] = mem[v + _173 + 32]
                    v = v + 32
                    continue 
                if ceil32(_177) > _177:
                    mem[_177 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_177) + u + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function multiCallWithRevert(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            _95 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _95 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _109 = mem[100]
                require mem[100] >= 32
                _112 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _120 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _122 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_122] = mem[mem[132] + 132]
                require _112 + _120 + 164 <= _109 + 132
                idx = 0
                while idx < _120:
                    mem[idx + _122 + 32] = mem[idx + _112 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_120) <= _120:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _187 = mem[_122]
                    mem[mem[64] + 36] = mem[_122]
                    idx = 0
                    while idx < _187:
                        mem[idx + _181 + 68] = mem[idx + _122 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_187) > _187:
                        mem[_187 + _181 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_187) + _181 + -mem[64] + 68
                mem[_120 + _122 + 32] = 0
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _188 = mem[_122]
                mem[mem[64] + 36] = mem[_122]
                idx = 0
                while idx < _188:
                    mem[idx + _182 + 68] = mem[idx + _122 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_188) > _188:
                    mem[_188 + _182 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_188) + _182 + -mem[64] + 68
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_101] = return_data.size
            mem[_101 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _101
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _110 = Mask(224, 0, return_data.size), mem[_101 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_101 + 32 len 4] >= 32
            _113 = mem[_101 + 36]
            require mem[_101 + 36] <= test266151307()
            require _101 + mem[_101 + 36] + 67 < _101 + Mask(224, 0, return_data.size), mem[_101 + 32 len 4] + 36
            _121 = mem[_101 + mem[_101 + 36] + 36]
            if mem[_101 + mem[_101 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _123 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1
            mem[_123] = _121
            require _113 + _121 + 68 <= _110 + 36
            idx = 0
            while idx < _121:
                mem[idx + _123 + 32] = mem[idx + _101 + _113 + 68]
                idx = idx + 32
                continue 
            if ceil32(_121) <= _121:
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _121
                idx = 0
                while idx < _121:
                    mem[idx + _183 + 68] = mem[idx + _123 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_121) > _121:
                    mem[_121 + _183 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_121) + _183 + -mem[64] + 68
            mem[_121 + _123 + 32] = 0
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _121
            idx = 0
            while idx < _121:
                mem[idx + _184 + 68] = mem[idx + _123 + 32]
                idx = idx + 32
                continue 
            if ceil32(_121) > _121:
                mem[_121 + _184 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_121) + _184 + -mem[64] + 68
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _89:
            mem[t] = u + -_88 - 64
            _174 = mem[s]
            _178 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _178:
                mem[v + u + 32] = mem[v + _174 + 32]
                v = v + 32
                continue 
            if ceil32(_178) > _178:
                mem[_178 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_178) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1 with:
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _213 = mem[100]
                require mem[100] >= 32
                _215 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _217 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _219 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_219] = mem[mem[132] + 132]
                require _215 + _217 + 164 <= _213 + 132
                idx = 0
                while idx < _217:
                    mem[idx + _219 + 32] = mem[idx + _215 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_217) <= _217:
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _266 = mem[_219]
                    mem[mem[64] + 36] = mem[_219]
                    idx = 0
                    while idx < _266:
                        mem[idx + _253 + 68] = mem[idx + _219 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_266) > _266:
                        mem[_266 + _253 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_266) + _253 + -mem[64] + 68
                mem[_217 + _219 + 32] = 0
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _267 = mem[_219]
                mem[mem[64] + 36] = mem[_219]
                idx = 0
                while idx < _267:
                    mem[idx + _254 + 68] = mem[idx + _219 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_267) > _267:
                    mem[_267 + _254 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_267) + _254 + -mem[64] + 68
            _200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_200] = return_data.size
            mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _200
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _214 = Mask(224, 0, return_data.size), mem[_200 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_200 + 32 len 4] >= 32
            _216 = mem[_200 + 36]
            require mem[_200 + 36] <= test266151307()
            require _200 + mem[_200 + 36] + 67 < _200 + Mask(224, 0, return_data.size), mem[_200 + 32 len 4] + 36
            _218 = mem[_200 + mem[_200 + 36] + 36]
            if mem[_200 + mem[_200 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _220 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1
            mem[_220] = _218
            require _216 + _218 + 68 <= _214 + 36
            idx = 0
            while idx < _218:
                mem[idx + _220 + 32] = mem[idx + _200 + _216 + 68]
                idx = idx + 32
                continue 
            if ceil32(_218) <= _218:
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _218
                idx = 0
                while idx < _218:
                    mem[idx + _255 + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_218) > _218:
                    mem[_218 + _255 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_218) + _255 + -mem[64] + 68
            mem[_218 + _220 + 32] = 0
            _256 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _218
            idx = 0
            while idx < _218:
                mem[idx + _256 + 68] = mem[idx + _220 + 32]
                idx = idx + 32
                continue 
            if ceil32(_218) > _218:
                mem[_218 + _256 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_218) + _256 + -mem[64] + 68
        _179 = mem[64]
        mem[mem[64]] = 32
        _180 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _180:
            mem[t] = u + -_179 - 64
            _248 = mem[s]
            _252 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _252:
                mem[v + u + 32] = mem[v + _248 + 32]
                v = v + 32
                continue 
            if ceil32(_252) > _252:
                mem[_252 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_252) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_5968e384(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length < 2:
        revert with 0, 'INVALID_PATH'
    if ('cd', 36).length >= 1:
        if ('cd', 36).length - 1 <= 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            if 2 * ('cd', 36).length - 1 > test266151307():
                revert with 'NH{q', 65
            mem[96] = 2 * ('cd', 36).length - 1
            mem[64] = (64 * ('cd', 36).length - 1) + 128
            if not uint255(('cd', 36).length - 1):
                if ('cd', 36).length >= 1:
                    if var129002 >= ('cd', 36).length - 1:
                        mem[(64 * ('cd', 36).length - 1) + 128] = 32
                        mem[(64 * ('cd', 36).length - 1) + 160] = 2 * ('cd', 36).length - 1
                        mem[(64 * ('cd', 36).length - 1) + 192 len 64 * ('cd', 36).length - 1] = mem[128 len 64 * ('cd', 36).length - 1]
                        return memory
                          from (64 * ('cd', 36).length - 1) + 128
                           len (192 * ('cd', 36).length) - 128
                    if var131001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var131001) + cd[36] + 36)] == address(cd[((32 * var131001) + cd[36] + 36)])
                    s = var131001
                    idx = var131001
                    while 1 <= !idx:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if return_data.size <= 3:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size < 68:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _840 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                if not _840 + ext_call.return_data[0]:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 2 * idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(64 * idx) + 128] = 0
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 1 > !(2 * idx):
                                    revert with 'NH{q', 17
                                if (2 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (2 * idx) + 1) + 128] = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _892 = mem[64]
                                mem[mem[64]] = 32
                                _896 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < mem[96]:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _892 + (32 * _896) + -mem[64] + 64
                            _828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_828] == mem[_828 + 12 len 20]
                            staticcall mem[_828 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _857 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _864 = mem[_857]
                            require mem[_857] == mem[_857 + 18 len 14]
                            _868 = mem[_857 + 32]
                            require mem[_857 + 32] == mem[_857 + 50 len 14]
                            require mem[_857 + 64] == mem[_857 + 92 len 4]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 2 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(64 * idx) + 128] = mem[_857 + 18 len 14]
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 1 > !(2 * idx):
                                    revert with 'NH{q', 17
                                if (2 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _868)
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 36).length < 1:
                                        revert with 'NH{q', 17
                                    if idx + 1 < ('cd', 36).length - 1:
                                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    _924 = mem[64]
                                    mem[mem[64]] = 32
                                    _940 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    t = mem[64] + 64
                                    u = 128
                                    while idx < _940:
                                        mem[t] = mem[u]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        idx = idx + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _924 + (32 * _940) + -mem[64] + 64
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _864)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _925 = mem[64]
                                mem[mem[64]] = 32
                                _941 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _941:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _925 + (32 * _941) + -mem[64] + 64
                            mem[(64 * idx) + 128] = mem[_857 + 50 len 14]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _868)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _926 = mem[64]
                                mem[mem[64]] = 32
                                _942 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _942:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _926 + (32 * _942) + -mem[64] + 64
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _864)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _927 = mem[64]
                            mem[mem[64]] = 32
                            _943 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < mem[96]:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _927 + (32 * _943) + -mem[64] + 64
                        if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if return_data.size <= 3:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0 len 4] = ext_call.return_data[0 len 4]
                            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size < 68:
                                revert with ext_call.return_data[0 len return_data.size]
                            _844 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                            if not _844 + ext_call.return_data[0]:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 2 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(64 * idx) + 128] = 0
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _893 = mem[64]
                            mem[mem[64]] = 32
                            _897 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _897:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _893 + (32 * _897) + -mem[64] + 64
                        _829 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_829] == mem[_829 + 12 len 20]
                        staticcall mem[_829 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _865 = mem[_859]
                        require mem[_859] == mem[_859 + 18 len 14]
                        _869 = mem[_859 + 32]
                        require mem[_859 + 32] == mem[_859 + 50 len 14]
                        require mem[_859 + 64] == mem[_859 + 92 len 4]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(64 * idx) + 128] = mem[_859 + 18 len 14]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _869)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _928 = mem[64]
                                mem[mem[64]] = 32
                                _944 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < mem[96]:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _928 + (32 * _944) + -mem[64] + 64
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _865)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _929 = mem[64]
                            mem[mem[64]] = 32
                            _945 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _945:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _929 + (32 * _945) + -mem[64] + 64
                        mem[(64 * idx) + 128] = mem[_859 + 50 len 14]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 1 > !(2 * idx):
                            revert with 'NH{q', 17
                        if (2 * idx) + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _869)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _930 = mem[64]
                            mem[mem[64]] = 32
                            _946 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _946:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _930 + (32 * _946) + -mem[64] + 64
                        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _865)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _931 = mem[64]
                        mem[mem[64]] = 32
                        _947 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = mem[64] + 64
                        u = 128
                        while idx < _947:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _931 + (32 * _947) + -mem[64] + 64
            else:
                mem[128 len 64 * ('cd', 36).length - 1] = call.data[calldata.size len 64 * ('cd', 36).length - 1]
                if ('cd', 36).length >= 1:
                    if var130002 >= ('cd', 36).length - 1:
                        mem[(64 * ('cd', 36).length - 1) + 128] = 32
                        mem[(64 * ('cd', 36).length - 1) + 160] = 2 * ('cd', 36).length - 1
                        mem[(64 * ('cd', 36).length - 1) + 192 len 64 * ('cd', 36).length - 1] = call.data[calldata.size len 64 * ('cd', 36).length - 1]
                        return memory
                          from (64 * ('cd', 36).length - 1) + 128
                           len (192 * ('cd', 36).length) - 128
                    if var132001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var132001) + cd[36] + 36)] == address(cd[((32 * var132001) + cd[36] + 36)])
                    s = var132001
                    idx = var132001
                    while 1 <= !idx:
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        if address(cd[((32 * s) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'IDENTICAL_ADDRESSES'
                        if address(cd[((32 * s) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            if not address(cd[((32 * s) + cd[36] + 36)]):
                                revert with 0, 'ZERO_ADDRESS'
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if 1 > !idx:
                                revert with 'NH{q', 17
                            if idx + 1 >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                            staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                if return_data.size <= 3:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0 len 4] = ext_call.return_data[0 len 4]
                                if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                                    revert with ext_call.return_data[0 len return_data.size]
                                if return_data.size < 68:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _848 = mem[64]
                                mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                                if not _848 + ext_call.return_data[0]:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 2 * idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(64 * idx) + 128] = 0
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 1 > !(2 * idx):
                                    revert with 'NH{q', 17
                                if (2 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (2 * idx) + 1) + 128] = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _894 = mem[64]
                                mem[mem[64]] = 32
                                _898 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _898:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _894 + (32 * _898) + -mem[64] + 64
                            _830 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_830] == mem[_830 + 12 len 20]
                            staticcall mem[_830 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _861 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _866 = mem[_861]
                            require mem[_861] == mem[_861 + 18 len 14]
                            _870 = mem[_861 + 32]
                            require mem[_861 + 32] == mem[_861 + 50 len 14]
                            require mem[_861 + 64] == mem[_861 + 92 len 4]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 2 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(64 * idx) + 128] = mem[_861 + 18 len 14]
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                if 1 > !(2 * idx):
                                    revert with 'NH{q', 17
                                if (2 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _870)
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 36).length < 1:
                                        revert with 'NH{q', 17
                                    if idx + 1 < ('cd', 36).length - 1:
                                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    _932 = mem[64]
                                    mem[mem[64]] = 32
                                    _948 = mem[96]
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    t = mem[64] + 64
                                    u = 128
                                    while idx < _948:
                                        mem[t] = mem[u]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        idx = idx + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _932 + (32 * _948) + -mem[64] + 64
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _866)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _933 = mem[64]
                                mem[mem[64]] = 32
                                _949 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _949:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _933 + (32 * _949) + -mem[64] + 64
                            mem[(64 * idx) + 128] = mem[_861 + 50 len 14]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _870)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _934 = mem[64]
                                mem[mem[64]] = 32
                                _950 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _950:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _934 + (32 * _950) + -mem[64] + 64
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _866)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _935 = mem[64]
                            mem[mem[64]] = 32
                            _951 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _951:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _935 + (32 * _951) + -mem[64] + 64
                        if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if 1 > !idx:
                            revert with 'NH{q', 17
                        if idx + 1 >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
                        staticcall address(cd[4]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            if return_data.size <= 3:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[0 len 4] = ext_call.return_data[0 len 4]
                            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                                revert with ext_call.return_data[0 len return_data.size]
                            if return_data.size < 68:
                                revert with ext_call.return_data[0 len return_data.size]
                            _852 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307() or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64]:
                                revert with 'NH{q', 65
                            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
                            if not _852 + ext_call.return_data[0]:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 2 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(64 * idx) + 128] = 0
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (2 * idx) + 1) + 128] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _895 = mem[64]
                            mem[mem[64]] = 32
                            _899 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < mem[96]:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _895 + (32 * _899) + -mem[64] + 64
                        _831 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_831] == mem[_831 + 12 len 20]
                        staticcall mem[_831 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _867 = mem[_863]
                        require mem[_863] == mem[_863 + 18 len 14]
                        _871 = mem[_863 + 32]
                        require mem[_863 + 32] == mem[_863 + 50 len 14]
                        require mem[_863 + 64] == mem[_863 + 92 len 4]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 2 * idx >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(64 * idx) + 128] = mem[_863 + 18 len 14]
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            if 1 > !(2 * idx):
                                revert with 'NH{q', 17
                            if (2 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _871)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _936 = mem[64]
                                mem[mem[64]] = 32
                                _952 = mem[96]
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = mem[64] + 64
                                u = 128
                                while idx < _952:
                                    mem[t] = mem[u]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _936 + (32 * _952) + -mem[64] + 64
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _867)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _937 = mem[64]
                            mem[mem[64]] = 32
                            _953 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _953:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _937 + (32 * _953) + -mem[64] + 64
                        mem[(64 * idx) + 128] = mem[_863 + 50 len 14]
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 'NH{q', 17
                        if 1 > !(2 * idx):
                            revert with 'NH{q', 17
                        if (2 * idx) + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _871)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _938 = mem[64]
                            mem[mem[64]] = 32
                            _954 = mem[96]
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = mem[64] + 64
                            u = 128
                            while idx < _954:
                                mem[t] = mem[u]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _938 + (32 * _954) + -mem[64] + 64
                        mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _867)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _939 = mem[64]
                        mem[mem[64]] = 32
                        _955 = mem[96]
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = mem[64] + 64
                        u = 128
                        while idx < _955:
                            mem[t] = mem[u]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _939 + (32 * _955) + -mem[64] + 64
    revert with 'NH{q', 17
}



}
