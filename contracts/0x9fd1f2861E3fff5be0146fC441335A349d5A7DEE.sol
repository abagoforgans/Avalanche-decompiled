contract main {




// =====================  Runtime code  =====================


uint256 sub_e2f2ee14;
array of uint256 sub_23a19ae3;
array of struct stor2;

function sub_23a19ae3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_23a19ae3[arg1]
}

function sub_5c55dcc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_23a19ae3[address(arg1)]
}

function sub_e2f2ee14(?) payable {
    return sub_e2f2ee14
}

function _fallback() payable {
    revert
}

function sub_58607697(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if sub_e2f2ee14 == -1:
        revert with 'NH{q', 17
    sub_e2f2ee14++
    if sub_23a19ae3[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    sub_23a19ae3[address(msg.sender)]++
    stor2.length++
    stor2[stor2.length].field_0 = msg.sender
    if stor2[stor2.length].field_256:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[stor2.length].field_256 == stor2[stor2.length].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor[sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[stor2.length].field_256 = 0
            idx = 0
            while stor2[stor2.length].field_257 + 31 / 32 > idx:
                stor[idx + sha3((3 * stor2.length) + ('name', 'stor2', 2) + 1)].field_0 = 0
                idx = idx + 1
                continue 
    stor2[stor2.length].field_512 = block.timestamp
    emit 0x6ff1d6bd: block.timestamp, Array(len=arg1.length, data=arg1[all]), msg.sender
}

function sub_f650f320(?) payable {
    mem[64] = (32 * stor2.length) + 128
    mem[96] = stor2.length
    s = 128
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        _21 = mem[64]
        mem[64] = mem[64] + 96
        mem[_21] = stor2[idx].field_0
        if stor2[idx].field_256:
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(stor2[idx].field_257) + 32
            mem[_24] = stor2[idx].field_257
            if stor2[idx].field_256:
                if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                    revert with 'NH{q', 34
                if stor2[idx].field_257:
                    if 31 >= stor2[idx].field_257:
                        mem[_24 + 32] = 256 * stor2[idx].field_264
                    else:
                        mem[0] = (3 * idx) + sha3(2) + 1
                        mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                        t = _24 + 32
                        u = sha3(mem[0])
                        while _24 + stor2[idx].field_257 > t:
                            mem[t + 32] = sub_23a19ae3[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_257:
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_257:
                mem[_24 + 32] = 256 * stor2[idx].field_264
                mem[_21 + 32] = _24
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(2) + 1
            mem[_24 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
            t = _24 + 32
            u = sha3(mem[0])
            while _24 + stor2[u].field_257 > t:
                mem[t + 32] = sub_23a19ae3[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _24
            mem[_21 + 64] = stor2[u].field_512
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_256 == stor2[idx].field_257 < 32:
            revert with 'NH{q', 34
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(stor2[idx].field_257) + 32
        mem[_25] = stor2[idx].field_257
        if stor2[idx].field_256:
            if stor2[idx].field_256 == stor2[idx].field_257 < 32:
                revert with 'NH{q', 34
            if not stor2[idx].field_257:
                mem[_21 + 32] = _25
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor2[idx].field_257:
                mem[_25 + 32] = 256 * stor2[idx].field_264
                mem[_21 + 32] = _25
                mem[_21 + 64] = stor2[idx].field_512
                mem[s] = _21
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (3 * idx) + sha3(2) + 1
            mem[_25 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
            t = _25 + 32
            u = sha3(mem[0])
            while _25 + stor2[u].field_257 > t:
                mem[t + 32] = sub_23a19ae3[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_21 + 32] = _25
            mem[_21 + 64] = stor2[u].field_512
            mem[t] = _21
            t = t + 32
            u = u + 1
            continue 
        if stor2[idx].field_256 == stor2[idx].field_257 < 32:
            revert with 'NH{q', 34
        if stor2[idx].field_257:
            if 31 >= stor2[idx].field_257:
                mem[_25 + 32] = 256 * stor2[idx].field_264
            else:
                mem[0] = (3 * idx) + sha3(2) + 1
                mem[_25 + 32] = stor[sha3((3 * idx) + ('name', 'stor2', 2) + 1)].field_0
                t = _25 + 32
                u = sha3(mem[0])
                while _25 + stor2[idx].field_257 > t:
                    mem[t + 32] = sub_23a19ae3[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_21 + 32] = _25
        mem[_21 + 64] = stor2[idx].field_512
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
        mem[t] = mem[mem[s] + 12 len 20]
        _41 = mem[_38 + 32]
        mem[t + 32] = 96
        _42 = mem[_41]
        mem[t + 96] = mem[_41]
        v = 0
        while v < _42:
            mem[t + v + 128] = mem[_41 + v + 32]
            v = v + 32
            continue 
        if ceil32(_42) > _42:
            mem[t + _42 + 128] = 0
        mem[t + 64] = mem[_38 + 64]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_42) + 128
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
