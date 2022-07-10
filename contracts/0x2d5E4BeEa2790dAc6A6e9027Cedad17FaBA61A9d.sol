contract main {




// =====================  Runtime code  =====================


#
#  - sub_27dcb808(?)
#
uint256 sub_a114e7c8;
uint256 sub_496207fe;
mapping of uint256 sub_69577f3a;
mapping of uint8 stor3;
array of struct stor4;
mapping of uint8 stor5;
mapping of uint256 sub_410809d1;
mapping of uint8 stor7;
array of struct stor8;
mapping of uint8 stor9;
mapping of uint256 stor10;

function sub_410809d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_410809d1[arg1]
}

function sub_496207fe(?) payable {
    return sub_496207fe
}

function sub_69577f3a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_69577f3a[arg1]
}

function sub_a114e7c8(?) payable {
    return sub_a114e7c8
}

function sub_c820baed(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[arg1])
}

function sub_d8e0635f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function createA() payable {
    if stor3[address(msg.sender)]:
        revert with 0, 'aId already created!'
    stor3[address(msg.sender)] = 1
    sub_69577f3a[address(msg.sender)] = sub_a114e7c8
    emit 0x74128248: msg.sender, sub_a114e7c8
    if sub_a114e7c8 == -1:
        revert with 'NH{q', 17
    sub_a114e7c8++
}

function createB() payable {
    if stor7[address(msg.sender)]:
        revert with 0, 'bId already created!'
    stor7[address(msg.sender)] = 1
    sub_410809d1[address(msg.sender)] = sub_496207fe
    emit 0xd0924cd8: msg.sender, sub_496207fe
    if sub_496207fe == -1:
        revert with 'NH{q', 17
    sub_496207fe++
}

function sub_460d8b5b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    if sub_69577f3a[address(msg.sender)] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'aAddress not associated with aId!'
    if uint256(stor4[arg1].field_0) <= 0:
        revert with 0, 'no items to remove'
    if arg2 >= uint256(stor4[arg1].field_0):
        revert with 'NH{q', 50
    if address(stor4[arg1][arg2].field_0) != address(arg3):
        revert with 0, 'id index != bAddress'
    if arg2 >= uint256(stor4[arg1].field_256):
        revert with 'NH{q', 50
    if uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor4', 4))) + arg2].field_0) != arg4:
        revert with 0, 'id index != bId'
    if arg2 >= uint256(stor4[arg1].field_0):
        revert with 0, 'index out of range!'
    if uint256(stor4[arg1].field_0) < 1:
        revert with 'NH{q', 17
    if var89002 < uint256(stor4[arg1].field_0) - 1:
        if var101003 > -2:
            revert with 'NH{q', 17
        s = var103002 + 1
        t = var103005
        u = var103006
        while s < uint256(stor[t]):
            if u >= uint256(stor4[arg1].field_0):
                revert with 'NH{q', 50
            address(stor4[arg1][u].field_0) = address(stor[sha3(t) + s])
            if u > -2:
                revert with 'NH{q', 17
            if u + 1 >= uint256(stor4[arg1].field_256):
                revert with 'NH{q', 50
            if u >= uint256(stor4[arg1].field_256):
                revert with 'NH{q', 50
            uint256(stor4[arg1][u + 1].field_0) = uint256(stor4[arg1][u + 1].field_256)
            if u == -1:
                revert with 'NH{q', 17
            if uint256(stor4[arg1].field_0) < 1:
                revert with 'NH{q', 17
            if u + 1 < uint256(stor4[arg1].field_0) - 1:
                mem[0] = arg1
                mem[32] = 4
                if u + 1 > -2:
                    revert with 'NH{q', 17
                s = u + 2
                t = sha3(arg1, 4)
                u = u + 1
                continue 
            if not uint256(stor4[arg1].field_0):
                revert with 'NH{q', 49
            address(stor4[arg1][uint256(stor4[arg1].field_0)].field_0) = 0
            uint256(stor4[arg1].field_0)--
            if not uint256(stor4[arg1].field_256):
                revert with 'NH{q', 49
            uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor4', 4))) + uint256(stor4[arg1].field_256)].field_0) = 0
            uint256(stor4[arg1].field_256)--
            stor5[arg1][address(arg3)] = 0
        revert with 'NH{q', 50
    if not uint256(stor4[arg1].field_0):
        revert with 'NH{q', 49
    address(stor4[arg1][uint256(stor4[arg1].field_0)].field_0) = 0
    uint256(stor4[arg1].field_0)--
    if not uint256(stor4[arg1].field_256):
        revert with 'NH{q', 49
    uint256(stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'stor4', 4))) + uint256(stor4[arg1].field_256)].field_0) = 0
    uint256(stor4[arg1].field_256)--
    stor5[arg1][address(arg3)] = 0
}

