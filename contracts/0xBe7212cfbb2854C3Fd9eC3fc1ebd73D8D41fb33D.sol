contract main {




// =====================  Runtime code  =====================


#
#  - sub_25b453e7(?)
#  - sub_29d5a87f(?)
#  - sub_9da922e4(?)
#
uint256 stor0;
uint256 stor2;
address stor3;
array of struct stor5;
uint256 stor6;

function _fallback() payable {
    revert
}

function sortTokens(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 < arg2:
        return address(arg1), arg2
    return address(arg2), arg1
}

function sub_86bf92f7(?) payable {
    if stor2 < stor6:
        revert with 0, 'S'
    if stor5.length > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor5.length
    mem[64] = (32 * stor5.length) + 128
    if not stor5.length:
        idx = 0
        s = stor3
        while idx < stor5.length:
            if idx >= stor5.length:
                revert with 'NH{q', 50
            if address(s) == stor5[idx].field_512:
                mem[0] = 5
                _67 = mem[64]
                mem[64] = mem[64] + 192
                mem[_67] = address(s)
                mem[_67 + 32] = stor5[idx].field_768
                mem[_67 + 64] = stor5[idx].field_256
                mem[_67 + 96] = stor5[idx].field_0
                mem[_67 + 128] = stor5[idx].field_1536
                mem[0] = 5
                mem[_67 + 160] = stor5[idx].field_1792
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _67
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor5[idx].field_768
                continue 
            if address(s) != stor5[idx].field_768:
                revert with 0, 'bad currentToken'
            if idx >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            _73 = mem[64]
            mem[64] = mem[64] + 192
            mem[_73] = address(s)
            mem[_73 + 32] = stor5[idx].field_512
            mem[_73 + 64] = stor5[idx].field_256
            mem[_73 + 96] = stor5[idx].field_0
            mem[_73 + 128] = stor5[idx].field_1536
            mem[0] = 5
            mem[_73 + 160] = stor5[idx].field_1792
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _73
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_512
            continue 
        _62 = mem[64]
        mem[mem[64]] = stor0
        mem[mem[64] + 32] = 64
        _75 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _75:
            _119 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_119 + 44 len 20]
            mem[t + 64] = mem[_119 + 76 len 20]
            mem[t + 96] = mem[_119 + 108 len 20]
            mem[t + 128] = mem[_119 + 128]
            mem[t + 160] = mem[_119 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _62 + (192 * _75) + -mem[64] + 96
    mem[64] = (32 * stor5.length) + 320
    mem[(32 * stor5.length) + 128] = 0
    mem[(32 * stor5.length) + 160] = 0
    mem[(32 * stor5.length) + 192] = 0
    mem[(32 * stor5.length) + 224] = 0
    mem[(32 * stor5.length) + 256] = 0
    mem[(32 * stor5.length) + 288] = 0
    mem[var9001] = (32 * stor5.length) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(32 * stor5.length) + 128] = 0
        mem[(32 * stor5.length) + 160] = 0
        mem[(32 * stor5.length) + 192] = 0
        mem[(32 * stor5.length) + 224] = 0
        mem[(32 * stor5.length) + 256] = 0
        mem[(32 * stor5.length) + 288] = 0
        mem[s + 32] = (32 * stor5.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = stor3
    while idx < stor5.length:
        if idx >= stor5.length:
            revert with 'NH{q', 50
        if address(s) == stor5[idx].field_512:
            mem[0] = 5
            _160 = mem[64]
            mem[64] = mem[64] + 192
            mem[_160] = address(s)
            mem[_160 + 32] = stor5[idx].field_768
            mem[_160 + 64] = stor5[idx].field_256
            mem[_160 + 96] = stor5[idx].field_0
            mem[_160 + 128] = stor5[idx].field_1536
            mem[0] = 5
            mem[_160 + 160] = stor5[idx].field_1792
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _160
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor5[idx].field_768
            continue 
        if address(s) != stor5[idx].field_768:
            revert with 0, 'bad currentToken'
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        _164 = mem[64]
        mem[64] = mem[64] + 192
        mem[_164] = address(s)
        mem[_164 + 32] = stor5[idx].field_512
        mem[_164 + 64] = stor5[idx].field_256
        mem[_164 + 96] = stor5[idx].field_0
        mem[_164 + 128] = stor5[idx].field_1536
        mem[0] = 5
        mem[_164 + 160] = stor5[idx].field_1792
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _164
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor5[idx].field_512
        continue 
    _155 = mem[64]
    mem[mem[64]] = stor0
    mem[mem[64] + 32] = 64
    _166 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _166:
        _183 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_183 + 44 len 20]
        mem[t + 64] = mem[_183 + 76 len 20]
        mem[t + 96] = mem[_183 + 108 len 20]
        mem[t + 128] = mem[_183 + 128]
        mem[t + 160] = mem[_183 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _155 + (192 * _166) + -mem[64] + 96
}



}
