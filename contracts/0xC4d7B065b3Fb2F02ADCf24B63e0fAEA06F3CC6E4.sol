contract main {




// =====================  Runtime code  =====================


const isInterestRateModel = 1


uint256 blocksPerYear;
uint256 multiplierPerBlock;
uint256 baseRatePerBlock;
uint256 jumpMultiplierPerBlock;
uint256 kink;

function multiplierPerBlock() payable {
    return multiplierPerBlock
}

function blocksPerYear() payable {
    return blocksPerYear
}

function jumpMultiplierPerBlock() payable {
    return jumpMultiplierPerBlock
}

function baseRatePerBlock() payable {
    return baseRatePerBlock
}

function kink() payable {
    return kink
}

function _fallback() payable {
    revert
}

function utilizationRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2 + arg1 - arg3)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * arg2 / arg2 + arg1 - arg3)
}

function getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        if 0 <= kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0:
                revert with 0, 'SafeMath: subtraction underflow'
            if not -kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18))
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0:
            revert with 0, 'SafeMath: subtraction underflow'
        if not -kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
        if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18))
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= kink:
            if not 0 / arg2 + arg1 - arg3:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18))
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (0 / arg2 + arg1 - arg3) - kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction underflow'
        if not (0 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
        if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink:
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18))
    if not kink:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction underflow'
        if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
    if multiplierPerBlock * kink / kink != multiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: subtraction underflow'
    if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
    if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
}

function getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg4 > 10^18:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if 0 <= kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0:
                revert with 0, 'SafeMath: subtraction underflow'
            if not -kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0:
            revert with 0, 'SafeMath: subtraction underflow'
        if not -kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= kink:
            if not 0 / arg2 + arg1 - arg3:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (0 / arg2 + arg1 - arg3) - kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction underflow'
        if not (0 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink:
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if not kink:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction underflow'
        if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if multiplierPerBlock * kink / kink != multiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: subtraction underflow'
    if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
        if arg2:
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3:
                    if 0 / 0 / arg2 + arg1 - arg3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3:
                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return 0
        else:
            return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 10^18 * arg2 / arg2 + arg1 - arg3:
        return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
}



}
