contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_da8e2a89(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if stor0[msg.sender].field_0:
        if not stor0[msg.sender].field_0 - (uint255(stor0[msg.sender].field_0) * 0.5 < 32):
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor0[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor0[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor0[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[msg.sender].field_0 = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor0[msg.sender][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor0[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor0[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor0[msg.sender].field_0 - (stor0[msg.sender].field_1 < 32):
            revert with 'NH{q', 34
        if not ('cd', 4).length:
            stor0[msg.sender].field_0 = 0
            idx = 0
            while stor0[msg.sender].field_1 + 31 / 32 > idx:
                stor0[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor0[msg.sender].field_0 = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor0[msg.sender][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor0[msg.sender].field_1 + 31 / 32 > idx:
                stor0[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_37738e7f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0[arg1].field_0:
        if not stor0[arg1].field_0 - (uint255(stor0[arg1].field_0) * 0.5 < 32):
            revert with 'NH{q', 34
        if stor0[arg1].field_0:
            if not stor0[arg1].field_0 - (uint255(stor0[arg1].field_0) * 0.5 < 32):
                revert with 'NH{q', 34
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
            if not stor0[arg1].field_0 - (stor0[arg1].field_1 < 32):
                revert with 'NH{q', 34
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
    if not stor0[arg1].field_0 - (stor0[arg1].field_1 < 32):
        revert with 'NH{q', 34
    if stor0[arg1].field_0:
        if not stor0[arg1].field_0 - (uint255(stor0[arg1].field_0) * 0.5 < 32):
            revert with 'NH{q', 34
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
        if not stor0[arg1].field_0 - (stor0[arg1].field_1 < 32):
            revert with 'NH{q', 34
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
