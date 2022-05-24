contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
uint256 sub_eeae1066;
uint256 sub_5398f2e6;
uint256 sub_42b4bd61;
address stor17;

function sub_00b5a178(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 5
    require arg2 < stor8[arg1]
    return stor[sha3(arg1 + 8) + arg2]
}

function sub_42b4bd61(?) payable {
    return sub_42b4bd61
}

function sub_5398f2e6(?) payable {
    return sub_5398f2e6
}

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function sub_ea93f4f9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 7
    require arg2 < stor1[arg1]
    return stor[sha3(arg1 + 1) + arg2]
}

function sub_eeae1066(?) payable {
    return sub_eeae1066
}

function _fallback() payable {
    revert
}

function sub_73e12dd5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1513e73e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(arg1):
        sub_eeae1066 = arg2
    else:
        if 1 == uint8(arg1):
            sub_5398f2e6 = arg2
        else:
            if 2 == uint8(arg1):
                sub_42b4bd61 = arg2
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

function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 5:
        revert with 0, 17
    if block.number < 4:
        revert with 0, 17
    if block.number < 3:
        revert with 0, 17
    if block.number < 1:
        revert with 0, 17
    return sha3(block.hash(block.number - 5), block.hash(block.number - 4), tx.origin, block.hash(block.number - 3), block.hash(block.number - 1), arg1, block.timestamp)
}

function sub_cdcf7476(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    require ext_code.size(stor17)
    staticcall stor17.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    if not ext_call.return_data[0]:
        if ext_call.return_data[63 len 1] >= stor8.length:
            revert with 0, 50
        if 0 > !stor8[ext_call.return_data[63 len 1]]:
            revert with 0, 17
        if ext_call.return_data[319 len 1] >= stor9.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] > !stor9[ext_call.return_data[319 len 1]]:
            revert with 0, 17
        if ext_call.return_data[159 len 1] >= stor10.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] > !stor10[ext_call.return_data[159 len 1]]:
            revert with 0, 17
        if ext_call.return_data[223 len 1] >= stor11.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] > !stor11[ext_call.return_data[223 len 1]]:
            revert with 0, 17
        if ext_call.return_data[255 len 1] >= stor12.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] > !stor12[ext_call.return_data[255 len 1]]:
            revert with 0, 17
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] + stor12[ext_call.return_data[255 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if uint8(arg2) and stor13 > -1 / uint8(arg2):
            revert with 0, 17
        if (100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 > !(uint8(arg2) * stor13 / 100):
            revert with 0, 17
        if ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg2) * stor13 / 100) <= 100:
            return (((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg2) * stor13 / 100))
    else:
        if ext_call.return_data[63 len 1] >= stor1.length:
            revert with 0, 50
        if 0 > !stor1[ext_call.return_data[63 len 1]]:
            revert with 0, 17
        if ext_call.return_data[95 len 1] >= stor2.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] > !stor2[ext_call.return_data[95 len 1]]:
            revert with 0, 17
        if ext_call.return_data[127 len 1] >= stor3.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] > !stor3[ext_call.return_data[127 len 1]]:
            revert with 0, 17
        if ext_call.return_data[159 len 1] >= stor4.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] > !stor4[ext_call.return_data[159 len 1]]:
            revert with 0, 17
        if ext_call.return_data[191 len 1] >= stor5.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] > !stor5[ext_call.return_data[191 len 1]]:
            revert with 0, 17
        if ext_call.return_data[223 len 1] >= stor6.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] > !stor6[ext_call.return_data[223 len 1]]:
            revert with 0, 17
        if ext_call.return_data[287 len 1] >= stor7.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] > !stor7[ext_call.return_data[287 len 1]]:
            revert with 0, 17
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] + stor7[ext_call.return_data[287 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if uint8(arg2) and stor13 > -1 / uint8(arg2):
            revert with 0, 17
        if (100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 > !(uint8(arg2) * stor13 / 100):
            revert with 0, 17
        if ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg2) * stor13 / 100) <= 100:
            return (((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg2) * stor13 / 100))
    return 100
}

