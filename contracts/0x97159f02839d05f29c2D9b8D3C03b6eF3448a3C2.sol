contract main {




// =====================  Runtime code  =====================


#
#  - getFee(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - sub_e98f6176(?)
#
address owner;
array of uint256 name;
uint256 m1;
uint256 b1;
uint256 sub_ce405095;
uint256 m2;
uint256 b2;
uint8 stor7;
uint256 sub_2bf838c3;
uint256 m3;
uint256 b3;
uint8 stor11;
uint256 sub_d33fa1fe;
uint256 sub_66b5ae1f;
uint256 sub_be142023;
uint256 sub_a5bef6d8;
uint8 stor16; offset 160
uint8 stor16; offset 168
address stor16;

function name() payable {
    return name[0 len name.length]
}

function b2() payable {
    return b2
}

function sub_2bf838c3(?) payable {
    return sub_2bf838c3
}

function sub_3ab2fb2b(?) payable {
    return bool(stor11)
}

function sub_5de322e3(?) payable {
    return bool(stor7)
}

function sub_66b5ae1f(?) payable {
    return sub_66b5ae1f
}

function owner() payable {
    return owner
}

function m2() payable {
    return m2
}

function m3() payable {
    return m3
}

function sub_a5bef6d8(?) payable {
    return sub_a5bef6d8
}

function m1() payable {
    return m1
}

function sub_be142023(?) payable {
    return sub_be142023
}

function sub_ce405095(?) payable {
    return sub_ce405095
}

function sub_d33fa1fe(?) payable {
    return sub_d33fa1fe
}

function b3() payable {
    return b3
}

function b1() payable {
    return b1
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_f2cfd551(?) payable {
    return sub_be142023, sub_66b5ae1f
}

function initialized() payable {
    if not uint8(stor16.field_160):
        return bool(uint8(stor16.field_160))
    return bool(uint8(stor16.field_168))
}

function sub_11cfe6a9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    sub_a5bef6d8 = arg1
}

function sub_97498845(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    sub_d33fa1fe = arg1
}

function sub_2c3609a0(?) payable {
    require calldata.size - 4 >= 64
    if address(stor16.field_0) != msg.sender:
        revert with 0, 'caller must be controller'
    sub_be142023 = arg1
    sub_66b5ae1f = arg2
}

function setAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    if uint8(stor16.field_160):
        revert with 0, 'addresses already set'
    address(stor16.field_0) = arg1
    uint8(stor16.field_160) = 1
}

