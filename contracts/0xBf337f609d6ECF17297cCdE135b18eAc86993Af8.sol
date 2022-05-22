contract main {




// =====================  Runtime code  =====================


address owner;
uint256 MAX_QUANTITY;
uint256 sub_f6e3e72d;
uint256 MAX_ENTRIES;
uint8 stor4;
uint8 stor4; offset 8
uint8 stor4; offset 16
uint256 stor4; offset 16
uint256 stor4; offset 8
uint256 stor4;
uint256 sub_40c7f6f3;
uint256 sub_66202c8e;
uint256 sub_2ce308b4;
mapping of uint256 sub_25c7e31a;

function sub_23be5868(?) payable {
    return bool(uint8(stor4.field_0))
}

function sub_25c7e31a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    return sub_25c7e31a[arg1[all]][arg2][arg3[all]]
}

function sub_2ce308b4(?) payable {
    return sub_2ce308b4
}

function sub_40c7f6f3(?) payable {
    return sub_40c7f6f3
}

function sub_447e8f60(?) payable {
    return bool(uint8(stor4.field_8))
}

function sub_66202c8e(?) payable {
    return sub_66202c8e
}

function MAX_ENTRIES() payable {
    return MAX_ENTRIES
}

function owner() payable {
    return owner
}

function MAX_QUANTITY() payable {
    return MAX_QUANTITY
}

function sub_eae2f9d4(?) payable {
    return bool(uint8(stor4.field_16))
}

function sub_f6e3e72d(?) payable {
    return sub_f6e3e72d
}

function _fallback() payable {
    revert
}

function sub_65fbc7f0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f6e3e72d = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1b987678(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_40c7f6f3 = arg1
}

function sub_34244ee7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_66202c8e = arg1
}

function sub_f65c0110(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2ce308b4 = arg1
}

function setMaxQuantity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_QUANTITY = arg1
}

function sub_42e8e65b(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor4.field_8) = Mask(248, 0, not bool(uint8(stor4.field_8)))
    emit 0xbb542b21: Array(len=9, data='EARLYBIRD'), bool(uint8(stor4.field_8))
}

function sub_a70740b9(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor4.field_16) = Mask(240, 0, not bool(uint8(stor4.field_16)))
    emit 0xbb542b21: Array(len=6, data='PUBLIC'), bool(uint8(stor4.field_16))
}

function sub_f489bb19(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor4.field_0) = not bool(uint8(stor4.field_0)) or Mask(248, 8, uint256(stor4.field_0))
    emit 0xbb542b21: Array(len=3, data='APE'), bool(uint8(stor4.field_0))
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

function sub_de26d940(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor4.field_8) = 0
    uint8(stor4.field_0) = 0
    if sub_2ce308b4 > -sub_66202c8e - 1:
        revert with 'NH{q', 17
    if sub_2ce308b4 + sub_66202c8e > -sub_40c7f6f3 - 1:
        revert with 'NH{q', 17
    sub_2ce308b4 = sub_2ce308b4 + sub_66202c8e + sub_40c7f6f3
    sub_66202c8e = 0
    sub_40c7f6f3 = 0
}

