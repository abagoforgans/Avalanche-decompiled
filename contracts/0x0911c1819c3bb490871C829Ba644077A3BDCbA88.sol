contract main {




// =====================  Runtime code  =====================


address dinoTokenAddress;
mapping of struct stor1;
mapping of uint8 stor2;
mapping of uint8 stor99;

function dinoToken() payable {
    return dinoTokenAddress
}

function _fallback() payable {
    revert
}

function sub_db36c4a1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor2[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_dc5ae0c7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == arg2
    if stor1[address(msg.sender)].field_512:
        revert with 0, 'You are already registered.'
    mem[ceil32(arg1.length) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + arg1.length + 128] = 2
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'Choose a different nickname, that one is already taken.'
    mem[ceil32(arg1.length) + 128] = 96
    if bool(stor1[address(msg.sender)].field_0):
        if bool(stor1[address(msg.sender)].field_0) == uint255(stor1[address(msg.sender)].field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor1[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor1[address(msg.sender)].field_0) = 0
            idx = 0
            while uint255(stor1[address(msg.sender)].field_1) + 31 / 32 > idx:
                uint256(stor1[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor1[address(msg.sender)].field_0) == stor1[address(msg.sender)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor1[address(msg.sender)][].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor1[address(msg.sender)].field_0) = 0
            idx = 0
            while stor1[address(msg.sender)].field_1 % 128 + 31 / 32 > idx:
                uint256(stor1[address(msg.sender)][idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor1[address(msg.sender)].field_256) = arg2
    stor1[address(msg.sender)].field_512 = 1
    mem[ceil32(arg1.length) + 224 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(arg1.length) + arg1.length + 224] = 2
    stor[mem[(2 * ceil32(arg1.length)) + 224 len arg1.length + -ceil32(arg1.length) + 32]][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256] = 1
}

function sub_58ffcb73(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[arg1].field_0):
        if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1[arg1].field_0):
            if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1[arg1].field_1):
                if 31 >= uint255(stor1[arg1].field_1):
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
                else:
                    mem[128] = uint256(stor1[arg1].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor1[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1[arg1].field_1 % 128:
                if 31 >= stor1[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
                else:
                    mem[128] = uint256(stor1[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor1[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor1[arg1].field_1)), data=mem[128 len ceil32(uint255(stor1[arg1].field_1))]), 
               uint256(stor1[arg1].field_256),
               bool(stor1[arg1].field_512)
    if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1[arg1].field_0):
        if bool(stor1[arg1].field_0) == uint255(stor1[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1[arg1].field_1):
            if 31 >= uint255(stor1[arg1].field_1):
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
            else:
                mem[128] = uint256(stor1[arg1].field_0)
                idx = 128
                s = 0
                while uint255(stor1[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor1[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor1[arg1].field_0) == stor1[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1[arg1].field_1 % 128:
            if 31 >= stor1[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor1[arg1].field_8)
            else:
                mem[128] = uint256(stor1[arg1].field_0)
                idx = 128
                s = 0
                while stor1[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor1[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor1[arg1].field_0 % 128, data=mem[128 len ceil32(stor1[arg1].field_1 % 128)]), 
           uint256(stor1[arg1].field_256),
           bool(stor1[arg1].field_512)
}

function sub_14988eea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[address(arg1)].field_0):
        if bool(stor1[address(arg1)].field_0) == uint255(stor1[address(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1[address(arg1)].field_0):
            if bool(stor1[address(arg1)].field_0) == uint255(stor1[address(arg1)].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1[address(arg1)].field_1):
                if 31 >= uint255(stor1[address(arg1)].field_1):
                    mem[320] = 256 * Mask(248, 0, stor1[address(arg1)].field_8)
                else:
                    mem[320] = uint256(stor1[address(arg1)].field_0)
                    idx = 320
                    s = 0
                    while uint255(stor1[address(arg1)].field_1) + 288 > idx:
                        mem[idx + 32] = uint256(stor1[address(arg1)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor1[address(arg1)].field_0) == stor1[address(arg1)].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor1[address(arg1)].field_1 % 128:
                if 31 >= stor1[address(arg1)].field_1 % 128:
                    mem[320] = 256 * Mask(248, 0, stor1[address(arg1)].field_8)
                else:
                    mem[320] = uint256(stor1[address(arg1)].field_0)
                    idx = 320
                    s = 0
                    while stor1[address(arg1)].field_1 % 128 + 288 > idx:
                        mem[idx + 32] = uint256(stor1[address(arg1)][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, 96, 
               uint256(stor1[address(arg1)].field_256),
               bool(stor1[address(arg1)].field_512),
               2 * Mask(256, -1, uint255(stor1[address(arg1)].field_1)),
               mem[320 len ceil32(uint255(stor1[address(arg1)].field_1))]
    if bool(stor1[address(arg1)].field_0) == stor1[address(arg1)].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1[address(arg1)].field_0):
        if bool(stor1[address(arg1)].field_0) == uint255(stor1[address(arg1)].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1[address(arg1)].field_1):
            if 31 >= uint255(stor1[address(arg1)].field_1):
                mem[320] = 256 * Mask(248, 0, stor1[address(arg1)].field_8)
            else:
                mem[320] = uint256(stor1[address(arg1)].field_0)
                idx = 320
                s = 0
                while uint255(stor1[address(arg1)].field_1) + 288 > idx:
                    mem[idx + 32] = uint256(stor1[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor1[address(arg1)].field_0) == stor1[address(arg1)].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor1[address(arg1)].field_1 % 128:
            if 31 >= stor1[address(arg1)].field_1 % 128:
                mem[320] = 256 * Mask(248, 0, stor1[address(arg1)].field_8)
            else:
                mem[320] = uint256(stor1[address(arg1)].field_0)
                idx = 320
                s = 0
                while stor1[address(arg1)].field_1 % 128 + 288 > idx:
                    mem[idx + 32] = uint256(stor1[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, 96, 
           uint256(stor1[address(arg1)].field_256),
           bool(stor1[address(arg1)].field_512),
           stor1[address(arg1)].field_0 % 128,
           mem[320 len ceil32(stor1[address(arg1)].field_1 % 128)]
}



}
