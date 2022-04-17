contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function register(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0[address(msg.sender)][arg1].field_0:
        if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor0[address(msg.sender)][arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[address(msg.sender)][arg1].field_0 = 0
            idx = 0
            while stor0[address(msg.sender)][arg1].field_1 + 31 / 32 > idx:
                stor0[address(msg.sender)][arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor0[address(msg.sender)][arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor0[address(msg.sender)][arg1].field_0 = 0
            idx = 0
            while stor0[address(msg.sender)][arg1].field_1 + 31 / 32 > idx:
                stor0[address(msg.sender)][arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x1570ad60: msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
}

function registry(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[arg1][arg2].field_0:
        if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1][arg2].field_0:
            if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1][arg2].field_1:
                if 31 < stor0[arg1][arg2].field_1:
                    mem[128] = stor0[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1][arg2].field_1), data=mem[128 len ceil32(stor0[arg1][arg2].field_1)])
                mem[128] = 256 * stor0[arg1][arg2].field_8
        else:
            if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[arg1][arg2].field_1:
                if 31 < stor0[arg1][arg2].field_1:
                    mem[128] = stor0[arg1][arg2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1][arg2].field_1), data=mem[128 len ceil32(stor0[arg1][arg2].field_1)])
                mem[128] = 256 * stor0[arg1][arg2].field_8
        mem[ceil32(stor0[arg1][arg2].field_1) + 192 len ceil32(stor0[arg1][arg2].field_1)] = mem[128 len ceil32(stor0[arg1][arg2].field_1)]
        if ceil32(stor0[arg1][arg2].field_1) > stor0[arg1][arg2].field_1:
            mem[ceil32(stor0[arg1][arg2].field_1) + stor0[arg1][arg2].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[arg1][arg2].field_1), data=mem[128 len ceil32(stor0[arg1][arg2].field_1)], mem[(2 * ceil32(stor0[arg1][arg2].field_1)) + 192 len 2 * ceil32(stor0[arg1][arg2].field_1)]), 
    if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[arg1][arg2].field_0:
        if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1][arg2].field_1:
            if 31 < stor0[arg1][arg2].field_1:
                mem[128] = stor0[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor0[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1][arg2].field_0, data=mem[128 len ceil32(stor0[arg1][arg2].field_1)])
            mem[128] = 256 * stor0[arg1][arg2].field_8
    else:
        if stor0[arg1][arg2].field_0 == stor0[arg1][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[arg1][arg2].field_1:
            if 31 < stor0[arg1][arg2].field_1:
                mem[128] = stor0[arg1][arg2].field_0
                idx = 128
                s = 0
                while stor0[arg1][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1][arg2].field_0, data=mem[128 len ceil32(stor0[arg1][arg2].field_1)])
            mem[128] = 256 * stor0[arg1][arg2].field_8
    mem[ceil32(stor0[arg1][arg2].field_1) + 192 len ceil32(stor0[arg1][arg2].field_1)] = mem[128 len ceil32(stor0[arg1][arg2].field_1)]
    if ceil32(stor0[arg1][arg2].field_1) > stor0[arg1][arg2].field_1:
        mem[ceil32(stor0[arg1][arg2].field_1) + stor0[arg1][arg2].field_1 + 192] = 0
    return Array(len=stor0[arg1][arg2].field_0, data=mem[128 len ceil32(stor0[arg1][arg2].field_1)], mem[(2 * ceil32(stor0[arg1][arg2].field_1)) + 192 len 2 * ceil32(stor0[arg1][arg2].field_1)]), 
}

