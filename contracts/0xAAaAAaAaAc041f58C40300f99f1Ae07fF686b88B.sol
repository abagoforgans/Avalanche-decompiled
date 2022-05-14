contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return 0
}

function getRarity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[64] = 192
    mem[96] = 96
    s = 96
    idx = 3
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[192] = 32
    idx = 0
    s = 96
    t = mem[64] + 32
    u = mem[64] + 128
    while idx < 3:
        mem[t] = u - 224
        _6 = mem[s]
        _7 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _7:
            mem[v + u + 32] = mem[v + _6 + 32]
            v = v + 32
            continue 
        if ceil32(_7) > _7:
            mem[u + _7 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_7) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
