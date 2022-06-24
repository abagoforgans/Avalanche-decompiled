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
    stor0.length++
    stor0[stor0.length].field_0 = block.number
    stor0[stor0.length].field_256 = block.timestamp
    stor0[stor0.length].field_512 = msg.sender
    if stor0[stor0.length].field_768:
        if stor0[stor0.length].field_768 == stor0[stor0.length].field_769 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_768 = 0
            idx = 0
            while stor0[stor0.length].field_769 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor0.length].field_768 == stor0[stor0.length].field_769 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_768 = 0
            idx = 0
            while stor0[stor0.length].field_769 + 31 / 32 > idx:
                stor[idx + sha3((4 * stor0.length) + ('name', 'stor0', 0) + 3)].field_0 = 0
                idx = idx + 1
                continue 
}

function files(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    if stor0[arg1].field_768:
        if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_768:
            if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_769:
                if 31 >= stor0[arg1].field_769:
                    mem[128] = 256 * stor0[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_769:
                if 31 >= stor0[arg1].field_769:
                    mem[128] = 256 * stor0[arg1].field_776
                else:
                    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               stor0[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_769), data=mem[128 len ceil32(stor0[arg1].field_769)])
    if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_768:
        if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_769:
            if 31 >= stor0[arg1].field_769:
                mem[128] = 256 * stor0[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_768 == stor0[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_769:
            if 31 >= stor0[arg1].field_769:
                mem[128] = 256 * stor0[arg1].field_776
            else:
                mem[128] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 3)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           Array(len=stor0[arg1].field_768, data=mem[128 len ceil32(stor0[arg1].field_769)])
}

function getAllFiles() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    s = 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _21 = mem[64]
        mem[64] = mem[64] + 128
        mem[_21] = stor0[idx].field_0
        mem[_21 + 32] = stor0[idx].field_256
        mem[_21 + 64] = stor0[idx].field_512
        if stor0[idx].field_768:
            if stor0[idx].field_768 == stor0[idx].field_769 < 32:
                revert with 'NH{q', 34
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx].field_769) + 32
            mem[_24] = stor0[idx].field_769
            if stor0[idx].field_768:
                if stor0[idx].field_768 == stor0[idx].field_769 < 32:
                    revert with 'NH{q', 34
                if stor0[idx].field_769:
                    if 31 >= stor0[idx].field_769:
                        mem[_24 + 32] = 256 * stor0[idx].field_776
                    else:
                        mem[0] = (4 * idx) + sha3(0) + 3
                        mem[_24 + 32] = stor[sha3((4 * idx) + ('name', 'stor0', 0) + 3)].field_0
                        t = _24 + 32
                        u = sha3(mem[0])
                        while _24 + stor0[idx].field_769 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_21 + 96] = _24
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if stor0[idx].field_768 == stor0[idx].field_769 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_769:
                mem[_21 + 96] = _24
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_769:
                mem[_24 + 32] = 256 * stor0[idx].field_776
                mem[_21 + 96] = _24
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(0) + 3
            mem[_24 + 32] = stor[sha3((4 * idx) + ('name', 'stor0', 0) + 3)].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor0[u].field_769 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 96] = _24
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_768 == stor0[idx].field_769 < 32:
            revert with 'NH{q', 34
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[idx].field_769) + 32
        mem[_25] = stor0[idx].field_769
        if stor0[idx].field_768:
            if stor0[idx].field_768 == stor0[idx].field_769 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_769:
                mem[_21 + 96] = _25
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_769:
                mem[_25 + 32] = 256 * stor0[idx].field_776
                mem[_21 + 96] = _25
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(0) + 3
            mem[_25 + 32] = stor[sha3((4 * idx) + ('name', 'stor0', 0) + 3)].field_0
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor0[u].field_769 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 96] = _25
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_768 == stor0[idx].field_769 < 32:
            revert with 'NH{q', 34
        if stor0[idx].field_769:
            if 31 >= stor0[idx].field_769:
                mem[_25 + 32] = 256 * stor0[idx].field_776
            else:
                mem[0] = (4 * idx) + sha3(0) + 3
                mem[_25 + 32] = stor[sha3((4 * idx) + ('name', 'stor0', 0) + 3)].field_0
                t = _25 + 32
                u = sha3(mem[0])
                while _25 + stor0[idx].field_769 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_21 + 96] = _25
        mem[s] = _21
        s = s + 32
        idx = idx + 1
        continue 
    _22 = mem[64]
    mem[mem[64]] = 32
    _23 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _23:
        mem[u] = t + -_22 - 64
        _38 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_38 + 32]
        mem[t + 64] = mem[_38 + 76 len 20]
        _43 = mem[_38 + 96]
        mem[t + 96] = 128
        _44 = mem[_43]
        mem[t + 128] = mem[_43]
        v = 0
        while v < _44:
            mem[t + v + 160] = mem[_43 + v + 32]
            v = v + 32
            continue 
        if ceil32(_44) > _44:
            mem[t + _44 + 160] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_44) + 160
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