function get(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0[address(arg1)][arg2].field_0:
        if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(arg1)][arg2].field_0:
            if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[address(arg1)][arg2].field_1:
                if 31 < stor0[address(arg1)][arg2].field_1:
                    mem[128] = stor0[address(arg1)][arg2].field_0
                    idx = 128
                    s = 0
                    while stor0[address(arg1)][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[address(arg1)][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(arg1)][arg2].field_1), data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)]), 
                mem[128] = 256 * stor0[address(arg1)][arg2].field_8
        else:
            if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[address(arg1)][arg2].field_1:
                if 31 < stor0[address(arg1)][arg2].field_1:
                    mem[128] = stor0[address(arg1)][arg2].field_0
                    idx = 128
                    s = 0
                    while stor0[address(arg1)][arg2].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[address(arg1)][arg2][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(arg1)][arg2].field_1), data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)]), 
                mem[128] = 256 * stor0[address(arg1)][arg2].field_8
        mem[ceil32(stor0[address(arg1)][arg2].field_1) + 192 len ceil32(stor0[address(arg1)][arg2].field_1)] = mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)]
        if ceil32(stor0[address(arg1)][arg2].field_1) > stor0[address(arg1)][arg2].field_1:
            mem[ceil32(stor0[address(arg1)][arg2].field_1) + stor0[address(arg1)][arg2].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[address(arg1)][arg2].field_1), data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)], mem[(2 * ceil32(stor0[address(arg1)][arg2].field_1)) + 192 len 2 * ceil32(stor0[address(arg1)][arg2].field_1)]), 
    if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[address(arg1)][arg2].field_0:
        if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(arg1)][arg2].field_1:
            if 31 < stor0[address(arg1)][arg2].field_1:
                mem[128] = stor0[address(arg1)][arg2].field_0
                idx = 128
                s = 0
                while stor0[address(arg1)][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[address(arg1)][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(arg1)][arg2].field_0, data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)])
            mem[128] = 256 * stor0[address(arg1)][arg2].field_8
    else:
        if stor0[address(arg1)][arg2].field_0 == stor0[address(arg1)][arg2].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(arg1)][arg2].field_1:
            if 31 < stor0[address(arg1)][arg2].field_1:
                mem[128] = stor0[address(arg1)][arg2].field_0
                idx = 128
                s = 0
                while stor0[address(arg1)][arg2].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[address(arg1)][arg2][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(arg1)][arg2].field_0, data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)])
            mem[128] = 256 * stor0[address(arg1)][arg2].field_8
    mem[ceil32(stor0[address(arg1)][arg2].field_1) + 192 len ceil32(stor0[address(arg1)][arg2].field_1)] = mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)]
    if ceil32(stor0[address(arg1)][arg2].field_1) > stor0[address(arg1)][arg2].field_1:
        mem[ceil32(stor0[address(arg1)][arg2].field_1) + stor0[address(arg1)][arg2].field_1 + 192] = 0
    return Array(len=stor0[address(arg1)][arg2].field_0, data=mem[128 len ceil32(stor0[address(arg1)][arg2].field_1)], mem[(2 * ceil32(stor0[address(arg1)][arg2].field_1)) + 192 len 2 * ceil32(stor0[address(arg1)][arg2].field_1)]), 
}

function get(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[address(msg.sender)][arg1].field_0:
        if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(msg.sender)][arg1].field_0:
            if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[address(msg.sender)][arg1].field_1:
                if 31 < stor0[address(msg.sender)][arg1].field_1:
                    mem[128] = stor0[address(msg.sender)][arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[address(msg.sender)][arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[address(msg.sender)][arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(msg.sender)][arg1].field_1), data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)]), 
                mem[128] = 256 * stor0[address(msg.sender)][arg1].field_8
        else:
            if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor0[address(msg.sender)][arg1].field_1:
                if 31 < stor0[address(msg.sender)][arg1].field_1:
                    mem[128] = stor0[address(msg.sender)][arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[address(msg.sender)][arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[address(msg.sender)][arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[address(msg.sender)][arg1].field_1), data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)]), 
                mem[128] = 256 * stor0[address(msg.sender)][arg1].field_8
        mem[ceil32(stor0[address(msg.sender)][arg1].field_1) + 192 len ceil32(stor0[address(msg.sender)][arg1].field_1)] = mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)]
        if ceil32(stor0[address(msg.sender)][arg1].field_1) > stor0[address(msg.sender)][arg1].field_1:
            mem[ceil32(stor0[address(msg.sender)][arg1].field_1) + stor0[address(msg.sender)][arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[address(msg.sender)][arg1].field_1), data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)], mem[(2 * ceil32(stor0[address(msg.sender)][arg1].field_1)) + 192 len 2 * ceil32(stor0[address(msg.sender)][arg1].field_1)]), 
    if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor0[address(msg.sender)][arg1].field_0:
        if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(msg.sender)][arg1].field_1:
            if 31 < stor0[address(msg.sender)][arg1].field_1:
                mem[128] = stor0[address(msg.sender)][arg1].field_0
                idx = 128
                s = 0
                while stor0[address(msg.sender)][arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[address(msg.sender)][arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(msg.sender)][arg1].field_0, data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)])
            mem[128] = 256 * stor0[address(msg.sender)][arg1].field_8
    else:
        if stor0[address(msg.sender)][arg1].field_0 == stor0[address(msg.sender)][arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor0[address(msg.sender)][arg1].field_1:
            if 31 < stor0[address(msg.sender)][arg1].field_1:
                mem[128] = stor0[address(msg.sender)][arg1].field_0
                idx = 128
                s = 0
                while stor0[address(msg.sender)][arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[address(msg.sender)][arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[address(msg.sender)][arg1].field_0, data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)])
            mem[128] = 256 * stor0[address(msg.sender)][arg1].field_8
    mem[ceil32(stor0[address(msg.sender)][arg1].field_1) + 192 len ceil32(stor0[address(msg.sender)][arg1].field_1)] = mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)]
    if ceil32(stor0[address(msg.sender)][arg1].field_1) > stor0[address(msg.sender)][arg1].field_1:
        mem[ceil32(stor0[address(msg.sender)][arg1].field_1) + stor0[address(msg.sender)][arg1].field_1 + 192] = 0
    return Array(len=stor0[address(msg.sender)][arg1].field_0, data=mem[128 len ceil32(stor0[address(msg.sender)][arg1].field_1)], mem[(2 * ceil32(stor0[address(msg.sender)][arg1].field_1)) + 192 len 2 * ceil32(stor0[address(msg.sender)][arg1].field_1)]), 
}



}
