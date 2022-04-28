contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function emptyBalance() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multicall(address arg1, bytes[] arg2) payable {
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



}