function sub_c53b7443(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if uint8(arg1) < 25:
        if uint8(arg2) < 25:
            if 2 == uint8(arg3):
                if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return sub_eeae1066, 30 * sub_eeae1066 / 100
            if 3 == uint8(arg3):
                if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return 30 * sub_eeae1066 / 100, sub_eeae1066
            if uint8(arg3) != 1:
                return sub_eeae1066, sub_eeae1066
            if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            return 50 * sub_eeae1066 / 100, 50 * sub_eeae1066 / 100
        if uint8(arg2) >= 50:
            if 2 == uint8(arg3):
                if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return sub_eeae1066, 30 * sub_42b4bd61 / 100
            if 3 == uint8(arg3):
                if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return 30 * sub_eeae1066 / 100, sub_42b4bd61
            if uint8(arg3) != 1:
                return sub_eeae1066, sub_42b4bd61
            if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            return 50 * sub_eeae1066 / 100, 50 * sub_42b4bd61 / 100
        if 2 == uint8(arg3):
            if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return sub_eeae1066, 30 * sub_5398f2e6 / 100
        if 3 == uint8(arg3):
            if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return 30 * sub_eeae1066 / 100, sub_5398f2e6
        if uint8(arg3) != 1:
            return sub_eeae1066, sub_5398f2e6
        if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        return 50 * sub_eeae1066 / 100, 50 * sub_5398f2e6 / 100
    if uint8(arg1) >= 50:
        if uint8(arg2) < 25:
            if 2 == uint8(arg3):
                if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return sub_42b4bd61, 30 * sub_eeae1066 / 100
            if 3 == uint8(arg3):
                if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return 30 * sub_42b4bd61 / 100, sub_eeae1066
            if uint8(arg3) != 1:
                return sub_42b4bd61, sub_eeae1066
            if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            return 50 * sub_42b4bd61 / 100, 50 * sub_eeae1066 / 100
        if uint8(arg2) >= 50:
            if 2 == uint8(arg3):
                if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return sub_42b4bd61, 30 * sub_42b4bd61 / 100
            if 3 == uint8(arg3):
                if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                    revert with 0, 17
                return 30 * sub_42b4bd61 / 100, sub_42b4bd61
            if uint8(arg3) != 1:
                return sub_42b4bd61, sub_42b4bd61
            if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            return 50 * sub_42b4bd61 / 100, 50 * sub_42b4bd61 / 100
        if 2 == uint8(arg3):
            if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return sub_42b4bd61, 30 * sub_5398f2e6 / 100
        if 3 == uint8(arg3):
            if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return 30 * sub_42b4bd61 / 100, sub_5398f2e6
        if uint8(arg3) != 1:
            return sub_42b4bd61, sub_5398f2e6
        if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        return 50 * sub_42b4bd61 / 100, 50 * sub_5398f2e6 / 100
    if uint8(arg2) < 25:
        if 2 == uint8(arg3):
            if sub_eeae1066 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return sub_5398f2e6, 30 * sub_eeae1066 / 100
        if 3 == uint8(arg3):
            if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return 30 * sub_5398f2e6 / 100, sub_eeae1066
        if uint8(arg3) != 1:
            return sub_5398f2e6, sub_eeae1066
        if sub_eeae1066 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        return 50 * sub_5398f2e6 / 100, 50 * sub_eeae1066 / 100
    if uint8(arg2) >= 50:
        if 2 == uint8(arg3):
            if sub_42b4bd61 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return sub_5398f2e6, 30 * sub_42b4bd61 / 100
        if 3 == uint8(arg3):
            if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
                revert with 0, 17
            return 30 * sub_5398f2e6 / 100, sub_42b4bd61
        if uint8(arg3) != 1:
            return sub_5398f2e6, sub_42b4bd61
        if sub_42b4bd61 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
            revert with 0, 17
        return 50 * sub_5398f2e6 / 100, 50 * sub_42b4bd61 / 100
    if 2 == uint8(arg3):
        if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
            revert with 0, 17
        return sub_5398f2e6, 30 * sub_5398f2e6 / 100
    if 3 == uint8(arg3):
        if sub_5398f2e6 > 0x888888888888888888888888888888888888888888888888888888888888888:
            revert with 0, 17
        return 30 * sub_5398f2e6 / 100, sub_5398f2e6
    if uint8(arg3) != 1:
        return sub_5398f2e6, sub_5398f2e6
    if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
        revert with 0, 17
    if sub_5398f2e6 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
        revert with 0, 17
    return 50 * sub_5398f2e6 / 100, 50 * sub_5398f2e6 / 100
}

