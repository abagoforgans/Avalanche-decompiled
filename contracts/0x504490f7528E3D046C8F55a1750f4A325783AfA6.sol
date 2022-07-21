contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_9c20a863;

function owner() payable {
    return owner
}

function sub_9c20a863(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_9c20a863[arg1].field_0)
    return address(sub_9c20a863[arg1][arg2].field_0)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4c6da269(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require 4 <= ('cd', 4).length
    require ('cd', 4).length <= ('cd', 4).length
    require ('cd', 4).length - 4 >= 160
    require ('cd', 4)[0] == ('signextend', 15, ('cd', ('add', 40, ('cd', 4))))
    require ('cd', 4)[1] == ('signextend', 15, ('cd', ('add', 72, ('cd', 4))))
    require ('cd', 4)[2] == ('cd', 4)[2]
    require ('cd', 4)[3] == ('cd', 4)[3]
    require ('cd', 4)[4] == address(('cd', 4)[4])
    if ('cd', 4).length >= 4:
        return 32, 164, 
               Mask(32, 224, ('cd', 4)[0]) >> 224, ('signextend', 15, ('cd', ('add', 40, ('cd', 4)))), ('signextend', 15, ('cd', ('add', 72, ('cd', 4)))), cd[36], ('cd', 4)[3], address(cd[68]), 0 >> 1056,
               0
    return 32, 164, 
           Mask(32, 224, Mask(32, 224, ('cd', 4)[0]) and 0xffffffff00000000000000000000000000000000000000000000000000000000 << 8 * -('cd', 4).length + 4) >> 224, ('signextend', 15, ('cd', ('add', 40, ('cd', 4)))), ('signextend', 15, ('cd', ('add', 72, ('cd', 4)))), cd[36], ('cd', 4)[3], address(cd[68]), 0 >> 1056,
           0
}

