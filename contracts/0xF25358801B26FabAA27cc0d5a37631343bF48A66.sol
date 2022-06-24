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
    mem[arg1.length + 224] = 0
    stor0.length++
    stor0[stor0.length].field_0 = block.number
    stor0[stor0.length].field_256 = block.timestamp
    if stor0[stor0.length].field_512:
        if stor0[stor0.length].field_512 == stor0[stor0.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_512 = 0
            idx = 0
            while stor0[stor0.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor0.length].field_512 == stor0[stor0.length].field_513 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor0.length].field_512 = 0
            idx = 0
            while stor0[stor0.length].field_513 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor0.length) + ('name', 'stor0', 0) + 2)].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(arg1.length) + 224 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 224] = 0
    mem[ceil32(arg1.length) + 224] = 32
    mem[ceil32(arg1.length) + 256] = arg2.length
    mem[ceil32(arg1.length) + 288 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 288] = 0
    emit 0x3dbf154e: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 256 len ceil32(arg1.length) + -arg1.length + 32], arg2[all], mem[ceil32(arg1.length) + arg2.length + 288 len ceil32(arg2.length) - arg2.length], stor0.length, sha3(arg1[all])
}

function files(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor0.length
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_513), data=mem[128 len ceil32(stor0[arg1].field_513)])
    if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor[sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((3 * arg1) + ('name', 'stor0', 0) + 2)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1].field_512, data=mem[128 len ceil32(stor0[arg1].field_513)])
}

function getAllFiles() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    s = 128
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        _20 = mem[64]
        mem[64] = mem[64] + 96
        mem[_20] = stor0[idx].field_0
        mem[_20 + 32] = stor0[idx].field_256
        if stor0[idx].field_512:
            if stor0[idx].field_512 == stor0[idx].field_513 < 32:
                revert with 'NH{q', 34
            _23 = mem[64]
            mem[64] = mem[64] + ceil32(stor0[idx].field_513) + 32
            mem[_23] = stor0[idx].field_513
            if stor0[idx].field_512:
                if stor0[idx].field_512 == stor0[idx].field_513 < 32:
                    revert with 'NH{q', 34
                if stor0[idx].field_513:
                    if 31 >= stor0[idx].field_513:
                        mem[_23 + 32] = 256 * stor0[idx].field_520
                    else:
                        mem[0] = (3 * idx) + sha3(0) + 2
                        mem[_23 + 32] = stor[sha3((3 * idx) + ('name', 'stor0', 0) + 2)].field_0
                        t = _23 + 32
                        u = sha3(mem[0])
                        while _23 + stor0[idx].field_513 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_20 + 64] = _23
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if stor0[idx].field_512 == stor0[idx].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_513:
                mem[_20 + 64] = _23
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_513:
                mem[_23 + 32] = 256 * stor0[idx].field_520
                mem[_20 + 64] = _23
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(0) + 2
            mem[_23 + 32] = stor[sha3((3 * idx) + ('name', 'stor0', 0) + 2)].field_0
            t = _23 + 32
            u = sha3(mem[0])
            while _23 + stor0[u].field_513 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20 + 64] = _23
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_512 == stor0[idx].field_513 < 32:
            revert with 'NH{q', 34
        _24 = mem[64]
        mem[64] = mem[64] + ceil32(stor0[idx].field_513) + 32
        mem[_24] = stor0[idx].field_513
        if stor0[idx].field_512:
            if stor0[idx].field_512 == stor0[idx].field_513 < 32:
                revert with 'NH{q', 34
            if not stor0[idx].field_513:
                mem[_20 + 64] = _24
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor0[idx].field_513:
                mem[_24 + 32] = 256 * stor0[idx].field_520
                mem[_20 + 64] = _24
                mem[s] = _20
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(0) + 2
            mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor0', 0) + 2)].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor0[u].field_513 > t:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_20 + 64] = _24
            mem[t] = _20
            t = t + 32
            u = u + 1
            continue 
        if stor0[idx].field_512 == stor0[idx].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[idx].field_513:
            if 31 >= stor0[idx].field_513:
                mem[_24 + 32] = 256 * stor0[idx].field_520
            else:
                mem[0] = (3 * idx) + sha3(0) + 2
                mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor0', 0) + 2)].field_0
                t = _24 + 32
                u = sha3(mem[0])
                while _24 + stor0[idx].field_513 > t:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_20 + 64] = _24
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _22:
        mem[u] = t + -_21 - 64
        _36 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_36 + 32]
        _40 = mem[_36 + 64]
        mem[t + 64] = 96
        _41 = mem[_40]
        mem[t + 96] = mem[_40]
        v = 0
        while v < _41:
            mem[t + v + 128] = mem[_40 + v + 32]
            v = v + 32
            continue 
        if ceil32(_41) > _41:
            mem[t + _41 + 128] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_41) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
