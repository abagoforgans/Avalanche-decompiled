contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of uint256 stor1;

function _fallback() payable {
    revert
}

function sub_8cb5e7dc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg1.length + 288] = 0
    stor0.length++
    stor0[stor0.length].field_0 = block.number
    stor0[stor0.length].field_256 = block.timestamp
    stor0[stor0.length].field_512 = arg2.length
    stor0[stor0.length].field_768 = msg.sender
    if stor0[stor0.length].field_1024:
        if stor0[stor0.length].field_1024 == stor0[stor0.length].field_1025 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((5 * stor0.length) + ('name', 'stor0', 0) + 4)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_1024 = 0
            idx = 0
            while stor0[stor0.length].field_1025 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 4)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor0.length].field_1024 == stor0[stor0.length].field_1025 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((5 * stor0.length) + ('name', 'stor0', 0) + 4)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_1024 = 0
            idx = 0
            while stor0[stor0.length].field_1025 + 31 / 32 > idx:
                stor[idx + sha3((5 * stor0.length) + ('name', 'stor0', 0) + 4)].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 288 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 288] = 0
    mem[ceil32(arg1.length) + 288] = 32
    mem[ceil32(arg1.length) + 320] = arg2.length
    mem[ceil32(arg1.length) + 352 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 352] = 0
    emit 0x5af195ce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 320 len ceil32(arg1.length) + -arg1.length + 32], arg2[all], mem[ceil32(arg1.length) + arg2.length + 352 len ceil32(arg2.length) - arg2.length], stor0.length, sha3(arg1[all]), msg.sender
}

function files(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    if stor0[arg1].field_1024:
        if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1024:
            if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1025:
                if 31 >= stor0[arg1].field_1025:
                    mem[128] = 256 * stor0[arg1].field_1032
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_1025:
                if 31 >= stor0[arg1].field_1025:
                    mem[128] = 256 * stor0[arg1].field_1032
                else:
                    mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               stor0[arg1].field_768,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_1025), data=mem[128 len ceil32(stor0[arg1].field_1025)])
    if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_1024:
        if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1025:
            if 31 >= stor0[arg1].field_1025:
                mem[128] = 256 * stor0[arg1].field_1032
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_1024 == stor0[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_1025:
            if 31 >= stor0[arg1].field_1025:
                mem[128] = 256 * stor0[arg1].field_1032
            else:
                mem[128] = stor[sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'stor0', 0) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           Array(len=stor0[arg1].field_1024, data=mem[128 len ceil32(stor0[arg1].field_1025)])
}

function getAllFiles() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    s = 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _22 = mem[64]
        mem[64] = mem[64] + 160
        mem[_22] = stor0[idx].field_0
        mem[_22 + 32] = stor0[idx].field_256
        mem[_22 + 64] = stor0[idx].field_512
        mem[_22 + 96] = stor0[idx].field_768
        if stor0[idx].field_1024:
            if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
                revert with 'NH{q', 34
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx].field_1025) + 32
            mem[_25] = stor0[idx].field_1025
            if stor0[idx].field_1024:
                if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor0[idx].field_1025:
                    if 31 >= stor0[idx].field_1025:
                        mem[_25 + 32] = 256 * stor0[idx].field_1032
                    else:
                        mem[0] = (5 * idx) + sha3(0) + 4
                        mem[_25 + 32] = stor[sha3((5 * idx) + ('name', 'stor0', 0) + 4)].field_0
                        t = _25 + 32
                        u = sha3(mem[0])
                        while _25 + stor0[idx].field_1025 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_22 + 128] = _25
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_1025:
                mem[_22 + 128] = _25
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_1025:
                mem[_25 + 32] = 256 * stor0[idx].field_1032
                mem[_22 + 128] = _25
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(0) + 4
            mem[_25 + 32] = stor[sha3((5 * idx) + ('name', 'stor0', 0) + 4)].field_0
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor0[u].field_1025 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_22 + 128] = _25
            mem[t] = _22
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
            revert with 'NH{q', 34
        _26 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[idx].field_1025) + 32
        mem[_26] = stor0[idx].field_1025
        if stor0[idx].field_1024:
            if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_1025:
                mem[_22 + 128] = _26
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_1025:
                mem[_26 + 32] = 256 * stor0[idx].field_1032
                mem[_22 + 128] = _26
                mem[s] = _22
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (5 * idx) + sha3(0) + 4
            mem[_26 + 32] = stor[sha3((5 * idx) + ('name', 'stor0', 0) + 4)].field_0
            t = _26 + 32
            u = sha3(mem[0])
            while _26 + stor0[u].field_1025 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_22 + 128] = _26
            mem[t] = _22
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_1024 == stor0[idx].field_1025 < 32:
            revert with 'NH{q', 34
        if stor0[idx].field_1025:
            if 31 >= stor0[idx].field_1025:
                mem[_26 + 32] = 256 * stor0[idx].field_1032
            else:
                mem[0] = (5 * idx) + sha3(0) + 4
                mem[_26 + 32] = stor[sha3((5 * idx) + ('name', 'stor0', 0) + 4)].field_0
                t = _26 + 32
                u = sha3(mem[0])
                while _26 + stor0[idx].field_1025 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_22 + 128] = _26
        mem[s] = _22
        s = s + 32
        idx = idx + 1
        continue 
    _23 = mem[64]
    mem[mem[64]] = 32
    _24 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _24:
        mem[u] = t + -_23 - 64
        _40 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_40 + 32]
        mem[t + 64] = mem[_40 + 64]
        mem[t + 96] = mem[_40 + 108 len 20]
        _46 = mem[_40 + 128]
        mem[t + 128] = 160
        _47 = mem[_46]
        mem[t + 160] = mem[_46]
        v = 0
        while v < _47:
            mem[t + v + 192] = mem[_46 + v + 32]
            v = v + 32
            continue 
        if ceil32(_47) > _47:
            mem[t + _47 + 192] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_47) + 192
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