function sub_358f0e1c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 64
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[0] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[0] + 4)]
    require 4 <= cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[(cd[4] + ('cd', 4)[0] + 4)] - 4 >= 160
    require cd[(cd[4] + ('cd', 4)[0] + 40)] == ('signextend', 15, ('cd', ('add', 40, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    mem[96] = cd[(cd[4] + ('cd', 4)[0] + 40)]
    require cd[(cd[4] + ('cd', 4)[0] + 72)] == ('signextend', 15, ('cd', ('add', 72, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))
    mem[128] = cd[(cd[4] + ('cd', 4)[0] + 72)]
    require cd[(cd[4] + ('cd', 4)[0] + 104)] == cd[(cd[4] + ('cd', 4)[0] + 104)]
    mem[160] = cd[(cd[4] + ('cd', 4)[0] + 104)]
    require cd[(cd[4] + ('cd', 4)[0] + 136)] == cd[(cd[4] + ('cd', 4)[0] + 136)]
    mem[192] = cd[(cd[4] + ('cd', 4)[0] + 136)]
    require cd[(cd[4] + ('cd', 4)[0] + 168)] == address(cd[(cd[4] + ('cd', 4)[0] + 168)])
    mem[224] = cd[(cd[4] + ('cd', 4)[0] + 168)]
    require ('cd', 4).length == address(('cd', 4).length)
    mem[0] = address(('cd', 4).length)
    mem[32] = 1
    mem[64] = (32 * uint256(sub_9c20a863[address(('cd', 4).length)].field_0)) + 288
    mem[256] = uint256(sub_9c20a863[address(('cd', 4).length)].field_0)
    if uint256(sub_9c20a863[address(('cd', 4).length)].field_0):
        mem[0] = sha3(address(('cd', 4).length), 1)
        mem[288] = address(sub_9c20a863[address(('cd', 4).length)].field_0)
        idx = 288
        s = 0
        while (32 * uint256(sub_9c20a863[address(('cd', 4).length)].field_0)) + 256 > idx:
            mem[idx + 32] = address(sub_9c20a863[address(('cd', 4).length)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if ('signextend', 15, ('cd', ('add', 40, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) >= uint256(sub_9c20a863[address(('cd', 4).length)].field_0):
        revert with 0, 50
    if ('signextend', 15, ('cd', ('add', 72, ('cd', 4), ('cd', ('add', 36, ('cd', 4)))))) >= uint256(sub_9c20a863[address(('cd', 4).length)].field_0):
        revert with 0, 50
    return cd[(cd[4] + ('cd', 4)[0] + 104)], 
           address(mem[(32 * ('signextend', 15, ('cd', ('add', 40, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))) + 288]),
           mem[(32 * ('signextend', 15, ('cd', ('add', 72, ('cd', 4), ('cd', ('add', 36, ('cd', 4))))))) + 300 len 20]
}

function sub_ffe3fd30(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = ('cd', 4).length
    mem[128 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + floor32(('cd', 36).length) + 129 > test266151307() or floor32(('cd', 36).length) + 129 < 128:
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + floor32(('cd', 36).length) + 129
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = (32 * ('cd', 4).length) + 160
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _39 = mem[64]
        if mem[64] + floor32(cd[(cd[36] + cd[idx] + 36)]) + 1 > test266151307() or mem[64] + floor32(cd[(cd[36] + cd[idx] + 36)]) + 1 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + floor32(cd[(cd[36] + cd[idx] + 36)]) + 1
        mem[_39] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + (32 * cd[(cd[36] + cd[idx] + 36)]) + 68 <= calldata.size
        t = cd[36] + cd[idx] + 68
        u = _39 + 32
        while t < cd[36] + cd[idx] + (32 * cd[(cd[36] + cd[idx] + 36)]) + 68:
            require cd[t] == address(cd[t])
            mem[u] = cd[t]
            t = t + 32
            u = u + 32
            continue 
        mem[s] = _39
        idx = idx + 32
        s = s + 32
        continue 
    if mem[96] != mem[(32 * ('cd', 4).length) + 128]:
        revert with 0, 'len mm'
    s = 0
    while s < mem[96]:
        if s >= mem[(32 * ('cd', 4).length) + 128]:
            revert with 0, 50
        if s >= mem[96]:
            revert with 0, 50
        mem[0] = mem[(32 * s) + 140 len 20]
        mem[32] = 1
        _57 = mem[mem[(32 * s) + (32 * ('cd', 4).length) + 160]]
        uint256(sub_9c20a863[mem[(32 * s) + 140 len 20]].field_0) = mem[mem[(32 * s) + (32 * ('cd', 4).length) + 160]]
        mem[0] = sha3(mem[(32 * s) + 140 len 20], 1)
        if not _57:
            t = sha3(sha3(mem[(32 * s) + 140 len 20], 1))
            while sha3(sha3(mem[(32 * s) + 140 len 20], 1)) + uint256(sub_9c20a863[mem[(32 * s) + 140 len 20]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
        else:
            t = sha3(sha3(mem[(32 * s) + 140 len 20], 1))
            u = mem[(32 * s) + (32 * ('cd', 4).length) + 160] + 32
            while mem[(32 * s) + (32 * ('cd', 4).length) + 160] + (32 * _57) + 32 > u:
                address(stor[t]) = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                continue 
            t = sha3(sha3(mem[(32 * s) + 140 len 20], 1)) + (Mask(251, 0, (32 * _57) + 31) >> 5)
            while sha3(sha3(mem[(32 * s) + 140 len 20], 1)) + uint256(sub_9c20a863[mem[(32 * s) + 140 len 20]].field_0) > t:
                uint256(stor[t]) = 0
                t = t + 1
                continue 
        if s == -1:
            revert with 0, 17
        s = s + 1
        continue 
    _50 = mem[64]
    mem[mem[64]] = 64
    _54 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _54:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_50 + 32] = (32 * _54) + 96
    _68 = mem[(32 * ('cd', 4).length) + 128]
    mem[_50 + (32 * _54) + 96] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = _50 + (32 * _54) + (32 * _68) + 128
    u = _50 + (32 * _54) + 128
    while idx < _68:
        mem[u] = t + -_50 + -(32 * _54) - 128
        _73 = mem[s]
        _75 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        w = _73 + 32
        x = t + 32
        while v < _75:
            mem[x] = mem[w + 12 len 20]
            v = v + 1
            w = w + 32
            x = x + 32
            continue 
        idx = idx + 1
        s = s + 32
        t = t + (32 * _75) + 32
        u = u + 32
        continue 
    emit 0x38a931c2: mem[mem[64] len t - mem[64]]
}



}