function sub_b79c26ad(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sha3(arg2[all]) == sha3('APE'):
        if not uint8(stor4.field_0):
            revert with 0, 'NOT_TAKING_RESERVATIONS_AT_THIS_TIME'
    else:
        if sha3(arg2[all]) == sha3('EARLYBIRD'):
            if not uint8(stor4.field_8):
                revert with 0, 'NOT_TAKING_RESERVATIONS_AT_THIS_TIME'
        else:
            if sha3(arg2[all]) != sha3('PUBLIC'):
                revert with 0, 'NOT_TAKING_RESERVATIONS_AT_THIS_TIME'
            if not uint8(stor4.field_16):
                revert with 0, 'NOT_TAKING_RESERVATIONS_AT_THIS_TIME'
    if arg4 > MAX_QUANTITY:
        revert with 0, 'QTY_MAX_LIMIT'
    if sub_f6e3e72d > -arg4 - 1:
        revert with 'NH{q', 17
    if sub_f6e3e72d + arg4 > MAX_ENTRIES:
        revert with 0, 'REACHED_CAPACITY'
    if sha3(arg2[all]) != sha3('PUBLIC'):
        if sha3(arg2[all]) != sha3('APE'):
            if sha3(arg2[all]) == sha3('APE'):
                if arg4 > sub_66202c8e:
                    revert with 0, 'RESERVATIONS_FULL'
            else:
                if sha3(arg2[all]) == sha3('EARLYBIRD'):
                    if arg4 > sub_40c7f6f3:
                        revert with 0, 'RESERVATIONS_FULL'
                else:
                    if sha3(arg2[all]) != sha3('PUBLIC'):
                        revert with 0, 'RESERVATIONS_FULL'
                    if arg4 > sub_2ce308b4:
                        revert with 0, 'RESERVATIONS_FULL'
            if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                revert with 0, 'ADDRESS_ALREADY_ADDED'
            sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = arg4
            if sub_f6e3e72d > -arg4 - 1:
                revert with 'NH{q', 17
            sub_f6e3e72d += arg4
            if sha3(arg2[all]) == sha3('APE'):
                if sub_66202c8e < arg4:
                    revert with 'NH{q', 17
                sub_66202c8e -= arg4
                emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
            else:
                if sha3(arg2[all]) == sha3('EARLYBIRD'):
                    if sub_40c7f6f3 < arg4:
                        revert with 'NH{q', 17
                    sub_40c7f6f3 -= arg4
                    emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                else:
                    if sha3(arg2[all]) == sha3('PUBLIC'):
                        if sub_2ce308b4 < arg4:
                            revert with 'NH{q', 17
                        sub_2ce308b4 -= arg4
                        emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
            emit 0xc636ca10: address(arg3), arg4, sub_f6e3e72d
        else:
            if arg4 <= sub_66202c8e:
                if sha3(arg2[all]) == sha3('APE'):
                    if arg4 > sub_66202c8e:
                        revert with 0, 'RESERVATIONS_FULL'
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if arg4 > sub_40c7f6f3:
                            revert with 0, 'RESERVATIONS_FULL'
                    else:
                        if sha3(arg2[all]) != sha3('PUBLIC'):
                            revert with 0, 'RESERVATIONS_FULL'
                        if arg4 > sub_2ce308b4:
                            revert with 0, 'RESERVATIONS_FULL'
                if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                    revert with 0, 'ADDRESS_ALREADY_ADDED'
                sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = arg4
                if sub_f6e3e72d > -arg4 - 1:
                    revert with 'NH{q', 17
                sub_f6e3e72d += arg4
                if sha3(arg2[all]) == sha3('APE'):
                    if sub_66202c8e < arg4:
                        revert with 'NH{q', 17
                    sub_66202c8e -= arg4
                    emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if sub_40c7f6f3 < arg4:
                            revert with 'NH{q', 17
                        sub_40c7f6f3 -= arg4
                        emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                    else:
                        if sha3(arg2[all]) == sha3('PUBLIC'):
                            if sub_2ce308b4 < arg4:
                                revert with 'NH{q', 17
                            sub_2ce308b4 -= arg4
                            emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
                emit 0xc636ca10: address(arg3), arg4, sub_f6e3e72d
            else:
                if sub_66202c8e <= 0:
                    revert with 0, 'RESERVATIONS_FULL'
                if sha3(arg2[all]) == sha3('APE'):
                    if sub_66202c8e > sub_66202c8e:
                        revert with 0, 'RESERVATIONS_FULL'
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if sub_66202c8e > sub_40c7f6f3:
                            revert with 0, 'RESERVATIONS_FULL'
                    else:
                        if sha3(arg2[all]) != sha3('PUBLIC'):
                            revert with 0, 'RESERVATIONS_FULL'
                        if sub_66202c8e > sub_2ce308b4:
                            revert with 0, 'RESERVATIONS_FULL'
                if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                    revert with 0, 'ADDRESS_ALREADY_ADDED'
                sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = sub_66202c8e
                if sub_f6e3e72d > -sub_66202c8e - 1:
                    revert with 'NH{q', 17
                sub_f6e3e72d += sub_66202c8e
                if sha3(arg2[all]) == sha3('APE'):
                    if sub_66202c8e < sub_66202c8e:
                        revert with 'NH{q', 17
                    sub_66202c8e = 0
                    emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if sub_40c7f6f3 < sub_66202c8e:
                            revert with 'NH{q', 17
                        sub_40c7f6f3 -= sub_66202c8e
                        emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                    else:
                        if sha3(arg2[all]) == sha3('PUBLIC'):
                            if sub_2ce308b4 < sub_66202c8e:
                                revert with 'NH{q', 17
                            sub_2ce308b4 -= sub_66202c8e
                            emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
                emit 0xc636ca10: address(arg3), sub_66202c8e, sub_f6e3e72d
    else:
        if arg4 > sub_2ce308b4:
            if sub_2ce308b4 <= 0:
                revert with 0, 'RESERVATIONS_FULL'
            if sha3(arg2[all]) == sha3('APE'):
                if sub_2ce308b4 > sub_66202c8e:
                    revert with 0, 'RESERVATIONS_FULL'
            else:
                if sha3(arg2[all]) == sha3('EARLYBIRD'):
                    if sub_2ce308b4 > sub_40c7f6f3:
                        revert with 0, 'RESERVATIONS_FULL'
                else:
                    if sha3(arg2[all]) != sha3('PUBLIC'):
                        revert with 0, 'RESERVATIONS_FULL'
                    if sub_2ce308b4 > sub_2ce308b4:
                        revert with 0, 'RESERVATIONS_FULL'
            if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                revert with 0, 'ADDRESS_ALREADY_ADDED'
            sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = sub_2ce308b4
            if sub_f6e3e72d > -sub_2ce308b4 - 1:
                revert with 'NH{q', 17
            sub_f6e3e72d += sub_2ce308b4
            if sha3(arg2[all]) == sha3('APE'):
                if sub_66202c8e < sub_2ce308b4:
                    revert with 'NH{q', 17
                sub_66202c8e -= sub_2ce308b4
                emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
            else:
                if sha3(arg2[all]) == sha3('EARLYBIRD'):
                    if sub_40c7f6f3 < sub_2ce308b4:
                        revert with 'NH{q', 17
                    sub_40c7f6f3 -= sub_2ce308b4
                    emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                else:
                    if sha3(arg2[all]) == sha3('PUBLIC'):
                        if sub_2ce308b4 < sub_2ce308b4:
                            revert with 'NH{q', 17
                        sub_2ce308b4 = 0
                        emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
            emit 0xc636ca10: address(arg3), sub_2ce308b4, sub_f6e3e72d
        else:
            if sha3(arg2[all]) != sha3('APE'):
                if sha3(arg2[all]) == sha3('APE'):
                    if arg4 > sub_66202c8e:
                        revert with 0, 'RESERVATIONS_FULL'
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if arg4 > sub_40c7f6f3:
                            revert with 0, 'RESERVATIONS_FULL'
                    else:
                        if sha3(arg2[all]) != sha3('PUBLIC'):
                            revert with 0, 'RESERVATIONS_FULL'
                        if arg4 > sub_2ce308b4:
                            revert with 0, 'RESERVATIONS_FULL'
                if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                    revert with 0, 'ADDRESS_ALREADY_ADDED'
                sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = arg4
                if sub_f6e3e72d > -arg4 - 1:
                    revert with 'NH{q', 17
                sub_f6e3e72d += arg4
                if sha3(arg2[all]) == sha3('APE'):
                    if sub_66202c8e < arg4:
                        revert with 'NH{q', 17
                    sub_66202c8e -= arg4
                    emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
                else:
                    if sha3(arg2[all]) == sha3('EARLYBIRD'):
                        if sub_40c7f6f3 < arg4:
                            revert with 'NH{q', 17
                        sub_40c7f6f3 -= arg4
                        emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                    else:
                        if sha3(arg2[all]) == sha3('PUBLIC'):
                            if sub_2ce308b4 < arg4:
                                revert with 'NH{q', 17
                            sub_2ce308b4 -= arg4
                            emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
                emit 0xc636ca10: address(arg3), arg4, sub_f6e3e72d
            else:
                if arg4 <= sub_66202c8e:
                    if sha3(arg2[all]) == sha3('APE'):
                        if arg4 > sub_66202c8e:
                            revert with 0, 'RESERVATIONS_FULL'
                    else:
                        if sha3(arg2[all]) == sha3('EARLYBIRD'):
                            if arg4 > sub_40c7f6f3:
                                revert with 0, 'RESERVATIONS_FULL'
                        else:
                            if sha3(arg2[all]) != sha3('PUBLIC'):
                                revert with 0, 'RESERVATIONS_FULL'
                            if arg4 > sub_2ce308b4:
                                revert with 0, 'RESERVATIONS_FULL'
                    if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                        revert with 0, 'ADDRESS_ALREADY_ADDED'
                    sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = arg4
                    if sub_f6e3e72d > -arg4 - 1:
                        revert with 'NH{q', 17
                    sub_f6e3e72d += arg4
                    if sha3(arg2[all]) == sha3('APE'):
                        if sub_66202c8e < arg4:
                            revert with 'NH{q', 17
                        sub_66202c8e -= arg4
                        emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
                    else:
                        if sha3(arg2[all]) == sha3('EARLYBIRD'):
                            if sub_40c7f6f3 < arg4:
                                revert with 'NH{q', 17
                            sub_40c7f6f3 -= arg4
                            emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                        else:
                            if sha3(arg2[all]) == sha3('PUBLIC'):
                                if sub_2ce308b4 < arg4:
                                    revert with 'NH{q', 17
                                sub_2ce308b4 -= arg4
                                emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
                    emit 0xc636ca10: address(arg3), arg4, sub_f6e3e72d
                else:
                    if sub_66202c8e <= 0:
                        revert with 0, 'RESERVATIONS_FULL'
                    if sha3(arg2[all]) == sha3('APE'):
                        if sub_66202c8e > sub_66202c8e:
                            revert with 0, 'RESERVATIONS_FULL'
                    else:
                        if sha3(arg2[all]) == sha3('EARLYBIRD'):
                            if sub_66202c8e > sub_40c7f6f3:
                                revert with 0, 'RESERVATIONS_FULL'
                        else:
                            if sha3(arg2[all]) != sha3('PUBLIC'):
                                revert with 0, 'RESERVATIONS_FULL'
                            if sub_66202c8e > sub_2ce308b4:
                                revert with 0, 'RESERVATIONS_FULL'
                    if sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]]:
                        revert with 0, 'ADDRESS_ALREADY_ADDED'
                    sub_25c7e31a[arg1[all]][address(arg3)][arg5[all]] = sub_66202c8e
                    if sub_f6e3e72d > -sub_66202c8e - 1:
                        revert with 'NH{q', 17
                    sub_f6e3e72d += sub_66202c8e
                    if sha3(arg2[all]) == sha3('APE'):
                        if sub_66202c8e < sub_66202c8e:
                            revert with 'NH{q', 17
                        sub_66202c8e = 0
                        emit 0x486cab5d: Array(len=arg2.length, data=arg2[all]), sub_66202c8e
                    else:
                        if sha3(arg2[all]) == sha3('EARLYBIRD'):
                            if sub_40c7f6f3 < sub_66202c8e:
                                revert with 'NH{q', 17
                            sub_40c7f6f3 -= sub_66202c8e
                            emit 0xb76c2e4c: Array(len=arg2.length, data=arg2[all]), sub_40c7f6f3
                        else:
                            if sha3(arg2[all]) == sha3('PUBLIC'):
                                if sub_2ce308b4 < sub_66202c8e:
                                    revert with 'NH{q', 17
                                sub_2ce308b4 -= sub_66202c8e
                                emit 0xe5c2b16f: Array(len=arg2.length, data=arg2[all]), sub_2ce308b4
                    emit 0xc636ca10: address(arg3), sub_66202c8e, sub_f6e3e72d
}



}