function sub_d26e6aa4(?) payable {
    if sub_66b5ae1f > block.timestamp:
        revert with 0, 'sub overflow'
    if block.timestamp - sub_66b5ae1f > sub_d33fa1fe:
        return 0
    if not sub_be142023:
        if not sub_d33fa1fe:
            revert with 0, 'div by 0'
        if 0 / sub_d33fa1fe > sub_be142023:
            revert with 0, 'sub overflow'
        return (sub_be142023 - (0 / sub_d33fa1fe))
    if (block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_be142023 != block.timestamp - sub_66b5ae1f:
        revert with 0, 'mul overflow'
    if not sub_d33fa1fe:
        revert with 0, 'div by 0'
    if (block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_d33fa1fe > sub_be142023:
        revert with 0, 'sub overflow'
    return (sub_be142023 - ((block.timestamp * sub_be142023) - (sub_66b5ae1f * sub_be142023) / sub_d33fa1fe))
}

function sub_b34b408e(?) payable {
    require calldata.size - 4 >= 288
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'CallerNotOwner'
    if arg5 > arg7:
        revert with 0, 'Cutoffs must be increasing'
    if arg4 < arg2:
        revert with 0, 'slope cannot decrease'
    if arg6 < arg4:
        revert with 0, 'slope cannot decrease'
    name[] = Array(len=arg1.length, data=arg1[all])
    m1 = arg2
    b1 = arg3
    m2 = arg4
    if not arg2:
        if arg3 < 0:
            revert with 0, 'add overflow'
        if not arg4:
            if 0 <= arg3:
                b2 = arg3
            else:
                stor7 = 1
                if arg3 > 0:
                    revert with 0, 'sub overflow'
                b2 = -arg3
        else:
            if arg5 * arg4 / arg4 != arg5:
                revert with 0, 'mul overflow'
            if arg5 * arg4 / 10^18 <= arg3:
                b2 = arg3 - (arg5 * arg4 / 10^18)
            else:
                stor7 = 1
                if arg3 > arg5 * arg4 / 10^18:
                    revert with 0, 'sub overflow'
                b2 = (arg5 * arg4 / 10^18) - arg3
    else:
        if arg5 * arg2 / arg2 != arg5:
            revert with 0, 'mul overflow'
        if arg3 + (arg5 * arg2 / 10^18) < arg5 * arg2 / 10^18:
            revert with 0, 'add overflow'
        if not arg4:
            if 0 <= arg3 + (arg5 * arg2 / 10^18):
                b2 = arg3 + (arg5 * arg2 / 10^18)
            else:
                stor7 = 1
                if arg3 + (arg5 * arg2 / 10^18) > 0:
                    revert with 0, 'sub overflow'
                b2 = -arg3 - (arg5 * arg2 / 10^18)
        else:
            if arg5 * arg4 / arg4 != arg5:
                revert with 0, 'mul overflow'
            if arg5 * arg4 / 10^18 <= arg3 + (arg5 * arg2 / 10^18):
                b2 = arg3 + (arg5 * arg2 / 10^18) - (arg5 * arg4 / 10^18)
            else:
                stor7 = 1
                if arg3 + (arg5 * arg2 / 10^18) > arg5 * arg4 / 10^18:
                    revert with 0, 'sub overflow'
                b2 = (arg5 * arg4 / 10^18) - arg3 - (arg5 * arg2 / 10^18)
    sub_ce405095 = arg5
    m3 = arg6
    if not arg4:
        if b2 < 0:
            revert with 0, 'add overflow'
        if not arg6:
            if 0 <= b2:
                b3 = b2
            else:
                stor11 = 1
                if b2 > 0:
                    revert with 0, 'sub overflow'
                b3 = -b2
        else:
            if arg7 * arg6 / arg6 != arg7:
                revert with 0, 'mul overflow'
            if arg7 * arg6 / 10^18 <= b2:
                b3 = b2 - (arg7 * arg6 / 10^18)
            else:
                stor11 = 1
                if b2 > arg7 * arg6 / 10^18:
                    revert with 0, 'sub overflow'
                b3 = (arg7 * arg6 / 10^18) - b2
    else:
        if arg7 * arg4 / arg4 != arg7:
            revert with 0, 'mul overflow'
        if b2 + (arg7 * arg4 / 10^18) < arg7 * arg4 / 10^18:
            revert with 0, 'add overflow'
        if not arg6:
            if 0 <= b2 + (arg7 * arg4 / 10^18):
                b3 = b2 + (arg7 * arg4 / 10^18)
            else:
                stor11 = 1
                if b2 + (arg7 * arg4 / 10^18) > 0:
                    revert with 0, 'sub overflow'
                b3 = -b2 - (arg7 * arg4 / 10^18)
        else:
            if arg7 * arg6 / arg6 != arg7:
                revert with 0, 'mul overflow'
            if arg7 * arg6 / 10^18 <= b2 + (arg7 * arg4 / 10^18):
                b3 = b2 + (arg7 * arg4 / 10^18) - (arg7 * arg6 / 10^18)
            else:
                stor11 = 1
                if b2 + (arg7 * arg4 / 10^18) > arg7 * arg6 / 10^18:
                    revert with 0, 'sub overflow'
                b3 = (arg7 * arg6 / 10^18) - b2 - (arg7 * arg4 / 10^18)
    sub_2bf838c3 = arg7
    sub_a5bef6d8 = arg8
    sub_d33fa1fe = arg9
    uint8(stor16.field_168) = 1
}



}
