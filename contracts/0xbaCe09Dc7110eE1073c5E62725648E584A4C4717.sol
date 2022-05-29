contract main {




// =====================  Runtime code  =====================


#
#  - addScore(string arg1, uint256 arg2)
#
mapping of struct stor2;

function _fallback() payable {
    revert
}

function leaderboard(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_0:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 >= stor2[arg1].field_1:
                    mem[128] = 256 * stor2[arg1].field_8
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1].field_1:
                if 31 >= stor2[arg1].field_1:
                    mem[128] = 256 * stor2[arg1].field_8
                else:
                    mem[128] = stor2[arg1].field_0
                    idx = 128
                    s = 0
                    while stor2[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor2[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor2[arg1].field_1), data=mem[128 len ceil32(stor2[arg1].field_1)]), stor2[arg1].field_256
    if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1].field_0:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 >= stor2[arg1].field_1:
                mem[128] = 256 * stor2[arg1].field_8
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1].field_0 == stor2[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1].field_1:
            if 31 >= stor2[arg1].field_1:
                mem[128] = 256 * stor2[arg1].field_8
            else:
                mem[128] = stor2[arg1].field_0
                idx = 128
                s = 0
                while stor2[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor2[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor2[arg1].field_0, data=mem[128 len ceil32(stor2[arg1].field_1)]), stor2[arg1].field_256
}



}
