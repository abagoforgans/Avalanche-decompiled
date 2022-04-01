contract main {




// =====================  Runtime code  =====================


#
#  - sub_634900e6(?)
#
array of address collections;
array of struct stor1;
address sub_dddb8556Address;

function sub_dddb8556(?) payable {
    return sub_dddb8556Address
}

function collections(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < collections.length
    return collections[arg1]
}

function _fallback() payable {
    revert
}

function sub_98fa4cb9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_0:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 0, 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        else:
            if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
                revert with 0, 34
            if stor1[arg1].field_1:
                if 31 < stor1[arg1].field_1:
                    mem[128] = stor1[arg1].field_0
                    idx = 128
                    s = 0
                    while stor1[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor1[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)])
                mem[128] = 256 * stor1[arg1].field_8
        mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
        if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
            mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1[arg1].field_1), data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
    if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
        revert with 0, 34
    if stor1[arg1].field_0:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    else:
        if stor1[arg1].field_0 == stor1[arg1].field_1 < 32:
            revert with 0, 34
        if stor1[arg1].field_1:
            if 31 < stor1[arg1].field_1:
                mem[128] = stor1[arg1].field_0
                idx = 128
                s = 0
                while stor1[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor1[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)])
            mem[128] = 256 * stor1[arg1].field_8
    mem[ceil32(stor1[arg1].field_1) + 192 len ceil32(stor1[arg1].field_1)] = mem[128 len ceil32(stor1[arg1].field_1)]
    if ceil32(stor1[arg1].field_1) > stor1[arg1].field_1:
        mem[ceil32(stor1[arg1].field_1) + stor1[arg1].field_1 + 192] = 0
    return Array(len=stor1[arg1].field_0, data=mem[128 len ceil32(stor1[arg1].field_1)], mem[(2 * ceil32(stor1[arg1].field_1)) + 192 len 2 * ceil32(stor1[arg1].field_1)]), 
}



}
