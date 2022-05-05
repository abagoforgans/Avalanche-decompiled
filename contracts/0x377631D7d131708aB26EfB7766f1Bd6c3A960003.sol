contract main {




// =====================  Runtime code  =====================


#
#  - sub_22319c63(?)
#  - sub_5160ead6(?)
#  - sub_69a1f6a2(?)
#  - sub_835eb983(?)
#  - sub_953b7800(?)
#
mapping of struct stor0;
uint128 num1;
uint128 num2; offset 128
bool stor2; offset 256
uint128 stor2;
uint128 stor2; offset 128
mapping of struct stor3;
mapping of struct stor4;
uint256 sub_ffe20fb4;
uint256 gas2;
uint8 sub_5ea6c72f;
uint8 sub_a421c740; offset 8
uint256 stor7; offset 16
uint256 sub_da567008;
uint256 num;

function num2() payable {
    return num2
}

function num1() payable {
    return num1
}

function num() payable {
    return num
}

function gas2() payable {
    return gas2
}

function sub_5ea6c72f(?) payable {
    return bool(sub_5ea6c72f)
}

function sub_a421c740(?) payable {
    return bool(sub_a421c740)
}

function sub_da567008(?) payable {
    return sub_da567008
}

function sub_ffe20fb4(?) payable {
    return sub_ffe20fb4
}

function _fallback() payable {
    revert
}

function testOverflow() payable {
    revert with 'NH{q', 17
}

function sub_58e7cb81(?) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function sub_b4cb46b5(?) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function sub_1f835769(?) payable {
    return uint128(stor2.field_0), uint128(stor2.field_128)
}

function playerInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stor0[arg1].field_0, stor0[arg1].field_128
}

function sub_633b642e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if uint128(stor2.field_0) > -uint128(arg1) + test266151307():
        revert with 'NH{q', 17
    uint128(stor2.field_0) = 0
    stor2.field_256 % 1 = 0
}

function sub_14053c7a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint128(arg1)
    if uint128(stor2.field_0) > -uint128(arg1) + test266151307():
        revert with 'NH{q', 17
    uint128(stor2.field_0) = uint128(uint128(arg1) + uint128(stor2.field_0))
}

function sub_4a6661ff(?) payable {
    sub_ffe20fb4 = gas_remaining
    idx = 0
    while idx < 10000:
        if 0 > !idx:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    gas2 = gas_remaining
}

function sub_f772d382(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[164 len 64] = 3365437186, arg2, mem[164 len 28]
    call address(arg1).mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    sub_5ea6c72f = uint8(bool(ext_call.success))
}

function sub_37129730(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[164 len 64] = 3583731566, arg2, mem[164 len 28]
    call address(arg1).mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168]
    sub_a421c740 = 1
    stor7 = Mask(240, 8, bool(ext_call.success)) >> 8
}

function sub_09a7bbe2(?) payable {
    if stor0[msg.sender].field_0 > test266151307():
        revert with 'NH{q', 17
    stor0[msg.sender].field_0 = uint128(stor0[msg.sender].field_0 + 1)
    if stor0[msg.sender].field_128 > test266151307():
        revert with 'NH{q', 17
    stor0[msg.sender].field_128 = uint64(stor0[msg.sender].field_128 + 1)
}

function sub_3e37f6e3(?) payable {
    if stor0[msg.sender].field_0 > test266151307():
        revert with 'NH{q', 17
    if stor0[msg.sender].field_128 > test266151307():
        revert with 'NH{q', 17
    stor0[msg.sender].field_0 = uint128(stor0[msg.sender].field_0 + 1)
    stor0[msg.sender].field_128 = uint64(stor0[msg.sender].field_128 + 1)
}

