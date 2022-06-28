contract main {




// =====================  Runtime code  =====================


#
#  - sub_0dd4b6eb(?)
#  - sub_5968e384(?)
#  - sub_7af82713(?)
#  - _fallback()
#
address stor0;
uint256 version;
uint256 stor2;
uint8 stor3;

function version() {
    return version
}

function setLpFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2 = arg1
}

function setLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    stor3 = uint8(arg1)
}

function emptyBalance() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function toString(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg1.length > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 > !(2 * arg1.length):
        revert with 0, 17
    if (2 * arg1.length) + 2 > test266151307():
        revert with 0, 65
    if (2 * arg1.length) + 2:
        mem[ceil32(ceil32(arg1.length)) + 193 len (2 * arg1.length) + 2] = call.data[calldata.size len (2 * arg1.length) + 2]
    if 0 >= (2 * arg1.length) + 2:
        revert with 0, 50
    if 1 >= (2 * arg1.length) + 2:
        revert with 0, 50
    mem[ceil32(ceil32(arg1.length)) + 194 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 2 > !(2 * idx):
            revert with 0, 17
        if 2 * idx >= 2 * arg1.length:
            revert with 0, 50
        mem[(2 * idx) + ceil32(ceil32(arg1.length)) + 195 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx >= arg1.length:
            revert with 0, 50
        if idx > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        if 3 > !(2 * idx):
            revert with 0, 17
        if (2 * idx) + 3 >= (2 * arg1.length) + 2:
            revert with 0, 50
        mem[(2 * idx) + ceil32(ceil32(arg1.length)) + 196 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 32, (2 * arg1.length) + 2, 0, mem[ceil32(ceil32(arg1.length)) + 194 len floor32((2 * arg1.length) + 33) - 1]
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
        mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
        call arg1 with:
           value msg.value / arg2.length wei
             gas gas_remaining wei
            args call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
        if not return_data.size:
            if ext_call.success:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 96
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require mem[96] >= 68
            _101 = mem[100]
            require mem[100] >= 32
            _103 = mem[132]
            require mem[132] <= test266151307()
            require mem[100] + 132 > mem[132] + 163
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
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 68
        _102 = Mask(224, 0, return_data.size), mem[_96 + 32 len 4]
        require Mask(224, 0, return_data.size), mem[_96 + 32 len 4] >= 32
        _104 = mem[_96 + 36]
        require mem[_96 + 36] <= test266151307()
        require _96 + Mask(224, 0, return_data.size), mem[_96 + 32 len 4] + 36 > _96 + mem[_96 + 36] + 67
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
            if idx == -1:
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
            _74 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
               value msg.value / arg2.length wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _74 + -mem[64] - 4]
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
                    if idx == -1:
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
                    if idx == -1:
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
            if idx == -1:
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
                    if idx == -1:
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
                    if idx == -1:
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
            if idx == -1:
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
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _109 = mem[100]
                require mem[100] >= 32
                _112 = mem[132]
                require mem[132] <= test266151307()
                require mem[100] + 132 > mem[132] + 163
                _120 = mem[mem[132] + 132]
                if mem[mem[132] + 132] > test266151307():
                    revert with 0, 65
                _126 = mem[64]
                if mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + ceil32(ceil32(mem[mem[132] + 132])) + 1
                mem[_126] = mem[mem[132] + 132]
                require _112 + _120 + 164 <= _109 + 132
                idx = 0
                while idx < _120:
                    mem[idx + _126 + 32] = mem[idx + _112 + 164]
                    idx = idx + 32
                    continue 
                if ceil32(_120) <= _120:
                    _181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _187 = mem[_126]
                    mem[mem[64] + 36] = mem[_126]
                    idx = 0
                    while idx < _187:
                        mem[idx + _181 + 68] = mem[idx + _126 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_187) > _187:
                        mem[_187 + _181 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_187) + _181 + -mem[64] + 68
                mem[_120 + _126 + 32] = 0
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _188 = mem[_126]
                mem[mem[64] + 36] = mem[_126]
                idx = 0
                while idx < _188:
                    mem[idx + _182 + 68] = mem[idx + _126 + 32]
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
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _110 = Mask(224, 0, return_data.size), mem[_101 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_101 + 32 len 4] >= 32
            _113 = mem[_101 + 36]
            require mem[_101 + 36] <= test266151307()
            require _101 + Mask(224, 0, return_data.size), mem[_101 + 32 len 4] + 36 > _101 + mem[_101 + 36] + 67
            _121 = mem[_101 + mem[_101 + 36] + 36]
            if mem[_101 + mem[_101 + 36] + 36] > test266151307():
                revert with 0, 65
            _127 = mem[64]
            if mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[_101 + mem[_101 + 36] + 36])) + 1
            mem[_127] = _121
            require _113 + _121 + 68 <= _110 + 36
            idx = 0
            while idx < _121:
                mem[idx + _127 + 32] = mem[idx + _101 + _113 + 68]
                idx = idx + 32
                continue 
            if ceil32(_121) <= _121:
                _183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = _121
                idx = 0
                while idx < _121:
                    mem[idx + _183 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_121) > _121:
                    mem[_121 + _183 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_121) + _183 + -mem[64] + 68
            mem[_121 + _127 + 32] = 0
            _184 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _121
            idx = 0
            while idx < _121:
                mem[idx + _184 + 68] = mem[idx + _127 + 32]
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
            _193 = mem[64]
            mem[mem[64] len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + mem[64]] = 0
            call arg1.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + _193 + -mem[64] - 4]
            if not return_data.size:
                if ext_call.success:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = 96
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require mem[96] >= 68
                _213 = mem[100]
                require mem[100] >= 32
                _215 = mem[132]
                require mem[132] <= test266151307()
                require mem[100] + 132 > mem[132] + 163
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
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 68
            _214 = Mask(224, 0, return_data.size), mem[_200 + 32 len 4]
            require Mask(224, 0, return_data.size), mem[_200 + 32 len 4] >= 32
            _216 = mem[_200 + 36]
            require mem[_200 + 36] <= test266151307()
            require _200 + Mask(224, 0, return_data.size), mem[_200 + 32 len 4] + 36 > _200 + mem[_200 + 36] + 67
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

