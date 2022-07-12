contract main {




// =====================  Runtime code  =====================


address owner;
address nextOwner;
address collectorAddress;
array of struct sub_1432fadc;
array of struct sub_b03127df;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of struct sub_93cb4c85;
mapping of struct sub_29879a9b;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint128 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;

function sub_13eb4671(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_1432fadc(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_1432fadc.length:
        revert with 0, 50
    if sub_1432fadc[arg1].field_160 > 1:
        revert with 0, 33
    if sub_1432fadc[arg1].field_160 >= 2:
        revert with 0, 33
    return sub_1432fadc[arg1].field_0, sub_1432fadc[arg1].field_0, sub_1432fadc[arg1].field_256, sub_1432fadc[arg1].field_512
}

function sub_29879a9b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 2
    if sub_29879a9b[arg1][arg2].field_160 >= 2:
        revert with 0, 33
    return sub_29879a9b[arg1][arg2].field_0, 
           sub_29879a9b[arg1][arg2].field_0,
           sub_29879a9b[arg1][arg2].field_256,
           sub_29879a9b[arg1][arg2].field_512
}

function nextOwner() payable {
    return nextOwner
}

function registrars(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function owner() payable {
    return owner
}

function collector() payable {
    return collectorAddress
}

function sub_93cb4c85(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 2
    if sub_93cb4c85[arg1][arg2].field_160 >= 2:
        revert with 0, 33
    return sub_93cb4c85[arg1][arg2].field_0, 
           sub_93cb4c85[arg1][arg2].field_0,
           sub_93cb4c85[arg1][arg2].field_256,
           sub_93cb4c85[arg1][arg2].field_512
}

function partners(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_b03127df(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_b03127df.length:
        revert with 0, 50
    if sub_b03127df[arg1].field_160 > 1:
        revert with 0, 33
    if sub_b03127df[arg1].field_160 >= 2:
        revert with 0, 33
    return sub_b03127df[arg1].field_0, sub_b03127df[arg1].field_0, sub_b03127df[arg1].field_256, sub_b03127df[arg1].field_512
}

function _fallback() payable {
    revert
}

function bytes32ToString(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return 32, 32, arg1
}

function updateCollector(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Owned: caller is not the owner'
    collectorAddress = arg1
}

function setNextOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Owned: caller is not the owner'
    nextOwner = arg1
    emit 0x15b1bde8: arg1
}

function sub_1b77b957(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Owned: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
}

function sub_e37ba622(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Owned: caller is not the owner'
    stor5[address(arg1)] = uint8(bool(arg2))
}

function acceptOwnership() payable {
    if nextOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owned: caller is not the nextOwner'
    owner = nextOwner
    emit OwnershipTransferred(owner, nextOwner);
    if owner != msg.sender:
        revert with 0, 'Owned: caller is not the owner'
    nextOwner = 0
    emit 0x15b1bde8 
    emit 0x0 
}

function stringToBytes32(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97] = mem[128]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
}

function sub_c9c37114(?) payable {
    mem[64] = (32 * sub_b03127df.length) + 128
    mem[96] = sub_b03127df.length
    s = 128
    idx = 0
    while idx < sub_b03127df.length:
        mem[0] = 4
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = sub_b03127df[idx].field_0
        if sub_b03127df[idx].field_160 > 1:
            revert with 0, 33
        mem[_13 + 32] = sub_b03127df[idx].field_160
        mem[_13 + 64] = sub_b03127df[idx].field_256
        mem[_13 + 96] = sub_b03127df[idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _15:
        _22 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        if mem[_22 + 32] >= 2:
            revert with 0, 33
        mem[s + 32] = mem[_22 + 32]
        mem[s + 64] = mem[_22 + 64]
        mem[s + 96] = mem[_22 + 116 len 12]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _14 + (128 * _15) + -mem[64] + 64
}

function sub_de4a0f76(?) payable {
    mem[64] = (32 * sub_1432fadc.length) + 128
    mem[96] = sub_1432fadc.length
    s = 128
    idx = 0
    while idx < sub_1432fadc.length:
        mem[0] = 3
        _13 = mem[64]
        mem[64] = mem[64] + 128
        mem[_13] = sub_1432fadc[idx].field_0
        if sub_1432fadc[idx].field_160 > 1:
            revert with 0, 33
        mem[_13 + 32] = sub_1432fadc[idx].field_160
        mem[_13 + 64] = sub_1432fadc[idx].field_256
        mem[_13 + 96] = sub_1432fadc[idx].field_512
        mem[s] = _13
        s = s + 32
        idx = idx + 1
        continue 
    _14 = mem[64]
    mem[mem[64]] = 32
    _15 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _15:
        _22 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        if mem[_22 + 32] >= 2:
            revert with 0, 33
        mem[s + 32] = mem[_22 + 32]
        mem[s + 64] = mem[_22 + 64]
        mem[s + 96] = mem[_22 + 116 len 12]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _14 + (128 * _15) + -mem[64] + 64
}

function sub_eb539a92(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 2
    if not stor5[tx.origin]:
        revert with 0, 'Invalid origin'
    if arg2 > 1:
        revert with 0, 33
    if sub_29879a9b[arg3][arg2].field_512:
        if sub_29879a9b[arg3][arg2].field_512 == test266151307():
            revert with 0, 17
        sub_29879a9b[arg3][arg2].field_512 = Mask(96, 0, sub_29879a9b[arg3][arg2].field_512 + 1)
        sub_29879a9b[arg3][arg2].field_0 = address(arg1)
    else:
        if arg2 > 1:
            revert with 0, 33
        sub_29879a9b[arg3][arg2].field_0 = address(arg1)
        if arg2 > 1:
            revert with 0, 33
        sub_29879a9b[arg3][arg2].field_0 = address(arg1)
        sub_29879a9b[arg3][arg2].field_160 = Mask(96, 0, arg2)
        sub_29879a9b[arg3][arg2].field_256 = arg3
        sub_29879a9b[arg3][arg2].field_512 = 1
        sub_29879a9b[arg3][arg2].field_520 = 0
    sub_1432fadc.length++
    sub_1432fadc[sub_1432fadc.length].field_0 = sub_29879a9b[arg3][arg2].field_0
    if sub_29879a9b[arg3][arg2].field_160 > 1:
        revert with 0, 33
    sub_1432fadc[sub_1432fadc.length].field_0 = sub_29879a9b[arg3][arg2].field_0
    sub_1432fadc[sub_1432fadc.length].field_160 = sub_29879a9b[arg3][arg2].field_160
    storC257[stor3.length] = sub_29879a9b[arg3][arg2].field_256
    storC257[stor3.length] = sub_29879a9b[arg3][arg2].field_512
    emit 0x7ef2382b: sub_29879a9b[arg3][arg2].field_0, 0, sub_29879a9b[arg3][arg2].field_256, sub_29879a9b[arg3][arg2].field_512, sub_1432fadc.length
}

function sub_dc54e913(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 2
    if not stor5[tx.origin]:
        revert with 0, 'Invalid origin'
    if arg2 > 1:
        revert with 0, 33
    if sub_93cb4c85[arg3][arg2].field_512:
        if sub_93cb4c85[arg3][arg2].field_512 == test266151307():
            revert with 0, 17
        sub_93cb4c85[arg3][arg2].field_512 = Mask(96, 0, sub_93cb4c85[arg3][arg2].field_512 + 1)
        sub_93cb4c85[arg3][arg2].field_0 = address(arg1)
        sub_b03127df.length++
        sub_b03127df[sub_b03127df.length].field_0 = sub_93cb4c85[arg3][arg2].field_0
        if sub_93cb4c85[arg3][arg2].field_160 > 1:
            revert with 0, 33
        sub_b03127df[sub_b03127df.length].field_0 = sub_93cb4c85[arg3][arg2].field_0
        sub_b03127df[sub_b03127df.length].field_160 = sub_93cb4c85[arg3][arg2].field_160
        stor8A35[stor4.length] = sub_93cb4c85[arg3][arg2].field_256
        stor8A35[stor4.length].field_0 = sub_93cb4c85[arg3][arg2].field_512
        stor6[address(arg1)] = 1
        emit 0xfacd9427: sub_93cb4c85[arg3][arg2].field_0, 0, sub_93cb4c85[arg3][arg2].field_256, sub_93cb4c85[arg3][arg2].field_512, sub_b03127df.length
    else:
        if arg2 > 1:
            revert with 0, 33
        sub_93cb4c85[arg3][arg2].field_0 = address(arg1)
        if arg2 > 1:
            revert with 0, 33
        sub_93cb4c85[arg3][arg2].field_0 = address(arg1)
        sub_93cb4c85[arg3][arg2].field_160 = Mask(96, 0, arg2)
        sub_93cb4c85[arg3][arg2].field_256 = arg3
        sub_93cb4c85[arg3][arg2].field_512 = 1
        sub_93cb4c85[arg3][arg2].field_520 = 0
        sub_b03127df.length++
        sub_b03127df[sub_b03127df.length].field_0 = address(arg1)
        if arg2 > 1:
            revert with 0, 33
        sub_b03127df[sub_b03127df.length].field_0 = address(arg1)
        sub_b03127df[sub_b03127df.length].field_160 = Mask(96, 0, arg2)
        stor8A35[stor4.length] = arg3
        stor8A35[stor4.length].field_0 = 1
        stor8A35[stor4.length].field_8 = 0
        stor6[address(arg1)] = 1
        if arg2 >= 2:
            revert with 0, 33
        emit 0xfacd9427: arg1 << 192, arg2, arg3, 1, sub_b03127df.length
}



}
