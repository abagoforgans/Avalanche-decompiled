contract main {




// =====================  Runtime code  =====================


#
#  - sub_4a716300(?)
#  - sub_5c490aaa(?)
#  - sub_7efa0ea5(?)
#  - sub_df1e1219(?)
#  - _fallback()
#
address stor0;
uint256 version;
uint256 sub_15c93a7d;
uint8 stor3;
uint8 stor3; offset 8

function sub_15c93a7d(?) {
    return sub_15c93a7d
}

function _locked() {
    return bool(uint8(stor3.field_0))
}

function version() {
    return version
}

function sub_b592b31d(?) {
    return bool(uint8(stor3.field_8))
}

function setLpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    sub_15c93a7d = arg1
}

function setLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    uint8(stor3.field_0) = uint8(arg1)
}

function emptyBalance() {
    require msg.sender == stor0
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
        revert with 0, 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        revert with 0, 18
    mem[128] = 96
    s = 128
    idx = arg2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if not arg2.length:
        revert with 0, 18
    idx = 0
    while idx < arg2.length:
        require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
        require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
        _93 = mem[64]
        mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call arg1.mem[mem[64] len 4] with:
           value msg.value / arg2.length wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _93 + -mem[64] - 4]
        if not return_data.size:
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
                if not idx + 1:
                    revert with 0, 17
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
                revert with 0, 65
            _107 = mem[64]
            if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                revert with 0, 65
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
                revert with 0, 50
            mem[(32 * idx) + 128] = _96
            if not idx + 1:
                revert with 0, 17
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
            revert with 0, 65
        _108 = mem[64]
        if mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_96 + mem[_96 + 36] + 36])) + 1 > test266151307():
            revert with 0, 65
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

function multiCallWithoutRevert(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * arg2.length > test266151307():
        revert with 0, 65
    mem[96] = 2 * arg2.length
    mem[64] = (64 * arg2.length) + 128
    if not uint255(arg2.length):
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
                mem[mem[64] + 32] = bool(ext_call.success)
                _53 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _53
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_49] = return_data.size
                mem[_49 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 32] = bool(ext_call.success)
                _54 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _54
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = _49
            if not idx + 1:
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
                mem[mem[64] + 32] = bool(ext_call.success)
                _85 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _85
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _82 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_82] = return_data.size
                mem[_82 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 32] = bool(ext_call.success)
                _86 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _86
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = _82
            if not idx + 1:
                revert with 0, 17
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

function multiSendWithoutRevert(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if arg2.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * arg2.length > test266151307():
        revert with 0, 65
    mem[96] = 2 * arg2.length
    mem[64] = (64 * arg2.length) + 128
    if not uint255(arg2.length):
        if not arg2.length:
            revert with 0, 18
        idx = 0
        s = msg.value
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
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _85 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * idx >= mem[96]:
                        revert with 0, 50
                    mem[(64 * idx) + 128] = _85
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * idx):
                        revert with 0, 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * (2 * idx) + 1) + 128] = 96
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 0, 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _102 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _102
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _80 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_80] = return_data.size
                mem[_80 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _87 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * idx >= mem[96]:
                        revert with 0, 50
                    mem[(64 * idx) + 128] = _87
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * idx):
                        revert with 0, 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * (2 * idx) + 1) + 128] = _80
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 0, 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _104 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _104
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = _80
            if not idx + 1:
                revert with 0, 17
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
            revert with 0, 18
        idx = 0
        s = msg.value
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
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _155 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * idx >= mem[96]:
                        revert with 0, 50
                    mem[(64 * idx) + 128] = _155
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * idx):
                        revert with 0, 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * (2 * idx) + 1) + 128] = 96
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 0, 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _161 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _161
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = 96
            else:
                _152 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_152] = return_data.size
                mem[_152 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[mem[64] + 32] = bool(ext_call.success)
                    _157 = mem[64]
                    mem[mem[64]] = 32
                    mem[64] = mem[64] + 64
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 2 * idx >= mem[96]:
                        revert with 0, 50
                    mem[(64 * idx) + 128] = _157
                    if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 1 > !(2 * idx):
                        revert with 0, 17
                    if (2 * idx) + 1 >= mem[96]:
                        revert with 0, 50
                    mem[(32 * (2 * idx) + 1) + 128] = _152
                    if not idx + 1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s
                    continue 
                if s < msg.value / arg2.length:
                    revert with 0, 17
                mem[mem[64] + 32] = bool(ext_call.success)
                _163 = mem[64]
                mem[mem[64]] = 32
                mem[64] = mem[64] + 64
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 2 * idx >= mem[96]:
                    revert with 0, 50
                mem[(64 * idx) + 128] = _163
                if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 1 > !(2 * idx):
                    revert with 0, 17
                if (2 * idx) + 1 >= mem[96]:
                    revert with 0, 50
                mem[(32 * (2 * idx) + 1) + 128] = _152
            if not idx + 1:
                revert with 0, 17
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
        revert with 0, 65
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
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if not idx + 1:
                        revert with 0, 17
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
                    revert with 0, 65
                _124 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_124] = mem[mem[132] + 132]
                require _112 + _120 + 164 <= _109 + 132
                idx = 0
                while idx < _120:
                    mem[idx + _124 + 32] = mem[idx + _112 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_120) <= _120:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _187 = mem[_124]
                    mem[mem[64] + 36] = mem[_124]
                    idx = 0
                    while idx < _187:
                        mem[idx + _181 + 68] = mem[idx + _124 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_187) > _187:
                        mem[_187 + _181 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_187) + _181 + -mem[64] + 68
                mem[_120 + _124 + 32] = 0
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _188 = mem[_124]
                mem[mem[64] + 36] = mem[_124]
                idx = 0
                while idx < _188:
                    mem[idx + _182 + 68] = mem[idx + _124 + 32]
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
                    revert with 0, 50
                mem[(32 * idx) + 128] = _101
                if not idx + 1:
                    revert with 0, 17
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
                revert with 0, 65
            _125 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1
            mem[_125] = _121
            require _113 + _121 + 68 <= _110 + 36
            idx = 0
            while idx < _121:
                mem[idx + _125 + 32] = mem[idx + _101 + _113 + 68]
                idx = idx + 32
                continue 
            if ceil32(_121) <= _121:
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _121
                idx = 0
                while idx < _121:
                    mem[idx + _183 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_121) > _121:
                    mem[_121 + _183 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_121) + _183 + -mem[64] + 68
            mem[_121 + _125 + 32] = 0
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _121
            idx = 0
            while idx < _121:
                mem[idx + _184 + 68] = mem[idx + _125 + 32]
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
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if not idx + 1:
                        revert with 0, 17
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
                    revert with 0, 65
                _219 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
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
                    revert with 0, 50
                mem[(32 * idx) + 128] = _200
                if not idx + 1:
                    revert with 0, 17
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
                revert with 0, 65
            _220 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_200 + mem[_200 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
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



}
