contract main {




// =====================  Runtime code  =====================


address owner;
array of struct tokenAtIndex;
mapping of uint256 stor2;
array of struct sub_9cd063a4;
uint256 MAX_GETTER_LENGTH;

function owner() payable {
    return owner
}

function getTokenAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tokenAtIndex.length <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg1 >= tokenAtIndex.length:
        revert with 'NH{q', 50
    return tokenAtIndex[arg1].field_0
}

function sub_9cd063a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9cd063a4[address(arg1)].field_0
}

function sub_b6a47ed5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_9cd063a4[address(arg1)].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    if arg2 >= sub_9cd063a4[address(arg1)].field_0:
        revert with 'NH{q', 50
    return sub_9cd063a4[address(arg1)][arg2].field_0
}

function MAX_GETTER_LENGTH() payable {
    return MAX_GETTER_LENGTH
}

function getNumTokens() payable {
    return tokenAtIndex.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_6a82d042(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return not sub_9cd063a4[address(arg1)][1][address(arg2)].field_0
}

function setMaxGetterLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_GETTER_LENGTH = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_c000651f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        if not sub_9cd063a4[address(arg1)][1][address(arg2)].field_0:
            sub_9cd063a4[address(arg1)].field_0++
            sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_0 = address(arg2)
            sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_160 = 0
            sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 = sub_9cd063a4[address(arg1)].field_0
    else:
        if not stor2[address(arg1)]:
            tokenAtIndex.length++
            tokenAtIndex[tokenAtIndex.length].field_0 = address(arg1)
            tokenAtIndex[tokenAtIndex.length].field_160 = 0
            stor2[address(arg1)] = tokenAtIndex.length
        emit 0x154f20e5: address(arg1)
        if not sub_9cd063a4[address(arg1)][1][address(arg2)].field_0:
            sub_9cd063a4[address(arg1)].field_0++
            sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_0 = address(arg2)
            sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_160 = 0
            sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 = sub_9cd063a4[address(arg1)].field_0
    emit 0xe6711280: address(arg1), address(arg2)
}

function sub_17118a41(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_9cd063a4[address(arg1)][1][address(arg2)].field_0:
        if sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_9cd063a4[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if sub_9cd063a4[address(arg1)].field_0 - 1 >= sub_9cd063a4[address(arg1)].field_0:
            revert with 'NH{q', 50
        if sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 - 1 >= sub_9cd063a4[address(arg1)].field_0:
            revert with 'NH{q', 50
        sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)][1][address(arg2)].field_0].field_0 = sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_0
        if sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 - 1 > -2:
            revert with 'NH{q', 17
        sub_9cd063a4[address(arg1)][1][sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_0].field_0 = sub_9cd063a4[address(arg1)][1][address(arg2)].field_0
        if not sub_9cd063a4[address(arg1)].field_0:
            revert with 'NH{q', 49
        sub_9cd063a4[address(arg1)][sub_9cd063a4[address(arg1)].field_0].field_0 = 0
        sub_9cd063a4[address(arg1)].field_0--
        sub_9cd063a4[address(arg1)][1][address(arg2)].field_0 = 0
    if not sub_9cd063a4[address(arg1)].field_0:
        if stor2[address(arg1)]:
            if stor2[address(arg1)] < 1:
                revert with 'NH{q', 17
            if tokenAtIndex.length < 1:
                revert with 'NH{q', 17
            if tokenAtIndex.length - 1 >= tokenAtIndex.length:
                revert with 'NH{q', 50
            if stor2[address(arg1)] - 1 >= tokenAtIndex.length:
                revert with 'NH{q', 50
            tokenAtIndex[stor2[address(arg1)]].field_0 = tokenAtIndex[tokenAtIndex.length].field_0
            if stor2[address(arg1)] - 1 > -2:
                revert with 'NH{q', 17
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
            if not tokenAtIndex.length:
                revert with 'NH{q', 49
            tokenAtIndex[tokenAtIndex.length].field_0 = 0
            tokenAtIndex.length--
            stor2[address(arg1)] = 0
        emit 0xe1a6940f: address(arg1)
    emit 0xab6627de: address(arg1), address(arg2)
}

