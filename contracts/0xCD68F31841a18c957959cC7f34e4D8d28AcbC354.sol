contract main {




// =====================  Runtime code  =====================


#
#  - sub_c45c5c30(?)
#
function _fallback() payable {
    revert
}

function getAmountIn(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4f55545055545f414d4f554e,
                    mem[208 len 20]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x54556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                    mem[204 len 24]
    if not arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if arg1 * arg2 / arg2 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1 * arg2:
        if arg1 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg1
        if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require (997 * arg3) - (997 * arg1)
        if (0 / (997 * arg3) - (997 * arg1)) + 1 < 0 / (997 * arg3) - (997 * arg1):
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / (997 * arg3) - (997 * arg1)) + 1)
    if 1000 * arg1 * arg2 / arg1 * arg2 != 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg1 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require arg3 - arg1
    if (997 * arg3) - (997 * arg1) / arg3 - arg1 != 997:
        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require (997 * arg3) - (997 * arg1)
    if (1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1 < 1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1):
        revert with 0, 'SafeMath: addition overflow'
    return ((1000 * arg1 * arg2 / (997 * arg3) - (997 * arg1)) + 1)
}



}