function sub_39a95178(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require ext_code.size(stor17)
    staticcall stor17.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not bool(ceil32(return_data.size) + 416 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    if not ext_call.return_data[0]:
        if ext_call.return_data[63 len 1] >= stor8.length:
            revert with 0, 50
        if 0 > !stor8[ext_call.return_data[63 len 1]]:
            revert with 0, 17
        if ext_call.return_data[319 len 1] >= stor9.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] > !stor9[ext_call.return_data[319 len 1]]:
            revert with 0, 17
        if ext_call.return_data[159 len 1] >= stor10.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] > !stor10[ext_call.return_data[159 len 1]]:
            revert with 0, 17
        if ext_call.return_data[223 len 1] >= stor11.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] > !stor11[ext_call.return_data[223 len 1]]:
            revert with 0, 17
        if ext_call.return_data[255 len 1] >= stor12.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] > !stor12[ext_call.return_data[255 len 1]]:
            revert with 0, 17
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] + stor12[ext_call.return_data[255 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if uint8(arg3) and stor13 > -1 / uint8(arg3):
            revert with 0, 17
        if (100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 > !(uint8(arg3) * stor13 / 100):
            revert with 0, 17
        if ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) <= 100:
            require ext_code.size(stor17)
            staticcall stor17.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
                revert with 0, 65
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require ext_call.return_data[64] == ext_call.return_data[95 len 1]
            require ext_call.return_data[96] == ext_call.return_data[127 len 1]
            require ext_call.return_data[128] == ext_call.return_data[159 len 1]
            require ext_call.return_data[160] == ext_call.return_data[191 len 1]
            require ext_call.return_data[192] == ext_call.return_data[223 len 1]
            require ext_call.return_data[224] == ext_call.return_data[255 len 1]
            require ext_call.return_data[256] == ext_call.return_data[287 len 1]
            require ext_call.return_data[288] == ext_call.return_data[319 len 1]
            if not ext_call.return_data[0]:
                if ext_call.return_data[63 len 1] >= stor8.length:
                    revert with 0, 50
                if 0 > !stor8[ext_call.return_data[63 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[319 len 1] >= stor9.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] > !stor9[ext_call.return_data[319 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[159 len 1] >= stor10.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] > !stor10[ext_call.return_data[159 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[223 len 1] >= stor11.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] > !stor11[ext_call.return_data[223 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[255 len 1] >= stor12.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] > !stor12[ext_call.return_data[255 len 1]]:
                    revert with 0, 17
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] + stor12[ext_call.return_data[255 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if uint8(arg4) and stor13 > -1 / uint8(arg4):
                    revert with 0, 17
                if (100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 > !(uint8(arg4) * stor13 / 100):
                    revert with 0, 17
                if ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100) <= 100:
                    if ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > !(((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100)):
                        revert with 0, 17
                    if arg5 and ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                        revert with 0, 17
                    if not ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100):
                        revert with 0, 18
                    return (((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100))
            else:
                if ext_call.return_data[63 len 1] >= stor1.length:
                    revert with 0, 50
                if 0 > !stor1[ext_call.return_data[63 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[95 len 1] >= stor2.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] > !stor2[ext_call.return_data[95 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[127 len 1] >= stor3.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] > !stor3[ext_call.return_data[127 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[159 len 1] >= stor4.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] > !stor4[ext_call.return_data[159 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[191 len 1] >= stor5.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] > !stor5[ext_call.return_data[191 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[223 len 1] >= stor6.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] > !stor6[ext_call.return_data[223 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[287 len 1] >= stor7.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] > !stor7[ext_call.return_data[287 len 1]]:
                    revert with 0, 17
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] + stor7[ext_call.return_data[287 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if uint8(arg4) and stor13 > -1 / uint8(arg4):
                    revert with 0, 17
                if (100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 > !(uint8(arg4) * stor13 / 100):
                    revert with 0, 17
                if ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100) <= 100:
                    if ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > !(((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100)):
                        revert with 0, 17
                    if arg5 and ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                        revert with 0, 17
                    if not ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100):
                        revert with 0, 18
                    return (((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100))
            if ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > -101:
                revert with 0, 17
            if arg5 and ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                revert with 0, 17
            if not ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + 100:
                revert with 0, 18
            return (((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor8[uint8(ext_call.return_data[32])]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg3) * stor13 / 100) + 100)
    else:
        if ext_call.return_data[63 len 1] >= stor1.length:
            revert with 0, 50
        if 0 > !stor1[ext_call.return_data[63 len 1]]:
            revert with 0, 17
        if ext_call.return_data[95 len 1] >= stor2.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] > !stor2[ext_call.return_data[95 len 1]]:
            revert with 0, 17
        if ext_call.return_data[127 len 1] >= stor3.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] > !stor3[ext_call.return_data[127 len 1]]:
            revert with 0, 17
        if ext_call.return_data[159 len 1] >= stor4.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] > !stor4[ext_call.return_data[159 len 1]]:
            revert with 0, 17
        if ext_call.return_data[191 len 1] >= stor5.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] > !stor5[ext_call.return_data[191 len 1]]:
            revert with 0, 17
        if ext_call.return_data[223 len 1] >= stor6.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] > !stor6[ext_call.return_data[223 len 1]]:
            revert with 0, 17
        if ext_call.return_data[287 len 1] >= stor7.length:
            revert with 0, 50
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] > !stor7[ext_call.return_data[287 len 1]]:
            revert with 0, 17
        if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] + stor7[ext_call.return_data[287 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if uint8(arg3) and stor13 > -1 / uint8(arg3):
            revert with 0, 17
        if (100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 > !(uint8(arg3) * stor13 / 100):
            revert with 0, 17
        if ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) <= 100:
            require ext_code.size(stor17)
            staticcall stor17.getTokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 320
            if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
                revert with 0, 65
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[32] == ext_call.return_data[63 len 1]
            require ext_call.return_data[64] == ext_call.return_data[95 len 1]
            require ext_call.return_data[96] == ext_call.return_data[127 len 1]
            require ext_call.return_data[128] == ext_call.return_data[159 len 1]
            require ext_call.return_data[160] == ext_call.return_data[191 len 1]
            require ext_call.return_data[192] == ext_call.return_data[223 len 1]
            require ext_call.return_data[224] == ext_call.return_data[255 len 1]
            require ext_call.return_data[256] == ext_call.return_data[287 len 1]
            require ext_call.return_data[288] == ext_call.return_data[319 len 1]
            if not ext_call.return_data[0]:
                if ext_call.return_data[63 len 1] >= stor8.length:
                    revert with 0, 50
                if 0 > !stor8[ext_call.return_data[63 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[319 len 1] >= stor9.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] > !stor9[ext_call.return_data[319 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[159 len 1] >= stor10.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] > !stor10[ext_call.return_data[159 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[223 len 1] >= stor11.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] > !stor11[ext_call.return_data[223 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[255 len 1] >= stor12.length:
                    revert with 0, 50
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] > !stor12[ext_call.return_data[255 len 1]]:
                    revert with 0, 17
                if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] + stor12[ext_call.return_data[255 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if uint8(arg4) and stor13 > -1 / uint8(arg4):
                    revert with 0, 17
                if (100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 > !(uint8(arg4) * stor13 / 100):
                    revert with 0, 17
                if ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100) <= 100:
                    if ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > !(((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100)):
                        revert with 0, 17
                    if arg5 and ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                        revert with 0, 17
                    if not ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100):
                        revert with 0, 18
                    return (((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100))
            else:
                if ext_call.return_data[63 len 1] >= stor1.length:
                    revert with 0, 50
                if 0 > !stor1[ext_call.return_data[63 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[95 len 1] >= stor2.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] > !stor2[ext_call.return_data[95 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[127 len 1] >= stor3.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] > !stor3[ext_call.return_data[127 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[159 len 1] >= stor4.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] > !stor4[ext_call.return_data[159 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[191 len 1] >= stor5.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] > !stor5[ext_call.return_data[191 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[223 len 1] >= stor6.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] > !stor6[ext_call.return_data[223 len 1]]:
                    revert with 0, 17
                if ext_call.return_data[287 len 1] >= stor7.length:
                    revert with 0, 50
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] > !stor7[ext_call.return_data[287 len 1]]:
                    revert with 0, 17
                if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] + stor7[ext_call.return_data[287 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 0, 17
                if uint8(arg4) and stor13 > -1 / uint8(arg4):
                    revert with 0, 17
                if (100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 > !(uint8(arg4) * stor13 / 100):
                    revert with 0, 17
                if ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100) <= 100:
                    if ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > !(((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100)):
                        revert with 0, 17
                    if arg5 and ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                        revert with 0, 17
                    if not ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100):
                        revert with 0, 18
                    return (((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100))
            if ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > -101:
                revert with 0, 17
            if arg5 and ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) > -1 / arg5:
                revert with 0, 17
            if not ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + 100:
                revert with 0, 18
            return (((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 * arg5) + (uint8(arg3) * stor13 / 100 * arg5) / ((100 * stor1[uint8(ext_call.return_data[32])]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg3) * stor13 / 100) + 100)
    require ext_code.size(stor17)
    staticcall stor17.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    if not bool((2 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    if not ext_call.return_data[0]:
        if ext_call.return_data[63 len 1] >= stor8.length:
            revert with 0, 50
        if 0 > !stor8[ext_call.return_data[63 len 1]]:
            revert with 0, 17
        if ext_call.return_data[319 len 1] >= stor9.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] > !stor9[ext_call.return_data[319 len 1]]:
            revert with 0, 17
        if ext_call.return_data[159 len 1] >= stor10.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] > !stor10[ext_call.return_data[159 len 1]]:
            revert with 0, 17
        if ext_call.return_data[223 len 1] >= stor11.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] > !stor11[ext_call.return_data[223 len 1]]:
            revert with 0, 17
        if ext_call.return_data[255 len 1] >= stor12.length:
            revert with 0, 50
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] > !stor12[ext_call.return_data[255 len 1]]:
            revert with 0, 17
        if stor8[ext_call.return_data[63 len 1]] + stor9[ext_call.return_data[319 len 1]] + stor10[ext_call.return_data[159 len 1]] + stor11[ext_call.return_data[223 len 1]] + stor12[ext_call.return_data[255 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if uint8(arg4) and stor13 > -1 / uint8(arg4):
            revert with 0, 17
        if (100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50 > !(uint8(arg4) * stor13 / 100):
            revert with 0, 17
        if ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100) > 100:
            if arg5 and 100 > -1 / arg5:
                revert with 0, 17
            return (100 * arg5 / 200)
        if 100 > !(((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100)):
            revert with 0, 17
        if arg5 and 100 > -1 / arg5:
            revert with 0, 17
        if not ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100) + 100:
            revert with 0, 18
        return (100 * arg5 / ((100 * stor8[ext_call.return_data[63 len 1]]) + (100 * stor9[ext_call.return_data[319 len 1]]) + (100 * stor10[ext_call.return_data[159 len 1]]) + (100 * stor11[ext_call.return_data[223 len 1]]) + (100 * stor12[ext_call.return_data[255 len 1]]) / 50) + (uint8(arg4) * stor13 / 100) + 100)
    if ext_call.return_data[63 len 1] >= stor1.length:
        revert with 0, 50
    if 0 > !stor1[ext_call.return_data[63 len 1]]:
        revert with 0, 17
    if ext_call.return_data[95 len 1] >= stor2.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] > !stor2[ext_call.return_data[95 len 1]]:
        revert with 0, 17
    if ext_call.return_data[127 len 1] >= stor3.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] > !stor3[ext_call.return_data[127 len 1]]:
        revert with 0, 17
    if ext_call.return_data[159 len 1] >= stor4.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] > !stor4[ext_call.return_data[159 len 1]]:
        revert with 0, 17
    if ext_call.return_data[191 len 1] >= stor5.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] > !stor5[ext_call.return_data[191 len 1]]:
        revert with 0, 17
    if ext_call.return_data[223 len 1] >= stor6.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] > !stor6[ext_call.return_data[223 len 1]]:
        revert with 0, 17
    if ext_call.return_data[287 len 1] >= stor7.length:
        revert with 0, 50
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] > !stor7[ext_call.return_data[287 len 1]]:
        revert with 0, 17
    if stor1[ext_call.return_data[63 len 1]] + stor2[ext_call.return_data[95 len 1]] + stor3[ext_call.return_data[127 len 1]] + stor4[ext_call.return_data[159 len 1]] + stor5[ext_call.return_data[191 len 1]] + stor6[ext_call.return_data[223 len 1]] + stor7[ext_call.return_data[287 len 1]] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if uint8(arg4) and stor13 > -1 / uint8(arg4):
        revert with 0, 17
    if (100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70 > !(uint8(arg4) * stor13 / 100):
        revert with 0, 17
    if ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100) > 100:
        if arg5 and 100 > -1 / arg5:
            revert with 0, 17
        return (100 * arg5 / 200)
    if 100 > !(((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100)):
        revert with 0, 17
    if arg5 and 100 > -1 / arg5:
        revert with 0, 17
    if not ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100) + 100:
        revert with 0, 18
    return (100 * arg5 / ((100 * stor1[ext_call.return_data[63 len 1]]) + (100 * stor2[ext_call.return_data[95 len 1]]) + (100 * stor3[ext_call.return_data[127 len 1]]) + (100 * stor4[ext_call.return_data[159 len 1]]) + (100 * stor5[ext_call.return_data[191 len 1]]) + (100 * stor6[ext_call.return_data[223 len 1]]) + (100 * stor7[ext_call.return_data[287 len 1]]) / 70) + (uint8(arg4) * stor13 / 100) + 100)
}



}