function sub_b5134139(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if sub_69577f3a[address(msg.sender)] != cd[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'aId not associated with aAddress!'
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'unequal number of bAddresses and bIds!'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 6
        if sub_410809d1[address(cd[((32 * idx) + cd[36] + 36)])] != cd[((32 * idx) + cd[68] + 36)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'bAddress not associated with bId!'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[4], 5)
        if stor5[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])]:
            revert with 0, 'b previously added'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        uint256(stor4[cd[4]].field_0)++
        address(stor4[cd[4]][uint256(stor4[cd[4]].field_0)].field_0) = address(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        uint256(stor4[cd[4]].field_256)++
        uint256(stor[('array', 1, ('map', ('cd', 4), ('name', 'stor4', 4))) + uint256(stor4[cd[4]].field_256)].field_0) = cd[((32 * idx) + cd[68] + 36)]
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(cd[4], 5)
        stor5[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    idx = 0
    s = cd[36] + 36
    t = 96
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x42577d71: Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length]), msg.sender, cd[4], sha3(mem[96 len 32 * ('cd', 36).length])
}

function sub_93b5863e(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    if sub_410809d1[address(msg.sender)] != arg3:
        revert with 0, 'b != bId!'
    if sub_69577f3a[address(arg1)] != arg2:
        revert with 0, 'aAddress != aId'
    if bool(stor5[arg2][address(msg.sender)]) != 1:
        revert with 0, 'bId not in a!'
    if stor10[arg2][arg3][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))] != arg5:
        revert with 0, 'amt, date or description not correct!'
    if bool(uint8(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))].field_1024)) != 1:
        revert with 0, 'op not set or opData incorrect!'
    if stor9[arg2][arg3][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))]:
        revert with 0, 'previously opd!'
    idx = 0
    while idx < uint256(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))].field_256):
        mem[32] = sha3(arg2, 8)
        if idx >= uint256(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))].field_256):
            revert with 'NH{q', 50
        mem[0] = sha3(sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all])), sha3(arg2, 8)) + 1
        if uint256(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))][idx + 1].field_0) != arg3:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= uint256(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))].field_768):
            revert with 'NH{q', 50
        uint256(stor[(0.03125 / idx) + ('array', 3, ('map', ('sha3', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'), ('param', 'arg4'), ('arr', ('cd', ('add', 4, ('param', 'arg6'))), ('call.data', ('add', 36, ('param', 'arg6')), ('cd', ('add', 4, ('param', 'arg6')))))), ('map', ('param', 'arg2'), ('name', 'stor8', 8))))].field_0) = 256^(idx % 32) or !(255 * 256^(idx % 32)) and uint256(stor[(0.03125 / idx) + ('array', 3, ('map', ('sha3', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('param', 'arg2'), ('param', 'arg4'), ('arr', ('cd', ('add', 4, ('param', 'arg6'))), ('call.data', ('add', 36, ('param', 'arg6')), ('cd', ('add', 4, ('param', 'arg6')))))), ('map', ('param', 'arg2'), ('name', 'stor8', 8))))].field_0)
        stor9[arg2][arg3][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))] = 1
        mem[ceil32(arg6.length) + 288] = arg2
        mem[ceil32(arg6.length) + 320] = sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))
        emit 0xcb15ab8b: Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 320 len -arg6.length + ceil32(arg6.length) + 32], msg.sender, arg5
    if 0 >= uint256(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))].field_768):
        revert with 'NH{q', 50
    uint8(stor8[arg2][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))][3].field_0) = 1
    stor9[arg2][arg3][sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))] = 1
    mem[ceil32(arg6.length) + 288] = arg2
    mem[ceil32(arg6.length) + 320] = sha3(address(arg1), arg2, arg4, Array(len=arg6.length, data=arg6[all]))
    emit 0xcb15ab8b: Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[arg6.length + 320 len -arg6.length + ceil32(arg6.length) + 32], msg.sender, arg5
}