function sub_6dbf88f4(?) payable {
    require calldata.size - 4 >= 160
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
    if cd[132] < block.timestamp:
        revert with 0, 'EXPIRED'
    if 1 == bool(stor3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'THIS CONTRACT IS LOCKED, UPDATE TO NEW VERSION'
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _769 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_769] == mem[_769 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_769 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 96
        s = 0
        while idx < ('cd', 100).length:
            if not ('cd', 100).length:
                revert with 0, 18
            _1478 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_1478] = ('cd', 36).length
            mem[_1478 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_1478 + (32 * ('cd', 36).length) + 32] = 0
            if mem[96] < 1:
                revert with 0, 'INVALID_PATH'
            _1482 = mem[96]
            if 1 > !mem[96]:
                revert with 0, 17
            if mem[96] + 1 > test266151307():
                revert with 0, 65
            _1488 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + (32 * _1482 + 1) + 32
            if not _1482 + 1:
                if 0 >= mem[_1488]:
                    revert with 0, 50
                mem[_1488 + 32] = msg.value / ('cd', 100).length
                _2194 = mem[96]
                s = 0
                while s < _2194:
                    if s >= mem[_1478]:
                        revert with 0, 50
                    _2202 = mem[(32 * s) + _1478 + 32]
                    if 1 > !s:
                        revert with 0, 17
                    if s + 1 >= mem[_1478]:
                        revert with 0, 50
                    _2210 = mem[(32 * s + 1) + _1478 + 32]
                    if mem[(32 * s) + _1478 + 44 len 20] == mem[(32 * s + 1) + _1478 + 44 len 20]:
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _1478 + 44 len 20] < mem[(32 * s + 1) + _1478 + 44 len 20]:
                        if not mem[(32 * s) + _1478 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2298 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2298] == mem[_2298 + 18 len 14]
                        require mem[_2298 + 32] == mem[_2298 + 50 len 14]
                        require mem[_2298 + 64] == mem[_2298 + 92 len 4]
                        if s >= mem[_1478]:
                            revert with 0, 50
                        if s >= mem[_1488]:
                            revert with 0, 50
                        if mem[(32 * s) + _1488 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1478 + 44 len 20] == address(_2202):
                            if mem[_2298 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2298 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2298 + 50 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2298 + 18 len 14] and 10000 > -1 / mem[_2298 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2298 + 18 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2298 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2298 + 50 len 14] / (10000 * mem[_2298 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                        else:
                            if mem[_2298 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2298 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2298 + 18 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2298 + 50 len 14] and 10000 > -1 / mem[_2298 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2298 + 50 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2298 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2298 + 18 len 14] / (10000 * mem[_2298 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                    else:
                        if not mem[(32 * s + 1) + _1478 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2299 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2299] == mem[_2299 + 18 len 14]
                        require mem[_2299 + 32] == mem[_2299 + 50 len 14]
                        require mem[_2299 + 64] == mem[_2299 + 92 len 4]
                        if s >= mem[_1478]:
                            revert with 0, 50
                        if s >= mem[_1488]:
                            revert with 0, 50
                        if mem[(32 * s) + _1488 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1478 + 44 len 20] == address(_2210):
                            if mem[_2299 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2299 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2299 + 50 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2299 + 18 len 14] and 10000 > -1 / mem[_2299 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2299 + 18 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2299 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2299 + 50 len 14] / (10000 * mem[_2299 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                        else:
                            if mem[_2299 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2299 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2299 + 18 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2299 + 50 len 14] and 10000 > -1 / mem[_2299 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2299 + 50 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2299 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2299 + 18 len 14] / (10000 * mem[_2299 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                    if s == -1:
                        revert with 0, 17
                    _2194 = mem[96]
                    s = s + 1
                    continue 
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if 0 >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[_1488]:
                    revert with 0, 50
                _2234 = mem[_1488 + 32]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _2234
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2234
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2270] == bool(mem[_2270])
                if not mem[_2270]:
                    revert with 0, 1
                if mem[_1488] < 1:
                    revert with 0, 17
                if mem[_1488] - 1 >= mem[_1488]:
                    revert with 0, 50
                if mem[(32 * mem[_1488] - 1) + _1488 + 32] < cd[4]:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                _2354 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                mem[_2354] = ('cd', 36).length
                mem[_2354 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[_2354 + (32 * ('cd', 36).length) + 32] = 0
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if var137001 < 1:
                    revert with 0, 17
                if var141002 < var141001:
                    if var143001 < ('cd', 36).length:
                        if 1 > !var147002:
                            revert with 0, 17
                        s = var149003 + 1
                        t = var149006
                        u = var149009
                        while s < ('cd', 36).length:
                            if address(t) == mem[(32 * s) + _2354 + 44 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(t) < mem[(32 * s) + _2354 + 44 len 20]:
                                if not address(t):
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1488]:
                                    revert with 0, 50
                                _7766 = mem[(32 * u + 1) + _1488 + 32]
                                if mem[_2354] < 2:
                                    revert with 0, 17
                                if address(t) == address(t):
                                    if u >= mem[_2354] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7806 = mem[(32 * u) + 128]
                                        _7823 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7823 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7823 + 36] = 0
                                        mem[_7823 + 68] = _7766
                                        mem[_7823 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7823 + 132] = 128
                                        mem[_7823 + 164] = mem[_7823]
                                        s = 0
                                        while s < mem[_7823]:
                                            mem[s + _7823 + 196] = mem[s + _7823 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7823]) > mem[_7823]:
                                            mem[mem[_7823] + _7823 + 196] = 0
                                        require ext_code.size(address(_7806))
                                        call address(_7806).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7766, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7823], mem[_7823 + 196 len ceil32(mem[_7823])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7854 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7902 = mem[(32 * u) + 128]
                                        _7934 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7934 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7934 + 36] = 0
                                        mem[_7934 + 68] = _7766
                                        mem[_7934 + 100] = address(_7854)
                                        mem[_7934 + 132] = 128
                                        mem[_7934 + 164] = mem[_7934]
                                        s = 0
                                        while s < mem[_7934]:
                                            mem[s + _7934 + 196] = mem[s + _7934 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7934]) > mem[_7934]:
                                            mem[mem[_7934] + _7934 + 196] = 0
                                        require ext_code.size(address(_7902))
                                        call address(_7902).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7766, address(_7854), 128, mem[_7934], mem[_7934 + 196 len ceil32(mem[_7934])]
                                else:
                                    if u >= mem[_2354] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7807 = mem[(32 * u) + 128]
                                        _7825 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7825 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7825 + 36] = _7766
                                        mem[_7825 + 68] = 0
                                        mem[_7825 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7825 + 132] = 128
                                        mem[_7825 + 164] = mem[_7825]
                                        s = 0
                                        while s < mem[_7825]:
                                            mem[s + _7825 + 196] = mem[s + _7825 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7825]) > mem[_7825]:
                                            mem[mem[_7825] + _7825 + 196] = 0
                                        require ext_code.size(address(_7807))
                                        call address(_7807).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7766, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7825], mem[_7825 + 196 len ceil32(mem[_7825])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7856 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7904 = mem[(32 * u) + 128]
                                        _7935 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7935 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7935 + 36] = _7766
                                        mem[_7935 + 68] = 0
                                        mem[_7935 + 100] = address(_7856)
                                        mem[_7935 + 132] = 128
                                        mem[_7935 + 164] = mem[_7935]
                                        s = 0
                                        while s < mem[_7935]:
                                            mem[s + _7935 + 196] = mem[s + _7935 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7935]) > mem[_7935]:
                                            mem[mem[_7935] + _7935 + 196] = 0
                                        require ext_code.size(address(_7904))
                                        call address(_7904).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7766, 0, address(_7856), 128, mem[_7935], mem[_7935 + 196 len ceil32(mem[_7935])]
                            else:
                                if not mem[(32 * s) + _2354 + 44 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1488]:
                                    revert with 0, 50
                                _7767 = mem[(32 * u + 1) + _1488 + 32]
                                if mem[_2354] < 2:
                                    revert with 0, 17
                                if address(t) == mem[(32 * s) + _2354 + 44 len 20]:
                                    if u >= mem[_2354] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7808 = mem[(32 * u) + 128]
                                        _7827 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7827 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7827 + 36] = 0
                                        mem[_7827 + 68] = _7767
                                        mem[_7827 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7827 + 132] = 128
                                        mem[_7827 + 164] = mem[_7827]
                                        s = 0
                                        while s < mem[_7827]:
                                            mem[s + _7827 + 196] = mem[s + _7827 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7827]) > mem[_7827]:
                                            mem[mem[_7827] + _7827 + 196] = 0
                                        require ext_code.size(address(_7808))
                                        call address(_7808).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7767, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7827], mem[_7827 + 196 len ceil32(mem[_7827])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7858 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7906 = mem[(32 * u) + 128]
                                        _7936 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7936 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7936 + 36] = 0
                                        mem[_7936 + 68] = _7767
                                        mem[_7936 + 100] = address(_7858)
                                        mem[_7936 + 132] = 128
                                        mem[_7936 + 164] = mem[_7936]
                                        s = 0
                                        while s < mem[_7936]:
                                            mem[s + _7936 + 196] = mem[s + _7936 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7936]) > mem[_7936]:
                                            mem[mem[_7936] + _7936 + 196] = 0
                                        require ext_code.size(address(_7906))
                                        call address(_7906).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7767, address(_7858), 128, mem[_7936], mem[_7936 + 196 len ceil32(mem[_7936])]
                                else:
                                    if u >= mem[_2354] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7809 = mem[(32 * u) + 128]
                                        _7829 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7829 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7829 + 36] = _7767
                                        mem[_7829 + 68] = 0
                                        mem[_7829 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7829 + 132] = 128
                                        mem[_7829 + 164] = mem[_7829]
                                        s = 0
                                        while s < mem[_7829]:
                                            mem[s + _7829 + 196] = mem[s + _7829 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7829]) > mem[_7829]:
                                            mem[mem[_7829] + _7829 + 196] = 0
                                        require ext_code.size(address(_7809))
                                        call address(_7809).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7767, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7829], mem[_7829 + 196 len ceil32(mem[_7829])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7860 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7908 = mem[(32 * u) + 128]
                                        _7937 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7937 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7937 + 36] = _7767
                                        mem[_7937 + 68] = 0
                                        mem[_7937 + 100] = address(_7860)
                                        mem[_7937 + 132] = 128
                                        mem[_7937 + 164] = mem[_7937]
                                        s = 0
                                        while s < mem[_7937]:
                                            mem[s + _7937 + 196] = mem[s + _7937 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7937]) > mem[_7937]:
                                            mem[mem[_7937] + _7937 + 196] = 0
                                        require ext_code.size(address(_7908))
                                        call address(_7908).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7767, 0, address(_7860), 128, mem[_7937], mem[_7937 + 196 len ceil32(mem[_7937])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_2354] < 1:
                                revert with 0, 17
                            if u + 1 < mem[_2354] - 1:
                                if u + 1 >= mem[_2354]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = mem[(32 * u + 1) + _2354 + 32]
                                u = u + 1
                                continue 
                            if mem[_1488] < 1:
                                revert with 0, 17
                            if mem[_1488] - 1 >= mem[_1488]:
                                revert with 0, 50
                            if mem[(32 * mem[_1488] - 1) + _1488 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1488] - 1) + _1488 + 32]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1488
                            s = mem[(32 * mem[_1488] - 1) + _1488 + 32] * ('cd', 100).length
                            continue 
                    revert with 0, 50
            else:
                mem[_1488 + 32 len 32 * _1482 + 1] = call.data[calldata.size len 32 * _1482 + 1]
                if 0 >= mem[_1488]:
                    revert with 0, 50
                mem[_1488 + 32] = msg.value / ('cd', 100).length
                _2195 = mem[96]
                s = 0
                while s < _2195:
                    if s >= mem[_1478]:
                        revert with 0, 50
                    _2203 = mem[(32 * s) + _1478 + 32]
                    if 1 > !s:
                        revert with 0, 17
                    if s + 1 >= mem[_1478]:
                        revert with 0, 50
                    _2211 = mem[(32 * s + 1) + _1478 + 32]
                    if mem[(32 * s) + _1478 + 44 len 20] == mem[(32 * s + 1) + _1478 + 44 len 20]:
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _1478 + 44 len 20] < mem[(32 * s + 1) + _1478 + 44 len 20]:
                        if not mem[(32 * s) + _1478 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2300 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2300] == mem[_2300 + 18 len 14]
                        require mem[_2300 + 32] == mem[_2300 + 50 len 14]
                        require mem[_2300 + 64] == mem[_2300 + 92 len 4]
                        if s >= mem[_1478]:
                            revert with 0, 50
                        if s >= mem[_1488]:
                            revert with 0, 50
                        if mem[(32 * s) + _1488 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1478 + 44 len 20] == address(_2203):
                            if mem[_2300 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2300 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2300 + 50 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2300 + 18 len 14] and 10000 > -1 / mem[_2300 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2300 + 18 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2300 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2300 + 50 len 14] / (10000 * mem[_2300 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                        else:
                            if mem[_2300 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2300 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2300 + 18 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2300 + 50 len 14] and 10000 > -1 / mem[_2300 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2300 + 50 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2300 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2300 + 18 len 14] / (10000 * mem[_2300 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                    else:
                        if not mem[(32 * s + 1) + _1478 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2301 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2301] == mem[_2301 + 18 len 14]
                        require mem[_2301 + 32] == mem[_2301 + 50 len 14]
                        require mem[_2301 + 64] == mem[_2301 + 92 len 4]
                        if s >= mem[_1478]:
                            revert with 0, 50
                        if s >= mem[_1488]:
                            revert with 0, 50
                        if mem[(32 * s) + _1488 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1478 + 44 len 20] == address(_2211):
                            if mem[_2301 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2301 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2301 + 50 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2301 + 18 len 14] and 10000 > -1 / mem[_2301 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2301 + 18 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2301 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2301 + 50 len 14] / (10000 * mem[_2301 + 18 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                        else:
                            if mem[_2301 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2301 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1488 + 32] and stor2 > -1 / mem[(32 * s) + _1488 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1488 + 32] * stor2 and mem[_2301 + 18 len 14] > -1 / mem[(32 * s) + _1488 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2301 + 50 len 14] and 10000 > -1 / mem[_2301 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2301 + 50 len 14] > !(mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2301 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1488]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1488 + 32] = mem[(32 * s) + _1488 + 32] * stor2 * mem[_2301 + 18 len 14] / (10000 * mem[_2301 + 50 len 14]) + (mem[(32 * s) + _1488 + 32] * stor2)
                    if s == -1:
                        revert with 0, 17
                    _2195 = mem[96]
                    s = s + 1
                    continue 
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if 0 >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[_1488]:
                    revert with 0, 50
                _2238 = mem[_1488 + 32]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _2238
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2238
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2277 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2277] == bool(mem[_2277])
                if not mem[_2277]:
                    revert with 0, 1
                if mem[_1488] < 1:
                    revert with 0, 17
                if mem[_1488] - 1 >= mem[_1488]:
                    revert with 0, 50
                if mem[(32 * mem[_1488] - 1) + _1488 + 32] < cd[4]:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                _2358 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                mem[_2358] = ('cd', 36).length
                mem[_2358 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[_2358 + (32 * ('cd', 36).length) + 32] = 0
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if var138001 < 1:
                    revert with 0, 17
                if var142002 < var142001:
                    if var144001 < ('cd', 36).length:
                        if 1 > !var148002:
                            revert with 0, 17
                        s = var150003 + 1
                        t = var150006
                        u = var150009
                        while s < ('cd', 36).length:
                            if address(t) == mem[(32 * s) + _2358 + 44 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(t) < mem[(32 * s) + _2358 + 44 len 20]:
                                if not address(t):
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1488]:
                                    revert with 0, 50
                                _7768 = mem[(32 * u + 1) + _1488 + 32]
                                if mem[_2358] < 2:
                                    revert with 0, 17
                                if address(t) == address(t):
                                    if u >= mem[_2358] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7810 = mem[(32 * u) + 128]
                                        _7831 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7831 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7831 + 36] = 0
                                        mem[_7831 + 68] = _7768
                                        mem[_7831 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7831 + 132] = 128
                                        mem[_7831 + 164] = mem[_7831]
                                        s = 0
                                        while s < mem[_7831]:
                                            mem[s + _7831 + 196] = mem[s + _7831 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7831]) > mem[_7831]:
                                            mem[mem[_7831] + _7831 + 196] = 0
                                        require ext_code.size(address(_7810))
                                        call address(_7810).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7768, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7831], mem[_7831 + 196 len ceil32(mem[_7831])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7862 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7910 = mem[(32 * u) + 128]
                                        _7938 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7938 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7938 + 36] = 0
                                        mem[_7938 + 68] = _7768
                                        mem[_7938 + 100] = address(_7862)
                                        mem[_7938 + 132] = 128
                                        mem[_7938 + 164] = mem[_7938]
                                        s = 0
                                        while s < mem[_7938]:
                                            mem[s + _7938 + 196] = mem[s + _7938 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7938]) > mem[_7938]:
                                            mem[mem[_7938] + _7938 + 196] = 0
                                        require ext_code.size(address(_7910))
                                        call address(_7910).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7768, address(_7862), 128, mem[_7938], mem[_7938 + 196 len ceil32(mem[_7938])]
                                else:
                                    if u >= mem[_2358] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7811 = mem[(32 * u) + 128]
                                        _7833 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7833 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7833 + 36] = _7768
                                        mem[_7833 + 68] = 0
                                        mem[_7833 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7833 + 132] = 128
                                        mem[_7833 + 164] = mem[_7833]
                                        s = 0
                                        while s < mem[_7833]:
                                            mem[s + _7833 + 196] = mem[s + _7833 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7833]) > mem[_7833]:
                                            mem[mem[_7833] + _7833 + 196] = 0
                                        require ext_code.size(address(_7811))
                                        call address(_7811).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7768, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7833], mem[_7833 + 196 len ceil32(mem[_7833])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7864 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7912 = mem[(32 * u) + 128]
                                        _7939 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7939 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7939 + 36] = _7768
                                        mem[_7939 + 68] = 0
                                        mem[_7939 + 100] = address(_7864)
                                        mem[_7939 + 132] = 128
                                        mem[_7939 + 164] = mem[_7939]
                                        s = 0
                                        while s < mem[_7939]:
                                            mem[s + _7939 + 196] = mem[s + _7939 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7939]) > mem[_7939]:
                                            mem[mem[_7939] + _7939 + 196] = 0
                                        require ext_code.size(address(_7912))
                                        call address(_7912).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7768, 0, address(_7864), 128, mem[_7939], mem[_7939 + 196 len ceil32(mem[_7939])]
                            else:
                                if not mem[(32 * s) + _2358 + 44 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1488]:
                                    revert with 0, 50
                                _7769 = mem[(32 * u + 1) + _1488 + 32]
                                if mem[_2358] < 2:
                                    revert with 0, 17
                                if address(t) == mem[(32 * s) + _2358 + 44 len 20]:
                                    if u >= mem[_2358] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7812 = mem[(32 * u) + 128]
                                        _7835 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7835 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7835 + 36] = 0
                                        mem[_7835 + 68] = _7769
                                        mem[_7835 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7835 + 132] = 128
                                        mem[_7835 + 164] = mem[_7835]
                                        s = 0
                                        while s < mem[_7835]:
                                            mem[s + _7835 + 196] = mem[s + _7835 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7835]) > mem[_7835]:
                                            mem[mem[_7835] + _7835 + 196] = 0
                                        require ext_code.size(address(_7812))
                                        call address(_7812).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7769, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7835], mem[_7835 + 196 len ceil32(mem[_7835])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7866 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7914 = mem[(32 * u) + 128]
                                        _7940 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7940 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7940 + 36] = 0
                                        mem[_7940 + 68] = _7769
                                        mem[_7940 + 100] = address(_7866)
                                        mem[_7940 + 132] = 128
                                        mem[_7940 + 164] = mem[_7940]
                                        s = 0
                                        while s < mem[_7940]:
                                            mem[s + _7940 + 196] = mem[s + _7940 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7940]) > mem[_7940]:
                                            mem[mem[_7940] + _7940 + 196] = 0
                                        require ext_code.size(address(_7914))
                                        call address(_7914).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7769, address(_7866), 128, mem[_7940], mem[_7940 + 196 len ceil32(mem[_7940])]
                                else:
                                    if u >= mem[_2358] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7813 = mem[(32 * u) + 128]
                                        _7837 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7837 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7837 + 36] = _7769
                                        mem[_7837 + 68] = 0
                                        mem[_7837 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7837 + 132] = 128
                                        mem[_7837 + 164] = mem[_7837]
                                        s = 0
                                        while s < mem[_7837]:
                                            mem[s + _7837 + 196] = mem[s + _7837 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7837]) > mem[_7837]:
                                            mem[mem[_7837] + _7837 + 196] = 0
                                        require ext_code.size(address(_7813))
                                        call address(_7813).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7769, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7837], mem[_7837 + 196 len ceil32(mem[_7837])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7868 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7916 = mem[(32 * u) + 128]
                                        _7941 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7941 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7941 + 36] = _7769
                                        mem[_7941 + 68] = 0
                                        mem[_7941 + 100] = address(_7868)
                                        mem[_7941 + 132] = 128
                                        mem[_7941 + 164] = mem[_7941]
                                        s = 0
                                        while s < mem[_7941]:
                                            mem[s + _7941 + 196] = mem[s + _7941 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7941]) > mem[_7941]:
                                            mem[mem[_7941] + _7941 + 196] = 0
                                        require ext_code.size(address(_7916))
                                        call address(_7916).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7769, 0, address(_7868), 128, mem[_7941], mem[_7941 + 196 len ceil32(mem[_7941])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_2358] < 1:
                                revert with 0, 17
                            if u + 1 < mem[_2358] - 1:
                                if u + 1 >= mem[_2358]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = mem[(32 * u + 1) + _2358 + 32]
                                u = u + 1
                                continue 
                            if mem[_1488] < 1:
                                revert with 0, 17
                            if mem[_1488] - 1 >= mem[_1488]:
                                revert with 0, 50
                            if mem[(32 * mem[_1488] - 1) + _1488 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1488] - 1) + _1488 + 32]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1488
                            s = mem[(32 * mem[_1488] - 1) + _1488 + 32] * ('cd', 100).length
                            continue 
                    revert with 0, 50
            if mem[_1488] < 1:
                revert with 0, 17
            if mem[_1488] - 1 >= mem[_1488]:
                revert with 0, 50
            if mem[(32 * mem[_1488] - 1) + _1488 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1488] - 1) + _1488 + 32]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1488
            s = mem[(32 * mem[_1488] - 1) + _1488 + 32] * ('cd', 100).length
            continue 
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        while idx < ('cd', 68).length:
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if 1 > !idx:
                revert with 0, 17
            if idx + 1 >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[36] + 36)] == address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[36] + 36)])
            staticcall address(cd[((32 * idx) + cd[68] + 36)]).getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx + 1) + cd[36] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _771 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_771] == mem[_771 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_771 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 >= ('cd', 36).length:
            revert with 0, 50
        require ('cd', 36)[0] == address(('cd', 36)[0])
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        s = 96
        s = 0
        while idx < ('cd', 100).length:
            if not ('cd', 100).length:
                revert with 0, 18
            _1479 = mem[64]
            mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
            mem[_1479] = ('cd', 36).length
            mem[_1479 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
            mem[_1479 + (32 * ('cd', 36).length) + 32] = 0
            if mem[96] < 1:
                revert with 0, 'INVALID_PATH'
            _1484 = mem[96]
            if 1 > !mem[96]:
                revert with 0, 17
            if mem[96] + 1 > test266151307():
                revert with 0, 65
            _1489 = mem[64]
            mem[mem[64]] = mem[96] + 1
            mem[64] = mem[64] + (32 * _1484 + 1) + 32
            if not _1484 + 1:
                if 0 >= mem[_1489]:
                    revert with 0, 50
                mem[_1489 + 32] = msg.value / ('cd', 100).length
                _2196 = mem[96]
                s = 0
                while s < _2196:
                    if s >= mem[_1479]:
                        revert with 0, 50
                    _2204 = mem[(32 * s) + _1479 + 32]
                    if 1 > !s:
                        revert with 0, 17
                    if s + 1 >= mem[_1479]:
                        revert with 0, 50
                    _2212 = mem[(32 * s + 1) + _1479 + 32]
                    if mem[(32 * s) + _1479 + 44 len 20] == mem[(32 * s + 1) + _1479 + 44 len 20]:
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _1479 + 44 len 20] < mem[(32 * s + 1) + _1479 + 44 len 20]:
                        if not mem[(32 * s) + _1479 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2302 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2302] == mem[_2302 + 18 len 14]
                        require mem[_2302 + 32] == mem[_2302 + 50 len 14]
                        require mem[_2302 + 64] == mem[_2302 + 92 len 4]
                        if s >= mem[_1479]:
                            revert with 0, 50
                        if s >= mem[_1489]:
                            revert with 0, 50
                        if mem[(32 * s) + _1489 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1479 + 44 len 20] == address(_2204):
                            if mem[_2302 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2302 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2302 + 50 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2302 + 18 len 14] and 10000 > -1 / mem[_2302 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2302 + 18 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2302 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2302 + 50 len 14] / (10000 * mem[_2302 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                        else:
                            if mem[_2302 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2302 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2302 + 18 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2302 + 50 len 14] and 10000 > -1 / mem[_2302 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2302 + 50 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2302 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2302 + 18 len 14] / (10000 * mem[_2302 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                    else:
                        if not mem[(32 * s + 1) + _1479 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2303] == mem[_2303 + 18 len 14]
                        require mem[_2303 + 32] == mem[_2303 + 50 len 14]
                        require mem[_2303 + 64] == mem[_2303 + 92 len 4]
                        if s >= mem[_1479]:
                            revert with 0, 50
                        if s >= mem[_1489]:
                            revert with 0, 50
                        if mem[(32 * s) + _1489 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1479 + 44 len 20] == address(_2212):
                            if mem[_2303 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2303 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2303 + 50 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2303 + 18 len 14] and 10000 > -1 / mem[_2303 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2303 + 18 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2303 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2303 + 50 len 14] / (10000 * mem[_2303 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                        else:
                            if mem[_2303 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2303 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2303 + 18 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2303 + 50 len 14] and 10000 > -1 / mem[_2303 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2303 + 50 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2303 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2303 + 18 len 14] / (10000 * mem[_2303 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                    if s == -1:
                        revert with 0, 17
                    _2196 = mem[96]
                    s = s + 1
                    continue 
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if 0 >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[_1489]:
                    revert with 0, 50
                _2242 = mem[_1489 + 32]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _2242
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2242
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2284] == bool(mem[_2284])
                if not mem[_2284]:
                    revert with 0, 1
                if mem[_1489] < 1:
                    revert with 0, 17
                if mem[_1489] - 1 >= mem[_1489]:
                    revert with 0, 50
                if mem[(32 * mem[_1489] - 1) + _1489 + 32] < cd[4]:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                _2362 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                mem[_2362] = ('cd', 36).length
                mem[_2362 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[_2362 + (32 * ('cd', 36).length) + 32] = 0
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if var138001 < 1:
                    revert with 0, 17
                if var142002 < var142001:
                    if var144001 < ('cd', 36).length:
                        if 1 > !var148002:
                            revert with 0, 17
                        s = var150003 + 1
                        t = var150006
                        u = var150009
                        while s < ('cd', 36).length:
                            if address(t) == mem[(32 * s) + _2362 + 44 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(t) < mem[(32 * s) + _2362 + 44 len 20]:
                                if not address(t):
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1489]:
                                    revert with 0, 50
                                _7770 = mem[(32 * u + 1) + _1489 + 32]
                                if mem[_2362] < 2:
                                    revert with 0, 17
                                if address(t) == address(t):
                                    if u >= mem[_2362] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7814 = mem[(32 * u) + 128]
                                        _7839 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7839 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7839 + 36] = 0
                                        mem[_7839 + 68] = _7770
                                        mem[_7839 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7839 + 132] = 128
                                        mem[_7839 + 164] = mem[_7839]
                                        s = 0
                                        while s < mem[_7839]:
                                            mem[s + _7839 + 196] = mem[s + _7839 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7839]) > mem[_7839]:
                                            mem[mem[_7839] + _7839 + 196] = 0
                                        require ext_code.size(address(_7814))
                                        call address(_7814).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7770, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7839], mem[_7839 + 196 len ceil32(mem[_7839])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7870 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7918 = mem[(32 * u) + 128]
                                        _7942 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7942 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7942 + 36] = 0
                                        mem[_7942 + 68] = _7770
                                        mem[_7942 + 100] = address(_7870)
                                        mem[_7942 + 132] = 128
                                        mem[_7942 + 164] = mem[_7942]
                                        s = 0
                                        while s < mem[_7942]:
                                            mem[s + _7942 + 196] = mem[s + _7942 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7942]) > mem[_7942]:
                                            mem[mem[_7942] + _7942 + 196] = 0
                                        require ext_code.size(address(_7918))
                                        call address(_7918).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7770, address(_7870), 128, mem[_7942], mem[_7942 + 196 len ceil32(mem[_7942])]
                                else:
                                    if u >= mem[_2362] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7815 = mem[(32 * u) + 128]
                                        _7841 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7841 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7841 + 36] = _7770
                                        mem[_7841 + 68] = 0
                                        mem[_7841 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7841 + 132] = 128
                                        mem[_7841 + 164] = mem[_7841]
                                        s = 0
                                        while s < mem[_7841]:
                                            mem[s + _7841 + 196] = mem[s + _7841 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7841]) > mem[_7841]:
                                            mem[mem[_7841] + _7841 + 196] = 0
                                        require ext_code.size(address(_7815))
                                        call address(_7815).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7770, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7841], mem[_7841 + 196 len ceil32(mem[_7841])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7872 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7920 = mem[(32 * u) + 128]
                                        _7943 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7943 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7943 + 36] = _7770
                                        mem[_7943 + 68] = 0
                                        mem[_7943 + 100] = address(_7872)
                                        mem[_7943 + 132] = 128
                                        mem[_7943 + 164] = mem[_7943]
                                        s = 0
                                        while s < mem[_7943]:
                                            mem[s + _7943 + 196] = mem[s + _7943 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7943]) > mem[_7943]:
                                            mem[mem[_7943] + _7943 + 196] = 0
                                        require ext_code.size(address(_7920))
                                        call address(_7920).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7770, 0, address(_7872), 128, mem[_7943], mem[_7943 + 196 len ceil32(mem[_7943])]
                            else:
                                if not mem[(32 * s) + _2362 + 44 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1489]:
                                    revert with 0, 50
                                _7771 = mem[(32 * u + 1) + _1489 + 32]
                                if mem[_2362] < 2:
                                    revert with 0, 17
                                if address(t) == mem[(32 * s) + _2362 + 44 len 20]:
                                    if u >= mem[_2362] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7816 = mem[(32 * u) + 128]
                                        _7843 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7843 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7843 + 36] = 0
                                        mem[_7843 + 68] = _7771
                                        mem[_7843 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7843 + 132] = 128
                                        mem[_7843 + 164] = mem[_7843]
                                        s = 0
                                        while s < mem[_7843]:
                                            mem[s + _7843 + 196] = mem[s + _7843 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7843]) > mem[_7843]:
                                            mem[mem[_7843] + _7843 + 196] = 0
                                        require ext_code.size(address(_7816))
                                        call address(_7816).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7771, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7843], mem[_7843 + 196 len ceil32(mem[_7843])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7874 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7922 = mem[(32 * u) + 128]
                                        _7944 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7944 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7944 + 36] = 0
                                        mem[_7944 + 68] = _7771
                                        mem[_7944 + 100] = address(_7874)
                                        mem[_7944 + 132] = 128
                                        mem[_7944 + 164] = mem[_7944]
                                        s = 0
                                        while s < mem[_7944]:
                                            mem[s + _7944 + 196] = mem[s + _7944 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7944]) > mem[_7944]:
                                            mem[mem[_7944] + _7944 + 196] = 0
                                        require ext_code.size(address(_7922))
                                        call address(_7922).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7771, address(_7874), 128, mem[_7944], mem[_7944 + 196 len ceil32(mem[_7944])]
                                else:
                                    if u >= mem[_2362] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7817 = mem[(32 * u) + 128]
                                        _7845 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7845 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7845 + 36] = _7771
                                        mem[_7845 + 68] = 0
                                        mem[_7845 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7845 + 132] = 128
                                        mem[_7845 + 164] = mem[_7845]
                                        s = 0
                                        while s < mem[_7845]:
                                            mem[s + _7845 + 196] = mem[s + _7845 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7845]) > mem[_7845]:
                                            mem[mem[_7845] + _7845 + 196] = 0
                                        require ext_code.size(address(_7817))
                                        call address(_7817).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7771, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7845], mem[_7845 + 196 len ceil32(mem[_7845])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7876 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7924 = mem[(32 * u) + 128]
                                        _7945 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7945 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7945 + 36] = _7771
                                        mem[_7945 + 68] = 0
                                        mem[_7945 + 100] = address(_7876)
                                        mem[_7945 + 132] = 128
                                        mem[_7945 + 164] = mem[_7945]
                                        s = 0
                                        while s < mem[_7945]:
                                            mem[s + _7945 + 196] = mem[s + _7945 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7945]) > mem[_7945]:
                                            mem[mem[_7945] + _7945 + 196] = 0
                                        require ext_code.size(address(_7924))
                                        call address(_7924).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7771, 0, address(_7876), 128, mem[_7945], mem[_7945 + 196 len ceil32(mem[_7945])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_2362] < 1:
                                revert with 0, 17
                            if u + 1 < mem[_2362] - 1:
                                if u + 1 >= mem[_2362]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = mem[(32 * u + 1) + _2362 + 32]
                                u = u + 1
                                continue 
                            if mem[_1489] < 1:
                                revert with 0, 17
                            if mem[_1489] - 1 >= mem[_1489]:
                                revert with 0, 50
                            if mem[(32 * mem[_1489] - 1) + _1489 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1489] - 1) + _1489 + 32]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1489
                            s = mem[(32 * mem[_1489] - 1) + _1489 + 32] * ('cd', 100).length
                            continue 
                    revert with 0, 50
            else:
                mem[_1489 + 32 len 32 * _1484 + 1] = call.data[calldata.size len 32 * _1484 + 1]
                if 0 >= mem[_1489]:
                    revert with 0, 50
                mem[_1489 + 32] = msg.value / ('cd', 100).length
                _2197 = mem[96]
                s = 0
                while s < _2197:
                    if s >= mem[_1479]:
                        revert with 0, 50
                    _2205 = mem[(32 * s) + _1479 + 32]
                    if 1 > !s:
                        revert with 0, 17
                    if s + 1 >= mem[_1479]:
                        revert with 0, 50
                    _2213 = mem[(32 * s + 1) + _1479 + 32]
                    if mem[(32 * s) + _1479 + 44 len 20] == mem[(32 * s + 1) + _1479 + 44 len 20]:
                        revert with 0, 'IDENTICAL_ADDRESSES'
                    if mem[(32 * s) + _1479 + 44 len 20] < mem[(32 * s + 1) + _1479 + 44 len 20]:
                        if not mem[(32 * s) + _1479 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2304 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2304] == mem[_2304 + 18 len 14]
                        require mem[_2304 + 32] == mem[_2304 + 50 len 14]
                        require mem[_2304 + 64] == mem[_2304 + 92 len 4]
                        if s >= mem[_1479]:
                            revert with 0, 50
                        if s >= mem[_1489]:
                            revert with 0, 50
                        if mem[(32 * s) + _1489 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1479 + 44 len 20] == address(_2205):
                            if mem[_2304 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2304 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2304 + 50 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2304 + 18 len 14] and 10000 > -1 / mem[_2304 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2304 + 18 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2304 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2304 + 50 len 14] / (10000 * mem[_2304 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                        else:
                            if mem[_2304 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2304 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2304 + 18 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2304 + 50 len 14] and 10000 > -1 / mem[_2304 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2304 + 50 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2304 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2304 + 18 len 14] / (10000 * mem[_2304 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                    else:
                        if not mem[(32 * s + 1) + _1479 + 44 len 20]:
                            revert with 0, 'ZERO_ADDRESS'
                        if s >= mem[96]:
                            revert with 0, 50
                        staticcall mem[(32 * s) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2305 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        require mem[_2305] == mem[_2305 + 18 len 14]
                        require mem[_2305 + 32] == mem[_2305 + 50 len 14]
                        require mem[_2305 + 64] == mem[_2305 + 92 len 4]
                        if s >= mem[_1479]:
                            revert with 0, 50
                        if s >= mem[_1489]:
                            revert with 0, 50
                        if mem[(32 * s) + _1489 + 32] <= 0:
                            revert with 0, 'INSUFFICIENT_INPUT_AMOUNT'
                        if mem[(32 * s) + _1479 + 44 len 20] == address(_2213):
                            if mem[_2305 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2305 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2305 + 50 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2305 + 18 len 14] and 10000 > -1 / mem[_2305 + 18 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2305 + 18 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2305 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2305 + 50 len 14] / (10000 * mem[_2305 + 18 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                        else:
                            if mem[_2305 + 50 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[_2305 + 18 len 14] <= 0:
                                revert with 0, 'INSUFFICIENT_LIQUIDITY'
                            if mem[(32 * s) + _1489 + 32] and stor2 > -1 / mem[(32 * s) + _1489 + 32]:
                                revert with 0, 17
                            if mem[(32 * s) + _1489 + 32] * stor2 and mem[_2305 + 18 len 14] > -1 / mem[(32 * s) + _1489 + 32] * stor2:
                                revert with 0, 17
                            if mem[_2305 + 50 len 14] and 10000 > -1 / mem[_2305 + 50 len 14]:
                                revert with 0, 17
                            if 10000 * mem[_2305 + 50 len 14] > !(mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 17
                            if not (10000 * mem[_2305 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2):
                                revert with 0, 18
                            if 1 > !s:
                                revert with 0, 17
                            if s + 1 >= mem[_1489]:
                                revert with 0, 50
                            mem[(32 * s + 1) + _1489 + 32] = mem[(32 * s) + _1489 + 32] * stor2 * mem[_2305 + 18 len 14] / (10000 * mem[_2305 + 50 len 14]) + (mem[(32 * s) + _1489 + 32] * stor2)
                    if s == -1:
                        revert with 0, 17
                    _2197 = mem[96]
                    s = s + 1
                    continue 
                if 0 >= ('cd', 36).length:
                    revert with 0, 50
                require ('cd', 36)[0] == address(('cd', 36)[0])
                if 0 >= mem[96]:
                    revert with 0, 50
                if 0 >= mem[_1489]:
                    revert with 0, 50
                _2246 = mem[_1489 + 32]
                mem[mem[64] + 4] = mem[140 len 20]
                mem[mem[64] + 36] = _2246
                call address(('cd', 36)[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _2246
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2291 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2291] == bool(mem[_2291])
                if not mem[_2291]:
                    revert with 0, 1
                if mem[_1489] < 1:
                    revert with 0, 17
                if mem[_1489] - 1 >= mem[_1489]:
                    revert with 0, 50
                if mem[(32 * mem[_1489] - 1) + _1489 + 32] < cd[4]:
                    revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
                _2366 = mem[64]
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                mem[_2366] = ('cd', 36).length
                mem[_2366 + 32 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                mem[_2366 + (32 * ('cd', 36).length) + 32] = 0
                if idx >= ('cd', 100).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                if var139001 < 1:
                    revert with 0, 17
                if var143002 < var143001:
                    if var145001 < ('cd', 36).length:
                        if 1 > !var149002:
                            revert with 0, 17
                        s = var151003 + 1
                        t = var151006
                        u = var151009
                        while s < ('cd', 36).length:
                            if address(t) == mem[(32 * s) + _2366 + 44 len 20]:
                                revert with 0, 'IDENTICAL_ADDRESSES'
                            if address(t) < mem[(32 * s) + _2366 + 44 len 20]:
                                if not address(t):
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1489]:
                                    revert with 0, 50
                                _7772 = mem[(32 * u + 1) + _1489 + 32]
                                if mem[_2366] < 2:
                                    revert with 0, 17
                                if address(t) == address(t):
                                    if u >= mem[_2366] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7818 = mem[(32 * u) + 128]
                                        _7847 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7847 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7847 + 36] = 0
                                        mem[_7847 + 68] = _7772
                                        mem[_7847 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7847 + 132] = 128
                                        mem[_7847 + 164] = mem[_7847]
                                        s = 0
                                        while s < mem[_7847]:
                                            mem[s + _7847 + 196] = mem[s + _7847 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7847]) > mem[_7847]:
                                            mem[mem[_7847] + _7847 + 196] = 0
                                        require ext_code.size(address(_7818))
                                        call address(_7818).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7772, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7847], mem[_7847 + 196 len ceil32(mem[_7847])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7878 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7926 = mem[(32 * u) + 128]
                                        _7946 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7946 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7946 + 36] = 0
                                        mem[_7946 + 68] = _7772
                                        mem[_7946 + 100] = address(_7878)
                                        mem[_7946 + 132] = 128
                                        mem[_7946 + 164] = mem[_7946]
                                        s = 0
                                        while s < mem[_7946]:
                                            mem[s + _7946 + 196] = mem[s + _7946 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7946]) > mem[_7946]:
                                            mem[mem[_7946] + _7946 + 196] = 0
                                        require ext_code.size(address(_7926))
                                        call address(_7926).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7772, address(_7878), 128, mem[_7946], mem[_7946 + 196 len ceil32(mem[_7946])]
                                else:
                                    if u >= mem[_2366] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7819 = mem[(32 * u) + 128]
                                        _7849 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7849 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7849 + 36] = _7772
                                        mem[_7849 + 68] = 0
                                        mem[_7849 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7849 + 132] = 128
                                        mem[_7849 + 164] = mem[_7849]
                                        s = 0
                                        while s < mem[_7849]:
                                            mem[s + _7849 + 196] = mem[s + _7849 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7849]) > mem[_7849]:
                                            mem[mem[_7849] + _7849 + 196] = 0
                                        require ext_code.size(address(_7819))
                                        call address(_7819).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7772, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7849], mem[_7849 + 196 len ceil32(mem[_7849])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7880 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7928 = mem[(32 * u) + 128]
                                        _7947 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7947 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7947 + 36] = _7772
                                        mem[_7947 + 68] = 0
                                        mem[_7947 + 100] = address(_7880)
                                        mem[_7947 + 132] = 128
                                        mem[_7947 + 164] = mem[_7947]
                                        s = 0
                                        while s < mem[_7947]:
                                            mem[s + _7947 + 196] = mem[s + _7947 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7947]) > mem[_7947]:
                                            mem[mem[_7947] + _7947 + 196] = 0
                                        require ext_code.size(address(_7928))
                                        call address(_7928).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7772, 0, address(_7880), 128, mem[_7947], mem[_7947 + 196 len ceil32(mem[_7947])]
                            else:
                                if not mem[(32 * s) + _2366 + 44 len 20]:
                                    revert with 0, 'ZERO_ADDRESS'
                                if 1 > !u:
                                    revert with 0, 17
                                if u + 1 >= mem[_1489]:
                                    revert with 0, 50
                                _7773 = mem[(32 * u + 1) + _1489 + 32]
                                if mem[_2366] < 2:
                                    revert with 0, 17
                                if address(t) == mem[(32 * s) + _2366 + 44 len 20]:
                                    if u >= mem[_2366] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7820 = mem[(32 * u) + 128]
                                        _7851 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7851 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7851 + 36] = 0
                                        mem[_7851 + 68] = _7773
                                        mem[_7851 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7851 + 132] = 128
                                        mem[_7851 + 164] = mem[_7851]
                                        s = 0
                                        while s < mem[_7851]:
                                            mem[s + _7851 + 196] = mem[s + _7851 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7851]) > mem[_7851]:
                                            mem[mem[_7851] + _7851 + 196] = 0
                                        require ext_code.size(address(_7820))
                                        call address(_7820).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7773, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7851], mem[_7851 + 196 len ceil32(mem[_7851])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7882 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7930 = mem[(32 * u) + 128]
                                        _7948 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7948 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7948 + 36] = 0
                                        mem[_7948 + 68] = _7773
                                        mem[_7948 + 100] = address(_7882)
                                        mem[_7948 + 132] = 128
                                        mem[_7948 + 164] = mem[_7948]
                                        s = 0
                                        while s < mem[_7948]:
                                            mem[s + _7948 + 196] = mem[s + _7948 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7948]) > mem[_7948]:
                                            mem[mem[_7948] + _7948 + 196] = 0
                                        require ext_code.size(address(_7930))
                                        call address(_7930).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, _7773, address(_7882), 128, mem[_7948], mem[_7948 + 196 len ceil32(mem[_7948])]
                                else:
                                    if u >= mem[_2366] - 2:
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7821 = mem[(32 * u) + 128]
                                        _7853 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7853 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7853 + 36] = _7773
                                        mem[_7853 + 68] = 0
                                        mem[_7853 + 100] = address(cd[((32 * idx) + cd[100] + 36)])
                                        mem[_7853 + 132] = 128
                                        mem[_7853 + 164] = mem[_7853]
                                        s = 0
                                        while s < mem[_7853]:
                                            mem[s + _7853 + 196] = mem[s + _7853 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7853]) > mem[_7853]:
                                            mem[mem[_7853] + _7853 + 196] = 0
                                        require ext_code.size(address(_7821))
                                        call address(_7821).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7773, 0, address(cd[((32 * idx) + cd[100] + 36)]), 128, mem[_7853], mem[_7853 + 196 len ceil32(mem[_7853])]
                                    else:
                                        if 1 > !u:
                                            revert with 0, 17
                                        if u + 1 >= mem[96]:
                                            revert with 0, 50
                                        _7884 = mem[(32 * u + 1) + 128]
                                        if u >= mem[96]:
                                            revert with 0, 50
                                        _7932 = mem[(32 * u) + 128]
                                        _7949 = mem[64]
                                        mem[64] = mem[64] + 32
                                        mem[_7949 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                        mem[_7949 + 36] = _7773
                                        mem[_7949 + 68] = 0
                                        mem[_7949 + 100] = address(_7884)
                                        mem[_7949 + 132] = 128
                                        mem[_7949 + 164] = mem[_7949]
                                        s = 0
                                        while s < mem[_7949]:
                                            mem[s + _7949 + 196] = mem[s + _7949 + 32]
                                            s = s + 32
                                            continue 
                                        if ceil32(mem[_7949]) > mem[_7949]:
                                            mem[mem[_7949] + _7949 + 196] = 0
                                        require ext_code.size(address(_7932))
                                        call address(_7932).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args _7773, 0, address(_7884), 128, mem[_7949], mem[_7949 + 196 len ceil32(mem[_7949])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if u == -1:
                                revert with 0, 17
                            if mem[_2366] < 1:
                                revert with 0, 17
                            if u + 1 < mem[_2366] - 1:
                                if u + 1 >= mem[_2366]:
                                    revert with 0, 50
                                if 1 > !(u + 1):
                                    revert with 0, 17
                                s = u + 2
                                t = mem[(32 * u + 1) + _2366 + 32]
                                u = u + 1
                                continue 
                            if mem[_1489] < 1:
                                revert with 0, 17
                            if mem[_1489] - 1 >= mem[_1489]:
                                revert with 0, 50
                            if mem[(32 * mem[_1489] - 1) + _1489 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1489] - 1) + _1489 + 32]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1489
                            s = mem[(32 * mem[_1489] - 1) + _1489 + 32] * ('cd', 100).length
                            continue 
                    revert with 0, 50
            if mem[_1489] < 1:
                revert with 0, 17
            if mem[_1489] - 1 >= mem[_1489]:
                revert with 0, 50
            if mem[(32 * mem[_1489] - 1) + _1489 + 32] and ('cd', 100).length > -1 / mem[(32 * mem[_1489] - 1) + _1489 + 32]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1489
            s = mem[(32 * mem[_1489] - 1) + _1489 + 32] * ('cd', 100).length
            continue 
    return s
}



}
