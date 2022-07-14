contract main {




// =====================  Runtime code  =====================


#
#  - sub_1bf47ecd(?)
#  - unstake(uint256 arg1)
#  - minStake()
#  - stake(address arg1, uint256 arg2)
#  - isFull()
#
const sub_27ed7188(?) = 1000 * 10^18

const sub_d5d64b99(?) = 10


array of address stakedBalance;
mapping of uint256 stor2;
mapping of struct stor3;
address stor4;

function stakedBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(stakedBalance[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_c91412fe(?) payable {
    mem[416] = stor4
    idx = 416
    s = 4
    while 736 > idx + 32:
        mem[idx + 32] = address(stakedBalance[s])
        idx = idx + 32
        s = s + 1
        continue 
    idx = 0
    s = 416
    t = 736
    while idx < 10:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from 736
       len 320
}

function sub_d0228e8f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint256(stakedBalance[address(arg1)]):
        return 0
    if block.timestamp < stor2[address(arg1)]:
        revert with 0, 17
    if block.timestamp - stor2[address(arg1)] >= 168 * 24 * 3600:
        return 0
    if 168 * 24 * 3600 > !stor2[address(arg1)]:
        revert with 0, 17
    if stor2[address(arg1)] + (168 * 24 * 3600) < block.timestamp:
        revert with 0, 17
    return (stor2[address(arg1)] + -block.timestamp + (168 * 24 * 3600))
}

function sub_531fe502(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor3[msg.sender].field_0:
        if stor3[msg.sender].field_0 == uint255(stor3[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
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
            revert with 0, 34
        if arg1.length:
            stor3[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor3[msg.sender].field_0 = 0
            idx = 0
            while stor3[msg.sender].field_1 + 31 / 32 > idx:
                stor3[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0x24e0a304: msg.sender, Array(len=arg1.length, data=arg1[all])
}

function sub_931d7d8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_0:
            if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3[address(arg1)].field_0):
                if 31 < uint255(stor3[address(arg1)].field_0) * 0.5:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor3[address(arg1)].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor3[address(arg1)].field_8
        else:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 0, 34
            if stor3[address(arg1)].field_1:
                if 31 < stor3[address(arg1)].field_1:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
                mem[128] = 256 * stor3[address(arg1)].field_8
        mem[ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) + 192 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]
        if ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) > uint255(stor3[address(arg1)].field_0) * 0.5:
            mem[(uint255(stor3[address(arg1)].field_0) * 0.5) + ceil32(uint255(stor3[address(arg1)].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_0), data=mem[128 len ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor3[address(arg1)].field_0) * 0.5)]), 
    if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
        revert with 0, 34
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == uint255(stor3[address(arg1)].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3[address(arg1)].field_0):
            if 31 < uint255(stor3[address(arg1)].field_0) * 0.5:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while (uint255(stor3[address(arg1)].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 0, 34
        if stor3[address(arg1)].field_1:
            if 31 < stor3[address(arg1)].field_1:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while stor3[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    mem[ceil32(stor3[address(arg1)].field_1) + 192 len ceil32(stor3[address(arg1)].field_1)] = mem[128 len ceil32(stor3[address(arg1)].field_1)]
    if ceil32(stor3[address(arg1)].field_1) > stor3[address(arg1)].field_1:
        mem[stor3[address(arg1)].field_1 + ceil32(stor3[address(arg1)].field_1) + 192] = 0
    return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)], mem[(2 * ceil32(stor3[address(arg1)].field_1)) + 192 len 2 * ceil32(stor3[address(arg1)].field_1)]), 
}



}