function sub_3e9a58da(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 <= tokenAtIndex.length:
        if arg2 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if arg2:
            mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if arg1 > -idx - 1:
                revert with 'NH{q', 17
            if tokenAtIndex.length <= arg1 + idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if arg1 + idx >= tokenAtIndex.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if idx >= arg2:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('name', 'tokenAtIndex', 1) + arg1 + idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * arg2) + 128] = 32
        mem[(32 * arg2) + 160] = arg2
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < arg2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * arg2) + -mem[64] + 192
    if tokenAtIndex.length < arg1:
        revert with 'NH{q', 17
    if tokenAtIndex.length - arg1 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if tokenAtIndex.length - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = tokenAtIndex.length - arg1
    mem[64] = (32 * tokenAtIndex.length - arg1) + 128
    if not tokenAtIndex.length - arg1:
        idx = 0
        while idx < tokenAtIndex.length - arg1:
            if arg1 > -idx - 1:
                revert with 'NH{q', 17
            if tokenAtIndex.length <= arg1 + idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if arg1 + idx >= tokenAtIndex.length:
                revert with 'NH{q', 50
            mem[0] = 1
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('name', 'tokenAtIndex', 1) + arg1 + idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * tokenAtIndex.length - arg1) + 128] = 32
        _43 = mem[96]
        mem[(32 * tokenAtIndex.length - arg1) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _43:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * tokenAtIndex.length - arg1) + (32 * _43) + -mem[64] + 192
    mem[128 len 32 * tokenAtIndex.length - arg1] = call.data[calldata.size len 32 * tokenAtIndex.length - arg1]
    idx = 0
    while idx < tokenAtIndex.length - arg1:
        if arg1 > -idx - 1:
            revert with 'NH{q', 17
        if tokenAtIndex.length <= arg1 + idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if arg1 + idx >= tokenAtIndex.length:
            revert with 'NH{q', 50
        mem[0] = 1
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor[('name', 'tokenAtIndex', 1) + arg1 + idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * tokenAtIndex.length - arg1) + 128] = 32
    _44 = mem[96]
    mem[(32 * tokenAtIndex.length - arg1) + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * tokenAtIndex.length - arg1) + (32 * _44) + -mem[64] + 192
}

function sub_6a6d9b9a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 <= sub_9cd063a4[address(arg1)].field_0:
        if arg3 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[32] = 3
            if sub_9cd063a4[address(arg1)].field_0 <= arg2 + idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if arg2 + idx >= sub_9cd063a4[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 3)
            if idx >= arg3:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9cd063a4', 3)) + arg2 + idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * arg3) + 128] = 32
        mem[(32 * arg3) + 160] = arg3
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < arg3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (64 * arg3) + -mem[64] + 192
    if sub_9cd063a4[address(arg1)].field_0 < arg2:
        revert with 'NH{q', 17
    if sub_9cd063a4[address(arg1)].field_0 - arg2 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if sub_9cd063a4[address(arg1)].field_0 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_9cd063a4[address(arg1)].field_0 - arg2
    mem[64] = (32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + 128
    if not sub_9cd063a4[address(arg1)].field_0 - arg2:
        idx = 0
        while idx < sub_9cd063a4[address(arg1)].field_0 - arg2:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[32] = 3
            if sub_9cd063a4[address(arg1)].field_0 <= arg2 + idx:
                revert with 0, 'EnumerableSet: index out of bounds'
            if arg2 + idx >= sub_9cd063a4[address(arg1)].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(address(arg1), 3)
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9cd063a4', 3)) + arg2 + idx].field_0
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[(32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + 128] = 32
        _48 = mem[96]
        mem[(32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _48:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len (32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + (32 * _48) + -mem[64] + 192
    mem[128 len 32 * sub_9cd063a4[address(arg1)].field_0 - arg2] = call.data[calldata.size len 32 * sub_9cd063a4[address(arg1)].field_0 - arg2]
    idx = 0
    while idx < sub_9cd063a4[address(arg1)].field_0 - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[32] = 3
        if sub_9cd063a4[address(arg1)].field_0 <= arg2 + idx:
            revert with 0, 'EnumerableSet: index out of bounds'
        if arg2 + idx >= sub_9cd063a4[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 3)
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9cd063a4', 3)) + arg2 + idx].field_0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + 128] = 32
    _49 = mem[96]
    mem[(32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * sub_9cd063a4[address(arg1)].field_0 - arg2) + (32 * _49) + -mem[64] + 192
}



}