function sub_82a6267a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    stor3[msg.sender].field_512 = 1
    stor3[msg.sender].field_768 = arg2
    if stor3[msg.sender].field_0:
        if stor3[msg.sender].field_0 == uint255(stor3[msg.sender].field_0) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor3[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor3[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[msg.sender].field_0 == stor3[msg.sender].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor3[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[msg.sender].field_0 = 0
            idx = 0
            while stor3[msg.sender].field_1 + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_638598ce(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint128(arg2)
    stor4[msg.sender].field_0 = 1
    stor4[msg.sender].field_8 = uint128(arg2)
    if stor4[msg.sender].field_256:
        if stor4[msg.sender].field_256 == uint255(stor4[msg.sender].field_256) * 0.5 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[msg.sender].field_256 = 0
            idx = 0
            while (uint255(stor4[msg.sender].field_256) * 0.5) + 31 / 32 > idx:
                stor4[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[msg.sender].field_256 == stor4[msg.sender].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor4[msg.sender][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[msg.sender].field_256 = 0
            idx = 0
            while stor4[msg.sender].field_257 + 31 / 32 > idx:
                stor4[msg.sender][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_ce5df684(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == uint255(stor4[arg1].field_256) * 0.5 < 32:
            revert with 'NH{q', 34
        if stor4[arg1].field_256:
            if stor4[arg1].field_256 == uint255(stor4[arg1].field_256) * 0.5 < 32:
                revert with 'NH{q', 34
            if not Mask(256, -1, stor4[arg1].field_256):
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                if 31 < uint255(stor4[arg1].field_256) * 0.5:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_512:
                            if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if Mask(256, -1, stor4[arg1].field_512):
                                if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                    return bool(stor4[arg1].field_0), 
                                           stor4[arg1].field_0,
                                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_513:
                                if 31 < stor4[arg1].field_513:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                    return bool(stor4[arg1].field_0), 
                                           stor4[arg1].field_0,
                                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        return bool(stor4[arg1].field_0), 
                               stor4[arg1].field_0,
                               Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                               ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor4[arg1].field_512):
                            if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], stor4[arg1].field_513, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]),
                                       ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_513:
                            if 31 < stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], stor4[arg1].field_513, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]),
                                       ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    mem[128] = 256 * stor4[arg1].field_264
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_512:
                            if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if not Mask(256, -1, stor4[arg1].field_512):
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                                else:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_513:
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= stor4[arg1].field_513:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                                else:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        return bool(stor4[arg1].field_0), 
                               stor4[arg1].field_0,
                               Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                               ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
        else:
            if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor4[arg1].field_257:
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                if 31 < stor4[arg1].field_257:
                    mem[128] = stor4[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_512:
                            if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if Mask(256, -1, stor4[arg1].field_512):
                                if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                    return bool(stor4[arg1].field_0), 
                                           stor4[arg1].field_0,
                                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        else:
                            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                                revert with 'NH{q', 34
                            if stor4[arg1].field_513:
                                if 31 < stor4[arg1].field_513:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                    return bool(stor4[arg1].field_0), 
                                           stor4[arg1].field_0,
                                           Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                           ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                        if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                            mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        return bool(stor4[arg1].field_0), 
                               stor4[arg1].field_0,
                               Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                               ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor4[arg1].field_512):
                            if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], stor4[arg1].field_513, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]),
                                       ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_513:
                            if 31 < stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], stor4[arg1].field_513, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]),
                                       ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                            mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                    if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                        mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    mem[128] = 256 * stor4[arg1].field_264
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_512:
                            if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                                revert with 'NH{q', 34
                            if not Mask(256, -1, stor4[arg1].field_512):
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                                else:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                                revert with 'NH{q', 34
                            if not stor4[arg1].field_513:
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                            else:
                                if 31 >= stor4[arg1].field_513:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                                else:
                                    mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                    idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                        mem[idx + 32] = stor4[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                    mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                                if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                    mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        return bool(stor4[arg1].field_0), 
                               stor4[arg1].field_0,
                               Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                               ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(stor4[arg1].field_256) * 0.5) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(stor4[arg1].field_256) * 0.5) > uint255(stor4[arg1].field_256) * 0.5:
                                mem[(uint255(stor4[arg1].field_256) * 0.5) + ceil32(uint255(stor4[arg1].field_256) * 0.5) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            mem[(2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]
                            if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                                mem[stor4[arg1].field_513 + (2 * ceil32(uint255(stor4[arg1].field_256) * 0.5)) + ceil32(stor4[arg1].field_513) + 352] = 0
        return bool(stor4[arg1].field_0), 
               stor4[arg1].field_0,
               Array(len=2 * Mask(256, -1, stor4[arg1].field_256), data=mem[128 len ceil32(uint255(stor4[arg1].field_256) * 0.5)], stor4[arg1].field_512, mem[ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160 len ceil32(stor4[arg1].field_513)]),
               ceil32(uint255(stor4[arg1].field_256) * 0.5) + 160
    if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor4[arg1].field_256:
        if stor4[arg1].field_256 == uint255(stor4[arg1].field_256) * 0.5 < 32:
            revert with 'NH{q', 34
        if not Mask(256, -1, stor4[arg1].field_256):
            if stor4[arg1].field_512:
                if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                return bool(stor4[arg1].field_0), 
                       stor4[arg1].field_0,
                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                       ceil32(stor4[arg1].field_257) + 160
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_512:
                if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not Mask(256, -1, stor4[arg1].field_512):
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                        idx = ceil32(stor4[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_513:
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if 31 >= stor4[arg1].field_513:
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                        idx = ceil32(stor4[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor4[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
        else:
            if 31 < uint255(stor4[arg1].field_256) * 0.5:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor4[arg1].field_512):
                            if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                       ceil32(stor4[arg1].field_257) + 160
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_513:
                            if 31 < stor4[arg1].field_513:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                       ceil32(stor4[arg1].field_257) + 160
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                        mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(stor4[arg1].field_257) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor4[arg1].field_512):
                        if 31 < uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            return bool(stor4[arg1].field_0), 
                                   stor4[arg1].field_0,
                                   Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], stor4[arg1].field_513, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]),
                                   ceil32(stor4[arg1].field_257) + 160
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_513:
                        if 31 < stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            return bool(stor4[arg1].field_0), 
                                   stor4[arg1].field_0,
                                   Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], stor4[arg1].field_513, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]),
                                   ceil32(stor4[arg1].field_257) + 160
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                    mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                mem[128] = 256 * stor4[arg1].field_264
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(stor4[arg1].field_257) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
    else:
        if stor4[arg1].field_256 == stor4[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor4[arg1].field_257:
            if stor4[arg1].field_512:
                if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                        if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                            mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                return bool(stor4[arg1].field_0), 
                       stor4[arg1].field_0,
                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                       ceil32(stor4[arg1].field_257) + 160
            if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor4[arg1].field_512:
                if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                    revert with 'NH{q', 34
                if not Mask(256, -1, stor4[arg1].field_512):
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                        idx = ceil32(stor4[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor4[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if not stor4[arg1].field_513:
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if 31 >= stor4[arg1].field_513:
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                        idx = ceil32(stor4[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                            mem[idx + 32] = stor4[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                    if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                        mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
        else:
            if 31 < stor4[arg1].field_257:
                mem[128] = stor4[arg1][1].field_0
                idx = 128
                s = 0
                while stor4[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if Mask(256, -1, stor4[arg1].field_512):
                            if 31 < uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                       ceil32(stor4[arg1].field_257) + 160
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if stor4[arg1].field_513:
                            if 31 < stor4[arg1].field_513:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                                return bool(stor4[arg1].field_0), 
                                       stor4[arg1].field_0,
                                       Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], uint255(stor4[arg1].field_512) * 0.5, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                                       ceil32(stor4[arg1].field_257) + 160
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                    if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                        mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                    mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                        mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(stor4[arg1].field_257) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if Mask(256, -1, stor4[arg1].field_512):
                        if 31 < uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            return bool(stor4[arg1].field_0), 
                                   stor4[arg1].field_0,
                                   Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], stor4[arg1].field_513, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]),
                                   ceil32(stor4[arg1].field_257) + 160
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_513:
                        if 31 < stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                            return bool(stor4[arg1].field_0), 
                                   stor4[arg1].field_0,
                                   Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], stor4[arg1].field_513, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]),
                                   ceil32(stor4[arg1].field_257) + 160
                        mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                    mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                    mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
            else:
                mem[128] = 256 * stor4[arg1].field_264
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if stor4[arg1].field_512:
                        if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                            revert with 'NH{q', 34
                        if not Mask(256, -1, stor4[arg1].field_512):
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                                mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    else:
                        if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                            revert with 'NH{q', 34
                        if not stor4[arg1].field_513:
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                        else:
                            if 31 >= stor4[arg1].field_513:
                                mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                            else:
                                mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                                idx = ceil32(stor4[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                    mem[idx + 32] = stor4[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                                mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = 0
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 320] = uint255(stor4[arg1].field_512) * 0.5
                            mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352 len ceil32(uint255(stor4[arg1].field_512) * 0.5)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]
                            if ceil32(uint255(stor4[arg1].field_512) * 0.5) > uint255(stor4[arg1].field_512) * 0.5:
                                mem[(uint255(stor4[arg1].field_512) * 0.5) + (2 * ceil32(stor4[arg1].field_257)) + ceil32(uint255(stor4[arg1].field_512) * 0.5) + 352] = 0
                    return bool(stor4[arg1].field_0), 
                           stor4[arg1].field_0,
                           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], 2 * Mask(256, -1, stor4[arg1].field_512), mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(uint255(stor4[arg1].field_512) * 0.5)]),
                           ceil32(stor4[arg1].field_257) + 160
                if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                    revert with 'NH{q', 34
                if stor4[arg1].field_512:
                    if stor4[arg1].field_512 == uint255(stor4[arg1].field_512) * 0.5 < 32:
                        revert with 'NH{q', 34
                    if not Mask(256, -1, stor4[arg1].field_512):
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= uint255(stor4[arg1].field_512) * 0.5:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + (uint255(stor4[arg1].field_512) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                else:
                    if stor4[arg1].field_512 == stor4[arg1].field_513 < 32:
                        revert with 'NH{q', 34
                    if not stor4[arg1].field_513:
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
                    else:
                        if 31 >= stor4[arg1].field_513:
                            mem[ceil32(stor4[arg1].field_257) + 160] = 256 * stor4[arg1].field_520
                        else:
                            mem[ceil32(stor4[arg1].field_257) + 160] = stor4[arg1][2].field_0
                            idx = ceil32(stor4[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor4[arg1].field_257) + stor4[arg1].field_513 + 128 > idx:
                                mem[idx + 32] = stor4[arg1][s + 2].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor4[arg1].field_257) > stor4[arg1].field_257:
                            mem[stor4[arg1].field_257 + ceil32(stor4[arg1].field_257) + ceil32(stor4[arg1].field_513) + 320] = 0
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 320] = stor4[arg1].field_513
                        mem[(2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352 len ceil32(stor4[arg1].field_513)] = mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]
                        if ceil32(stor4[arg1].field_513) > stor4[arg1].field_513:
                            mem[stor4[arg1].field_513 + (2 * ceil32(stor4[arg1].field_257)) + ceil32(stor4[arg1].field_513) + 352] = 0
    return bool(stor4[arg1].field_0), 
           stor4[arg1].field_0,
           Array(len=stor4[arg1].field_256, data=mem[128 len ceil32(stor4[arg1].field_257)], stor4[arg1].field_512, mem[ceil32(stor4[arg1].field_257) + 160 len ceil32(stor4[arg1].field_513)]),
           ceil32(stor4[arg1].field_257) + 160
}



}