function sub_a4fefed2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = uint256(stor4[arg1].field_0)
    if not uint256(stor4[arg1].field_0):
        mem[64] = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
        mem[(32 * uint256(stor4[arg1].field_0)) + 128] = uint256(stor4[arg1].field_256)
        if not uint256(stor4[arg1].field_256):
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160] = 64
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 224] = uint256(stor4[arg1].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256
            while idx < uint256(stor4[arg1].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 192] = (96 * uint256(stor4[arg1].field_0)) + 96
            mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256] = uint256(stor4[arg1].field_256)
            mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 288 len 32 * uint256(stor4[arg1].field_256)] = mem[(32 * uint256(stor4[arg1].field_0)) + 160 len 32 * uint256(stor4[arg1].field_256)]
            return memory
              from (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
               len (96 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128
        mem[(32 * uint256(stor4[arg1].field_0)) + 160] = uint256(stor4[arg1][1].field_0)
        idx = (32 * uint256(stor4[arg1].field_0)) + 160
        s = 0
        while (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128 > idx:
            mem[idx + 32] = uint256(stor4[arg1][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = address(stor4[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor4[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor4[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
        mem[(32 * uint256(stor4[arg1].field_0)) + 128] = uint256(stor4[arg1].field_256)
        if uint256(stor4[arg1].field_256):
            mem[(32 * uint256(stor4[arg1].field_0)) + 160] = uint256(stor4[arg1][1].field_0)
            idx = (32 * uint256(stor4[arg1].field_0)) + 160
            s = 0
            while (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128 > idx:
                mem[idx + 32] = uint256(stor4[arg1][s + 1].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160] = 64
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 224] = uint256(stor4[arg1].field_0)
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < uint256(stor4[arg1].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 192] = (32 * uint256(stor4[arg1].field_0)) + 96
    mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256] = mem[(32 * uint256(stor4[arg1].field_0)) + 128]
    mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 288 len 32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]] = mem[(32 * uint256(stor4[arg1].field_0)) + 160 len 32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]]
    return memory
      from mem[64]
       len (64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + (32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]) + -mem[64] + 288
}

function sub_e76cf116(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = uint256(stor4[arg1].field_0)
    if not uint256(stor4[arg1].field_0):
        mem[64] = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
        mem[(32 * uint256(stor4[arg1].field_0)) + 128] = uint256(stor4[arg1].field_256)
        if not uint256(stor4[arg1].field_256):
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160] = 64
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 224] = uint256(stor4[arg1].field_0)
            idx = 0
            s = 128
            t = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256
            while idx < uint256(stor4[arg1].field_0):
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 192] = (96 * uint256(stor4[arg1].field_0)) + 96
            mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256] = uint256(stor4[arg1].field_256)
            mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 288 len 32 * uint256(stor4[arg1].field_256)] = mem[(32 * uint256(stor4[arg1].field_0)) + 160 len 32 * uint256(stor4[arg1].field_256)]
            return memory
              from (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
               len (96 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128
        mem[(32 * uint256(stor4[arg1].field_0)) + 160] = uint256(stor4[arg1][1].field_0)
        idx = (32 * uint256(stor4[arg1].field_0)) + 160
        s = 0
        while (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128 > idx:
            mem[idx + 32] = uint256(stor4[arg1][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        mem[128] = address(stor4[arg1].field_0)
        idx = 128
        s = 0
        while (32 * uint256(stor4[arg1].field_0)) + 96 > idx:
            mem[idx + 32] = address(stor4[arg1][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160
        mem[(32 * uint256(stor4[arg1].field_0)) + 128] = uint256(stor4[arg1].field_256)
        if uint256(stor4[arg1].field_256):
            mem[(32 * uint256(stor4[arg1].field_0)) + 160] = uint256(stor4[arg1][1].field_0)
            idx = (32 * uint256(stor4[arg1].field_0)) + 160
            s = 0
            while (32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 128 > idx:
                mem[idx + 32] = uint256(stor4[arg1][s + 1].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 160] = 64
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 224] = uint256(stor4[arg1].field_0)
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < uint256(stor4[arg1].field_0):
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 192] = (32 * uint256(stor4[arg1].field_0)) + 96
    mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 256] = mem[(32 * uint256(stor4[arg1].field_0)) + 128]
    mem[(64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + 288 len 32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]] = mem[(32 * uint256(stor4[arg1].field_0)) + 160 len 32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]]
    return memory
      from mem[64]
       len (64 * uint256(stor4[arg1].field_0)) + (32 * uint256(stor4[arg1].field_256)) + (32 * mem[(32 * uint256(stor4[arg1].field_0)) + 128]) + -mem[64] + 288
}

function sub_d8753bbe(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    if sub_69577f3a[address(msg.sender)] != cd[4]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'aAddress not associated with aId!'
    if ('cd', 68).length != uint256(stor4[cd[4]].field_0):
        revert with 0, 'amt and address mismatch'
    if ('cd', 68).length != uint256(stor4[cd[4]].field_256):
        revert with 0, 'amt and id mistmatch'
    if uint8(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_1024):
        revert with 0, 'op data already set!'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= uint256(stor4[cd[4]].field_0):
            revert with 'NH{q', 50
        uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_0)++
        address(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))][uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_0)].field_0) = address(stor4[cd[4]][idx].field_0)
        if idx >= uint256(stor4[cd[4]].field_256):
            revert with 'NH{q', 50
        uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_256)++
        uint256(stor[('array', 1, ('map', ('sha3', 'msg.sender', ('cd', 4), ('cd', 36), ('arr', ('cd', ('add', 4, ('cd', 100))), ('call.data', ('add', 36, ('cd', 100)), ('cd', ('add', 4, ('cd', 100)))))), ('map', ('cd', 4), ('name', 'stor8', 8)))) + uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_256)].field_0) = uint256(stor4[cd[4]][idx + 1].field_0)
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_512)++
        uint256(stor[('array', 2, ('map', ('sha3', 'msg.sender', ('cd', 4), ('cd', 36), ('arr', ('cd', ('add', 4, ('cd', 100))), ('call.data', ('add', 36, ('cd', 100)), ('cd', ('add', 4, ('cd', 100)))))), ('map', ('cd', 4), ('name', 'stor8', 8)))) + uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_512)].field_0) = cd[((32 * idx) + cd[68] + 36)]
        uint256(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_768)++
        uint256(stor[Mask(251, 0, stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_773) + ('array', 3, ('map', ('sha3', 'msg.sender', ('cd', 4), ('cd', 36), ('arr', ('cd', ('add', 4, ('cd', 100))), ('call.data', ('add', 36, ('cd', 100)), ('cd', ('add', 4, ('cd', 100)))))), ('map', ('cd', 4), ('name', 'stor8', 8))))].field_0) = 0
        if idx >= uint256(stor4[cd[4]].field_256):
            revert with 'NH{q', 50
        mem[0] = sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))
        mem[32] = sha3(uint256(stor4[cd[4]][idx + 1].field_0), sha3(cd[4], 10))
        stor10[cd[4]][uint256(stor4[cd[4]][idx + 1].field_0)][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))] = cd[((32 * idx) + cd[68] + 36)]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    uint8(stor8[cd[4]][sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))].field_1024) = 1
    idx = 0
    s = 0
    t = ceil32(('cd', 100).length) + 448
    while idx < uint256(stor4[cd[4]].field_0):
        mem[t] = address(stor4[cd[4]][s].field_0)
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[ceil32(('cd', 100).length) + (32 * uint256(stor4[cd[4]].field_0)) + 448] = uint256(stor4[cd[4]].field_256)
    idx = 0
    s = 0
    t = ceil32(('cd', 100).length) + (32 * uint256(stor4[cd[4]].field_0)) + 480
    while idx < uint256(stor4[cd[4]].field_256):
        mem[t] = uint256(stor4[cd[4]][s + 1].field_0)
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0xed597bed: cd[36], Array(len=uint256(stor4[cd[4]].field_0), data=mem[ceil32(('cd', 100).length) + 448 len (32 * uint256(stor4[cd[4]].field_0)) + (32 * uint256(stor4[cd[4]].field_256)) + 32], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length]), (32 * uint256(stor4[cd[4]].field_0)) + 160, (32 * uint256(stor4[cd[4]].field_0)) + (32 * uint256(stor4[cd[4]].field_256)) + 192, msg.sender, cd[4], sha3(msg.sender, cd[4], cd[36], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length]))
}



}
