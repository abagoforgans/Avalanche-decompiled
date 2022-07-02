contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    revert
}

function store(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor1 != msg.sender:
        revert with 2192845056
    if stor0[stor2].field_0:
        if stor0[stor2].field_0 == uint255(stor0[stor2].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor0[stor2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor2].field_0 = 0
            idx = 0
            while (uint255(stor0[stor2].field_0) * 0.5) + 31 / 32 > idx:
                stor0[stor2][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor2].field_0 == stor0[stor2].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor0[stor2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor2].field_0 = 0
            idx = 0
            while stor0[stor2].field_1 + 31 / 32 > idx:
                stor0[stor2][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor2 == -1:
        revert with 0, 17
    stor2++
}

function retrieve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor0[arg1].field_0:
            if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0[arg1].field_0):
                if 31 < uint255(stor0[arg1].field_0) * 0.5:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor0[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor0[arg1].field_8
        else:
            if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
                revert with 0, 34
            if stor0[arg1].field_1:
                if 31 < stor0[arg1].field_1:
                    mem[128] = stor0[arg1].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor0[arg1].field_8
        mem[ceil32(uint255(stor0[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor0[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor0[arg1].field_0) * 0.5) > uint255(stor0[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor0[arg1].field_0) * 0.5) + (uint255(stor0[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0[arg1].field_0), data=mem[128 len ceil32(uint255(stor0[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor0[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor0[arg1].field_0) * 0.5)]), 
    if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
        revert with 0, 34
    if stor0[arg1].field_0:
        if stor0[arg1].field_0 == uint255(stor0[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0[arg1].field_0):
            if 31 < uint255(stor0[arg1].field_0) * 0.5:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor0[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)])
            mem[128] = 256 * stor0[arg1].field_8
    else:
        if stor0[arg1].field_0 == stor0[arg1].field_1 < 32:
            revert with 0, 34
        if stor0[arg1].field_1:
            if 31 < stor0[arg1].field_1:
                mem[128] = stor0[arg1].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)])
            mem[128] = 256 * stor0[arg1].field_8
    mem[ceil32(stor0[arg1].field_1) + 192 len ceil32(stor0[arg1].field_1)] = mem[128 len ceil32(stor0[arg1].field_1)]
    if ceil32(stor0[arg1].field_1) > stor0[arg1].field_1:
        mem[ceil32(stor0[arg1].field_1) + stor0[arg1].field_1 + 192] = 0
    return Array(len=stor0[arg1].field_0, data=mem[128 len ceil32(stor0[arg1].field_1)], mem[(2 * ceil32(stor0[arg1].field_1)) + 192 len 2 * ceil32(stor0[arg1].field_1)]), 
}



}
