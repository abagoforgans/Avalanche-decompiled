contract main {




// =====================  Runtime code  =====================


#
#  - sub_6dbf88f4(?)
#  - sub_7af82713(?)
#
address stor0;
uint256 version;
uint256 stor2;

function version() {
    return version
}

function _fallback() payable {
    revert
}

function setLpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0 == msg.sender
    stor2 = arg1
}

function emptyBalance() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
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
            _100 = mem[100]
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
            require _103 + _105 + 164 <= _100 + 132
            idx = 0
            while idx < _105:
                mem[_107 + idx + 32] = mem[_103 + idx + 164]
                idx = idx + 32
                continue 
            if ceil32(_105) <= _105:
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _140 = mem[_107]
                mem[mem[64] + 36] = mem[_107]
                idx = 0
                while idx < _140:
                    mem[_136 + idx + 68] = mem[_107 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_140) > _140:
                    mem[_136 + _140 + 68] = 0
                revert with memory
                  from mem[64]
                   len _136 + ceil32(_140) + -mem[64] + 68
            mem[_107 + _105 + 32] = 0
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _143 = mem[_107]
            mem[mem[64] + 36] = mem[_107]
            idx = 0
            while idx < _143:
                mem[_138 + idx + 68] = mem[_107 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_143) > _143:
                mem[_138 + _143 + 68] = 0
            revert with memory
              from mem[64]
               len _138 + ceil32(_143) + -mem[64] + 68
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_95] = return_data.size
        mem[_95 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _95
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        require return_data.size >= 68
        _101 = Mask(224, 0, return_data.size), mem[_95 + 32 len 4]
        require Mask(224, 0, return_data.size), mem[_95 + 32 len 4] >= 32
        _104 = mem[_95 + 36]
        require mem[_95 + 36] <= test266151307()
        require _95 + mem[_95 + 36] + 67 < _95 + Mask(224, 0, return_data.size), mem[_95 + 32 len 4] + 36
        _106 = mem[_95 + mem[_95 + 36] + 36]
        if mem[_95 + mem[_95 + 36] + 36] > test266151307():
            revert with 'NH{q', 65
        _108 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_95 + mem[_95 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_95 + mem[_95 + 36] + 36])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(mem[_95 + mem[_95 + 36] + 36])) + 1
        mem[_108] = _106
        require _104 + _106 + 68 <= _101 + 36
        idx = 0
        while idx < _106:
            mem[_108 + idx + 32] = mem[_95 + _104 + idx + 68]
            idx = idx + 32
            continue 
        if ceil32(_106) <= _106:
            _137 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _106
            idx = 0
            while idx < _106:
                mem[_137 + idx + 68] = mem[_108 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_106) > _106:
                mem[_137 + _106 + 68] = 0
            revert with memory
              from mem[64]
               len _137 + ceil32(_106) + -mem[64] + 68
        mem[_108 + _106 + 32] = 0
        _139 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _106
        idx = 0
        while idx < _106:
            mem[_139 + idx + 68] = mem[_108 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_106) > _106:
            mem[_139 + _106 + 68] = 0
        revert with memory
          from mem[64]
           len _139 + ceil32(_106) + -mem[64] + 68
    _88 = mem[64]
    mem[mem[64]] = 32
    _89 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _89:
        mem[u] = t + -_88 - 64
        _131 = mem[s]
        _135 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _135:
            mem[t + v + 32] = mem[_131 + v + 32]
            v = v + 32
            continue 
        if ceil32(_135) > _135:
            mem[t + _135 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_135) + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
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
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
            call arg1 with:
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                mem[mem[64] + 32] = bool(ext_call.success)
                _57 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _57
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _47 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_47] = return_data.size
                mem[_47 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 32] = bool(ext_call.success)
                _58 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _58
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _47
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
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _37:
            mem[u] = t + -_36 - 64
            _70 = mem[s]
            _73 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _73:
                mem[t + v + 32] = mem[_70 + v + 32]
                v = v + 32
                continue 
            if ceil32(_73) > _73:
                mem[t + _73 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_73) + 32
            u = u + 32
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
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
            call arg1 with:
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                mem[mem[64] + 32] = bool(ext_call.success)
                _85 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _85
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _81 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_81] = return_data.size
                mem[_81 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 32] = bool(ext_call.success)
                _86 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _86
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _81
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _71 = mem[64]
        mem[mem[64]] = 32
        _74 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _74:
            mem[u] = t + -_71 - 64
            _92 = mem[s]
            _94 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _94:
                mem[t + v + 32] = mem[_92 + v + 32]
                v = v + 32
                continue 
            if ceil32(_94) > _94:
                mem[t + _94 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_94) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
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
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
            call arg1 with:
               value msg.value / arg2.length wei
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _94 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _94
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
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
                mem[mem[64] + 32] = bool(ext_call.success)
                _110 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _110
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _83 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_83] = return_data.size
                mem[_83 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _95 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _95
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = _83
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _111 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _111
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _83
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - (msg.value / arg2.length)
            continue 
        if s <= 0:
            _70 = mem[64]
            mem[mem[64]] = 32
            _72 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _72:
                mem[u] = t + -_70 - 64
                _134 = mem[s]
                _141 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _141:
                    mem[t + v + 32] = mem[_134 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_141) > _141:
                    mem[t + _141 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_141) + 32
                u = u + 32
                continue 
        else:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _71 = mem[64]
            mem[mem[64]] = 32
            _74 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _74:
                mem[u] = t + -_71 - 64
                _135 = mem[s]
                _142 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _142:
                    mem[t + v + 32] = mem[_135 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_142) > _142:
                    mem[t + _142 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_142) + 32
                u = u + 32
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
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
            call arg1 with:
               value msg.value / arg2.length wei
                 gas gas_remaining wei
                args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if not return_data.size:
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _161 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _161
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
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
                mem[mem[64] + 32] = bool(ext_call.success)
                _167 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _167
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _154 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_154] = return_data.size
                mem[_154 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _162 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(64 * idx) + 128] = _162
                    if idx and 2 > -1 / idx:
                        revert with 'NH{q', 17
                    if 2 * idx > -2:
                        revert with 'NH{q', 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * (2 * idx) + 1) + 128] = _154
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 'NH{q', 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _168 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(64 * idx) + 128] = _168
                if idx and 2 > -1 / idx:
                    revert with 'NH{q', 17
                if 2 * idx > -2:
                    revert with 'NH{q', 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * (2 * idx) + 1) + 128] = _154
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - (msg.value / arg2.length)
            continue 
        if s <= 0:
            _140 = mem[64]
            mem[mem[64]] = 32
            _144 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _144:
                mem[u] = t + -_140 - 64
                _177 = mem[s]
                _181 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _181:
                    mem[t + v + 32] = mem[_177 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_181) > _181:
                    mem[t + _181 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_181) + 32
                u = u + 32
                continue 
        else:
            call msg.sender with:
               value s wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[mem[64]] = 32
            _146 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 64
            u = mem[64] + 64
            while idx < _146:
                mem[u] = t + -_143 - 64
                _178 = mem[s]
                _182 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _182:
                    mem[t + v + 32] = mem[_178 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_182) > _182:
                    mem[t + _182 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_182) + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
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
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
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
                _107 = mem[100]
                require mem[100] >= 32
                _111 = mem[132]
                require mem[132] <= test266151307()
                require mem[132] + 163 < mem[100] + 132
                _119 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 'NH{q', 65
                _126 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_126] = mem[mem[132] + 132]
                require _111 + _119 + 164 <= _107 + 132
                idx = 0
                while idx < _119:
                    mem[_126 + idx + 32] = mem[_111 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_119) <= _119:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _186 = mem[_126]
                    mem[mem[64] + 36] = mem[_126]
                    idx = 0
                    while idx < _186:
                        mem[_181 + idx + 68] = mem[_126 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_186) > _186:
                        mem[_181 + _186 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _181 + ceil32(_186) + -mem[64] + 68
                mem[_126 + _119 + 32] = 0
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _189 = mem[_126]
                mem[mem[64] + 36] = mem[_126]
                idx = 0
                while idx < _189:
                    mem[_183 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_189) > _189:
                    mem[_183 + _189 + 68] = 0
                revert with memory
                  from mem[64]
                   len _183 + ceil32(_189) + -mem[64] + 68
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_99] = return_data.size
            mem[_99 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _99
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _108 = Mask(224, 0, return_data.size), mem[_99 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_99 + 32 len 4] >= 32
            _112 = mem[_99 + 36]
            require mem[_99 + 36] <= test266151307()
            require _99 + mem[_99 + 36] + 67 < _99 + Mask(224, 0, return_data.size), mem[_99 + 32 len 4] + 36
            _120 = mem[_99 + mem[_99 + 36] + 36]
            if mem[_99 + mem[_99 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _127 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_99 + mem[_99 + 36] + 36])) + 1
            mem[_127] = _120
            require _112 + _120 + 68 <= _108 + 36
            idx = 0
            while idx < _120:
                mem[_127 + idx + 32] = mem[_99 + _112 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_120) <= _120:
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _120
                idx = 0
                while idx < _120:
                    mem[_182 + idx + 68] = mem[_127 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_120) > _120:
                    mem[_182 + _120 + 68] = 0
                revert with memory
                  from mem[64]
                   len _182 + ceil32(_120) + -mem[64] + 68
            mem[_127 + _120 + 32] = 0
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _120
            idx = 0
            while idx < _120:
                mem[_184 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_120) > _120:
                mem[_184 + _120 + 68] = 0
            revert with memory
              from mem[64]
               len _184 + ceil32(_120) + -mem[64] + 68
        _88 = mem[64]
        mem[mem[64]] = 32
        _89 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _89:
            mem[u] = t + -_88 - 64
            _174 = mem[s]
            _179 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _179:
                mem[t + v + 32] = mem[_174 + v + 32]
                v = v + 32
                continue 
            if ceil32(_179) > _179:
                mem[t + _179 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_179) + 32
            u = u + 32
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
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = 0
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
                _204 = mem[100]
                require mem[100] >= 32
                _209 = mem[132]
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
                require _209 + _217 + 164 <= _204 + 132
                idx = 0
                while idx < _217:
                    mem[_219 + idx + 32] = mem[_209 + idx + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_217) <= _217:
                    _253 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _265 = mem[_219]
                    mem[mem[64] + 36] = mem[_219]
                    idx = 0
                    while idx < _265:
                        mem[_253 + idx + 68] = mem[_219 + idx + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_265) > _265:
                        mem[_253 + _265 + 68] = 0
                    revert with memory
                      from mem[64]
                       len _253 + ceil32(_265) + -mem[64] + 68
                mem[_219 + _217 + 32] = 0
                _259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _268 = mem[_219]
                mem[mem[64] + 36] = mem[_219]
                idx = 0
                while idx < _268:
                    mem[_259 + idx + 68] = mem[_219 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_268) > _268:
                    mem[_259 + _268 + 68] = 0
                revert with memory
                  from mem[64]
                   len _259 + ceil32(_268) + -mem[64] + 68
            _199 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_199] = return_data.size
            mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _199
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _205 = Mask(224, 0, return_data.size), mem[_199 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_199 + 32 len 4] >= 32
            _210 = mem[_199 + 36]
            require mem[_199 + 36] <= test266151307()
            require _199 + mem[_199 + 36] + 67 < _199 + Mask(224, 0, return_data.size), mem[_199 + 32 len 4] + 36
            _218 = mem[_199 + mem[_199 + 36] + 36]
            if mem[_199 + mem[_199 + 36] + 36] > test266151307():
                revert with 'NH{q', 65
            _220 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_199 + mem[_199 + 36] + 36])) + 1
            mem[_220] = _218
            require _210 + _218 + 68 <= _205 + 36
            idx = 0
            while idx < _218:
                mem[_220 + idx + 32] = mem[_199 + _210 + idx + 68]
                idx = idx + 32
                continue 
            if ceil32(_218) <= _218:
                _254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _218
                idx = 0
                while idx < _218:
                    mem[_254 + idx + 68] = mem[_220 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_218) > _218:
                    mem[_254 + _218 + 68] = 0
                revert with memory
                  from mem[64]
                   len _254 + ceil32(_218) + -mem[64] + 68
            mem[_220 + _218 + 32] = 0
            _260 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _218
            idx = 0
            while idx < _218:
                mem[_260 + idx + 68] = mem[_220 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_218) > _218:
                mem[_260 + _218 + 68] = 0
            revert with memory
              from mem[64]
               len _260 + ceil32(_218) + -mem[64] + 68
        _177 = mem[64]
        mem[mem[64]] = 32
        _180 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _180:
            mem[u] = t + -_177 - 64
            _248 = mem[s]
            _252 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _252:
                mem[t + v + 32] = mem[_248 + v + 32]
                v = v + 32
                continue 
            if ceil32(_252) > _252:
                mem[t + _252 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_252) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
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
        if not ('cd', 36).length - 1 or 3 <= -1 / ('cd', 36).length - 1:
            if (3 * ('cd', 36).length) - 3 > test266151307():
                revert with 'NH{q', 65
            mem[96] = (3 * ('cd', 36).length) - 3
            mem[64] = (32 * (3 * ('cd', 36).length) - 3) + 128
            if not (3 * ('cd', 36).length) - 3:
                if ('cd', 36).length >= 1:
                    if var217002 >= ('cd', 36).length - 1:
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 128] = 32
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 160] = (3 * ('cd', 36).length) - 3
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 192 len 32 * (3 * ('cd', 36).length) - 3] = mem[128 len 32 * (3 * ('cd', 36).length) - 3]
                        return memory
                          from (32 * (3 * ('cd', 36).length) - 3) + 128
                           len (288 * ('cd', 36).length) - 224
                    if var219001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var219001) + cd[36] + 36)] == address(cd[((32 * var219001) + cd[36] + 36)])
                    s = var219001
                    idx = var219001
                    while idx <= -2:
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
                            if idx > -2:
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
                                _1196 = mem[64]
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
                                if not _1196 + ext_call.return_data[0]:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * 3 * idx) + 128] = 0
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -3:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (3 * idx) + 2) + 128] = 0
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -2:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (3 * idx) + 1) + 128] = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1256 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1256 + (32 * mem[96]) + -mem[64] + 64
                            _1184 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1189 = mem[_1184]
                            require mem[_1184] == mem[_1184 + 12 len 20]
                            staticcall mem[_1184 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1216 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1220 = mem[_1216]
                            require mem[_1216] == mem[_1216 + 18 len 14]
                            _1224 = mem[_1216 + 32]
                            require mem[_1216 + 32] == mem[_1216 + 50 len 14]
                            require mem[_1216 + 64] == mem[_1216 + 92 len 4]
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * 3 * idx) + 128] = address(_1189)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -2:
                                revert with 'NH{q', 17
                            if (3 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1220)
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -3:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                    mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1224)
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 36).length < 1:
                                        revert with 'NH{q', 17
                                    if idx + 1 < ('cd', 36).length - 1:
                                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    _1296 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    t = 128
                                    u = mem[64] + 64
                                    while idx < mem[96]:
                                        mem[u] = mem[t]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        idx = idx + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1296 + (32 * mem[96]) + -mem[64] + 64
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1220)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1297 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1297 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1224)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1224)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1298 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1298 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1220)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1299 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1299 + (32 * mem[96]) + -mem[64] + 64
                        if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > -2:
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
                            _1197 = mem[64]
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
                            if not _1197 + ext_call.return_data[0]:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * 3 * idx) + 128] = 0
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (3 * idx) + 2) + 128] = 0
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -2:
                                revert with 'NH{q', 17
                            if (3 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (3 * idx) + 1) + 128] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1257 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1257 + (32 * mem[96]) + -mem[64] + 64
                        _1185 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1191 = mem[_1185]
                        require mem[_1185] == mem[_1185 + 12 len 20]
                        staticcall mem[_1185 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1217 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1221 = mem[_1217]
                        require mem[_1217] == mem[_1217 + 18 len 14]
                        _1225 = mem[_1217 + 32]
                        require mem[_1217 + 32] == mem[_1217 + 50 len 14]
                        require mem[_1217 + 64] == mem[_1217 + 92 len 4]
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * 3 * idx) + 128] = address(_1191)
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx > -2:
                            revert with 'NH{q', 17
                        if (3 * idx) + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1221)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1225)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1300 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1300 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1221)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1301 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1301 + (32 * mem[96]) + -mem[64] + 64
                        mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1225)
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx > -3:
                            revert with 'NH{q', 17
                        if (3 * idx) + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1225)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1302 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1302 + (32 * mem[96]) + -mem[64] + 64
                        mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1221)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _1303 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < mem[96]:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1303 + (32 * mem[96]) + -mem[64] + 64
            else:
                mem[128 len 32 * (3 * ('cd', 36).length) - 3] = call.data[calldata.size len 32 * (3 * ('cd', 36).length) - 3]
                if ('cd', 36).length >= 1:
                    if var218002 >= ('cd', 36).length - 1:
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 128] = 32
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 160] = (3 * ('cd', 36).length) - 3
                        mem[(32 * (3 * ('cd', 36).length) - 3) + 192 len 32 * (3 * ('cd', 36).length) - 3] = call.data[calldata.size len 32 * (3 * ('cd', 36).length) - 3]
                        return memory
                          from (32 * (3 * ('cd', 36).length) - 3) + 128
                           len (288 * ('cd', 36).length) - 224
                    if var220001 >= ('cd', 36).length:
                        revert with 'NH{q', 50
                    require cd[((32 * var220001) + cd[36] + 36)] == address(cd[((32 * var220001) + cd[36] + 36)])
                    s = var220001
                    idx = var220001
                    while idx <= -2:
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
                            if idx > -2:
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
                                _1198 = mem[64]
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
                                if not _1198 + ext_call.return_data[0]:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * 3 * idx) + 128] = 0
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -3:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (3 * idx) + 2) + 128] = 0
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -2:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 1 >= mem[96]:
                                    revert with 'NH{q', 50
                                mem[(32 * (3 * idx) + 1) + 128] = 0
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1258 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1258 + (32 * mem[96]) + -mem[64] + 64
                            _1186 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1193 = mem[_1186]
                            require mem[_1186] == mem[_1186 + 12 len 20]
                            staticcall mem[_1186 + 12 len 20].getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1218 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1222 = mem[_1218]
                            require mem[_1218] == mem[_1218 + 18 len 14]
                            _1226 = mem[_1218 + 32]
                            require mem[_1218 + 32] == mem[_1218 + 50 len 14]
                            require mem[_1218 + 64] == mem[_1218 + 92 len 4]
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * 3 * idx) + 128] = address(_1193)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -2:
                                revert with 'NH{q', 17
                            if (3 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1222)
                                if idx >= ('cd', 36).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                                if idx and 3 > -1 / idx:
                                    revert with 'NH{q', 17
                                if 3 * idx > -3:
                                    revert with 'NH{q', 17
                                if (3 * idx) + 2 >= mem[96]:
                                    revert with 'NH{q', 50
                                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                    mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1226)
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    if ('cd', 36).length < 1:
                                        revert with 'NH{q', 17
                                    if idx + 1 < ('cd', 36).length - 1:
                                        require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                        s = idx + 1
                                        idx = idx + 1
                                        continue 
                                    _1304 = mem[64]
                                    mem[mem[64]] = 32
                                    mem[mem[64] + 32] = mem[96]
                                    idx = 0
                                    t = 128
                                    u = mem[64] + 64
                                    while idx < mem[96]:
                                        mem[u] = mem[t]
                                        require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                        idx = idx + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    return memory
                                      from mem[64]
                                       len _1304 + (32 * mem[96]) + -mem[64] + 64
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1222)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1305 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1305 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1226)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * s) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1226)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1306 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1306 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1222)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1307 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1307 + (32 * mem[96]) + -mem[64] + 64
                        if not address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            revert with 0, 'ZERO_ADDRESS'
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx > -2:
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
                            _1199 = mem[64]
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
                            if not _1199 + ext_call.return_data[0]:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * 3 * idx) + 128] = 0
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (3 * idx) + 2) + 128] = 0
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -2:
                                revert with 'NH{q', 17
                            if (3 * idx) + 1 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * (3 * idx) + 1) + 128] = 0
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1259 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1259 + (32 * mem[96]) + -mem[64] + 64
                        _1187 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1195 = mem[_1187]
                        require mem[_1187] == mem[_1187 + 12 len 20]
                        staticcall mem[_1187 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1219 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1223 = mem[_1219]
                        require mem[_1219] == mem[_1219 + 18 len 14]
                        _1227 = mem[_1219 + 32]
                        require mem[_1219 + 32] == mem[_1219 + 50 len 14]
                        require mem[_1219 + 64] == mem[_1219 + 92 len 4]
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * 3 * idx) + 128] = address(_1195)
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx > -2:
                            revert with 'NH{q', 17
                        if (3 * idx) + 1 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1223)
                            if idx >= ('cd', 36).length:
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                            if idx and 3 > -1 / idx:
                                revert with 'NH{q', 17
                            if 3 * idx > -3:
                                revert with 'NH{q', 17
                            if (3 * idx) + 2 >= mem[96]:
                                revert with 'NH{q', 50
                            if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                                mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1227)
                                if idx == -1:
                                    revert with 'NH{q', 17
                                if ('cd', 36).length < 1:
                                    revert with 'NH{q', 17
                                if idx + 1 < ('cd', 36).length - 1:
                                    require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                    s = idx + 1
                                    idx = idx + 1
                                    continue 
                                _1308 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = mem[96]
                                idx = 0
                                t = 128
                                u = mem[64] + 64
                                while idx < mem[96]:
                                    mem[u] = mem[t]
                                    require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                    idx = idx + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                return memory
                                  from mem[64]
                                   len _1308 + (32 * mem[96]) + -mem[64] + 64
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1223)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1309 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1309 + (32 * mem[96]) + -mem[64] + 64
                        mem[(32 * (3 * idx) + 1) + 128] = Mask(112, 0, _1227)
                        if idx >= ('cd', 36).length:
                            revert with 'NH{q', 50
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        if idx and 3 > -1 / idx:
                            revert with 'NH{q', 17
                        if 3 * idx > -3:
                            revert with 'NH{q', 17
                        if (3 * idx) + 2 >= mem[96]:
                            revert with 'NH{q', 50
                        if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                            mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1227)
                            if idx == -1:
                                revert with 'NH{q', 17
                            if ('cd', 36).length < 1:
                                revert with 'NH{q', 17
                            if idx + 1 < ('cd', 36).length - 1:
                                require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                                s = idx + 1
                                idx = idx + 1
                                continue 
                            _1310 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 64
                            while idx < mem[96]:
                                mem[u] = mem[t]
                                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            return memory
                              from mem[64]
                               len _1310 + (32 * mem[96]) + -mem[64] + 64
                        mem[(32 * (3 * idx) + 2) + 128] = Mask(112, 0, _1223)
                        if idx == -1:
                            revert with 'NH{q', 17
                        if ('cd', 36).length < 1:
                            revert with 'NH{q', 17
                        if idx + 1 < ('cd', 36).length - 1:
                            require cd[((32 * idx + 2) + cd[36] + 36)] == address(cd[((32 * idx + 2) + cd[36] + 36)])
                            s = idx + 1
                            idx = idx + 1
                            continue 
                        _1311 = mem[64]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 64
                        while idx < mem[96]:
                            mem[u] = mem[t]
                            require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1311 + (32 * mem[96]) + -mem[64] + 64
    revert with 'NH{q', 17
}



}
