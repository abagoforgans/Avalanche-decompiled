contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDataPoint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[arg1] = arg2
    emit DataPointSet(arg1, arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getProbability(int256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < 5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734e6f726d616c446973747269627574696f6e3a20696e76616c696420646563696d616c,
                    mem[200 len 28]
    if arg2 >= 77:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734e6f726d616c446973747269627574696f6e3a20696e76616c696420646563696d616c,
                    mem[200 len 28]
    if 2 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10^(arg2 - 2) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^(arg2 - 2)
    if arg1 < 0:
        if not -arg1 / 10^(arg2 - 2):
            if 2 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^(arg2 - 2) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(arg2 - 2)
            if not -arg1 / 10^(arg2 - 2):
                if 3 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(arg2 - 3) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(arg2 - 3)
                if 5 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -arg1 / 10^(arg2 - 3) >= 7:
                    if arg1 >= 0:
                        if not stor1[100]:
                            return 0
                        if 10^(arg2 - 5) * stor1[100] / stor1[100] != 10^(arg2 - 5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^(arg2 - 5) * stor1[100])
                    if stor1[100] > 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor1[100] + 100000:
                        return 0
                    if (100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)) / -stor1[100] + 100000 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)))
                if -arg1 / 10^(arg2 - 3) < 4:
                    if arg1 >= 0:
                        if not stor1[0]:
                            return 0
                        if 10^(arg2 - 5) * stor1[0] / stor1[0] != 10^(arg2 - 5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^(arg2 - 5) * stor1[0])
                    if stor1[0] > 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor1[0] + 100000:
                        return 0
                    if (100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)) / -stor1[0] + 100000 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)))
            else:
                if 10 * -arg1 / 10^(arg2 - 2) / -arg1 / 10^(arg2 - 2) != 10:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 3 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^(arg2 - 3) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 10^(arg2 - 3)
                if 5 > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (-arg1 / 10^(arg2 - 3)) - (10 * -arg1 / 10^(arg2 - 2)) >= 7:
                    if arg1 >= 0:
                        if not stor1[100]:
                            return 0
                        if 10^(arg2 - 5) * stor1[100] / stor1[100] != 10^(arg2 - 5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^(arg2 - 5) * stor1[100])
                    if stor1[100] > 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor1[100] + 100000:
                        return 0
                    if (100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)) / -stor1[100] + 100000 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)))
                if (-arg1 / 10^(arg2 - 3)) - (10 * -arg1 / 10^(arg2 - 2)) < 4:
                    if arg1 >= 0:
                        if not stor1[0]:
                            return 0
                        if 10^(arg2 - 5) * stor1[0] / stor1[0] != 10^(arg2 - 5):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^(arg2 - 5) * stor1[0])
                    if stor1[0] > 100000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not -stor1[0] + 100000:
                        return 0
                    if (100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)) / -stor1[0] + 100000 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)))
            if stor1[100] + stor1[0] < stor1[0]:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 >= 0:
                if not stor1[100] + stor1[0] / 2:
                    return 0
                if 10^(arg2 - 5) * stor1[100] + stor1[0] / 2 / stor1[100] + stor1[0] / 2 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^(arg2 - 5) * stor1[100] + stor1[0] / 2)
            if stor1[100] + stor1[0] / 2 > 100000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -(stor1[100] + stor1[0] / 2) + 100000:
                return 0
            if (100000 * 10^(arg2 - 5)) - (stor1[100] + stor1[0] / 2 * 10^(arg2 - 5)) / -(stor1[100] + stor1[0] / 2) + 100000 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100000 * 10^(arg2 - 5)) - (stor1[100] + stor1[0] / 2 * 10^(arg2 - 5)))
        if 100 * -arg1 / 10^(arg2 - 2) / -arg1 / 10^(arg2 - 2) != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 2 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^(arg2 - 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(arg2 - 2)
        if not -arg1 / 10^(arg2 - 2):
            if 3 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^(arg2 - 3) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(arg2 - 3)
            if 5 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 100 * -arg1 / 10^(arg2 - 2) >= 41900:
                if arg1 >= 0:
                    if 99999 * 10^(arg2 - 5) / 99999 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99999 * 10^(arg2 - 5))
                if 10^(arg2 - 5) != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return 10^(arg2 - 5)
            if 100 * -arg1 / 10^(arg2 - 2) >= 40600:
                if arg1 >= 0:
                    if 99998 * 10^(arg2 - 5) / 99998 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99998 * 10^(arg2 - 5))
                if uint255(10^(arg2 - 5)) != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (2 * 10^(arg2 - 5))
            if 100 * -arg1 / 10^(arg2 - 2) >= 39800:
                if arg1 >= 0:
                    if 99997 * 10^(arg2 - 5) / 99997 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99997 * 10^(arg2 - 5))
                if 3 * 10^(arg2 - 5) / 3 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (3 * 10^(arg2 - 5))
            if -arg1 / 10^(arg2 - 3) >= 7:
                if arg1 >= 0:
                    if not stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100]:
                        return 0
                    if 10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] / stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100])
                if stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)) / -stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)))
            if -arg1 / 10^(arg2 - 3) < 4:
                if arg1 >= 0:
                    if not stor1[100 * -arg1 / 10^(arg2 - 2)]:
                        return 0
                    if 10^(arg2 - 5) * stor1[100 * -arg1 / 10^(arg2 - 2)] / stor1[100 * -arg1 / 10^(arg2 - 2)] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[100 * -arg1 / 10^(arg2 - 2)])
                if stor1[100 * -arg1 / 10^(arg2 - 2)] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[100 * -arg1 / 10^(arg2 - 2)] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[100 * -arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)) / -stor1[100 * -arg1 / 10^(arg2 - 2)] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[100 * -arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)))
        else:
            if 10 * -arg1 / 10^(arg2 - 2) / -arg1 / 10^(arg2 - 2) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 3 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^(arg2 - 3) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(arg2 - 3)
            if 5 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 100 * -arg1 / 10^(arg2 - 2) >= 41900:
                if arg1 >= 0:
                    if 99999 * 10^(arg2 - 5) / 99999 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99999 * 10^(arg2 - 5))
                if 10^(arg2 - 5) != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return 10^(arg2 - 5)
            if 100 * -arg1 / 10^(arg2 - 2) >= 40600:
                if arg1 >= 0:
                    if 99998 * 10^(arg2 - 5) / 99998 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99998 * 10^(arg2 - 5))
                if uint255(10^(arg2 - 5)) != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (2 * 10^(arg2 - 5))
            if 100 * -arg1 / 10^(arg2 - 2) >= 39800:
                if arg1 >= 0:
                    if 99997 * 10^(arg2 - 5) / 99997 != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (99997 * 10^(arg2 - 5))
                if 3 * 10^(arg2 - 5) / 3 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (3 * 10^(arg2 - 5))
            if (-arg1 / 10^(arg2 - 3)) - (10 * -arg1 / 10^(arg2 - 2)) >= 7:
                if arg1 >= 0:
                    if not stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100]:
                        return 0
                    if 10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] / stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100])
                if stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)) / -stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)))
            if (-arg1 / 10^(arg2 - 3)) - (10 * -arg1 / 10^(arg2 - 2)) < 4:
                if arg1 >= 0:
                    if not stor1[100 * -arg1 / 10^(arg2 - 2)]:
                        return 0
                    if 10^(arg2 - 5) * stor1[100 * -arg1 / 10^(arg2 - 2)] / stor1[100 * -arg1 / 10^(arg2 - 2)] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[100 * -arg1 / 10^(arg2 - 2)])
                if stor1[100 * -arg1 / 10^(arg2 - 2)] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[100 * -arg1 / 10^(arg2 - 2)] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[100 * -arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)) / -stor1[100 * -arg1 / 10^(arg2 - 2)] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[100 * -arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)))
        if stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] < stor1[100 * -arg1 / 10^(arg2 - 2)]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 >= 0:
            if not stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2:
                return 0
            if 10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2 / stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^(arg2 - 5) * stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2)
        if stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2 > 100000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -(stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2) + 100000:
            return 0
        if (100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2 * 10^(arg2 - 5)) / -(stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2) + 100000 != 10^(arg2 - 5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * -arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * -arg1 / 10^(arg2 - 2)] / 2 * 10^(arg2 - 5)))
    if not arg1 / 10^(arg2 - 2):
        if 2 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^(arg2 - 2) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(arg2 - 2)
        if not arg1 / 10^(arg2 - 2):
            if 3 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^(arg2 - 3) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(arg2 - 3)
            if 5 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 / 10^(arg2 - 3) >= 7:
                if arg1 >= 0:
                    if not stor1[100]:
                        return 0
                    if 10^(arg2 - 5) * stor1[100] / stor1[100] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[100])
                if stor1[100] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[100] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)) / -stor1[100] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)))
            if arg1 / 10^(arg2 - 3) < 4:
                if arg1 >= 0:
                    if not stor1[0]:
                        return 0
                    if 10^(arg2 - 5) * stor1[0] / stor1[0] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[0])
                if stor1[0] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[0] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)) / -stor1[0] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)))
        else:
            if 10 * arg1 / 10^(arg2 - 2) / arg1 / 10^(arg2 - 2) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 3 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^(arg2 - 3) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(arg2 - 3)
            if 5 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if (arg1 / 10^(arg2 - 3)) - (10 * arg1 / 10^(arg2 - 2)) >= 7:
                if arg1 >= 0:
                    if not stor1[100]:
                        return 0
                    if 10^(arg2 - 5) * stor1[100] / stor1[100] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[100])
                if stor1[100] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[100] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)) / -stor1[100] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[100] * 10^(arg2 - 5)))
            if (arg1 / 10^(arg2 - 3)) - (10 * arg1 / 10^(arg2 - 2)) < 4:
                if arg1 >= 0:
                    if not stor1[0]:
                        return 0
                    if 10^(arg2 - 5) * stor1[0] / stor1[0] != 10^(arg2 - 5):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^(arg2 - 5) * stor1[0])
                if stor1[0] > 100000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -stor1[0] + 100000:
                    return 0
                if (100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)) / -stor1[0] + 100000 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((100000 * 10^(arg2 - 5)) - (stor1[0] * 10^(arg2 - 5)))
        if stor1[100] + stor1[0] < stor1[0]:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 >= 0:
            if not stor1[100] + stor1[0] / 2:
                return 0
            if 10^(arg2 - 5) * stor1[100] + stor1[0] / 2 / stor1[100] + stor1[0] / 2 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^(arg2 - 5) * stor1[100] + stor1[0] / 2)
        if stor1[100] + stor1[0] / 2 > 100000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -(stor1[100] + stor1[0] / 2) + 100000:
            return 0
        if (100000 * 10^(arg2 - 5)) - (stor1[100] + stor1[0] / 2 * 10^(arg2 - 5)) / -(stor1[100] + stor1[0] / 2) + 100000 != 10^(arg2 - 5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((100000 * 10^(arg2 - 5)) - (stor1[100] + stor1[0] / 2 * 10^(arg2 - 5)))
    if 100 * arg1 / 10^(arg2 - 2) / arg1 / 10^(arg2 - 2) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if 2 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10^(arg2 - 2) <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 10^(arg2 - 2)
    if not arg1 / 10^(arg2 - 2):
        if 3 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^(arg2 - 3) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(arg2 - 3)
        if 5 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 100 * arg1 / 10^(arg2 - 2) >= 41900:
            if arg1 >= 0:
                if 99999 * 10^(arg2 - 5) / 99999 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99999 * 10^(arg2 - 5))
            if 10^(arg2 - 5) != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 10^(arg2 - 5)
        if 100 * arg1 / 10^(arg2 - 2) >= 40600:
            if arg1 >= 0:
                if 99998 * 10^(arg2 - 5) / 99998 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99998 * 10^(arg2 - 5))
            if uint255(10^(arg2 - 5)) != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (2 * 10^(arg2 - 5))
        if 100 * arg1 / 10^(arg2 - 2) >= 39800:
            if arg1 >= 0:
                if 99997 * 10^(arg2 - 5) / 99997 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99997 * 10^(arg2 - 5))
            if 3 * 10^(arg2 - 5) / 3 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (3 * 10^(arg2 - 5))
        if arg1 / 10^(arg2 - 3) >= 7:
            if arg1 >= 0:
                if not stor1[(100 * arg1 / 10^(arg2 - 2)) + 100]:
                    return 0
                if 10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] / stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100])
            if stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] > 100000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + 100000:
                return 0
            if (100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)) / -stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + 100000 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)))
        if arg1 / 10^(arg2 - 3) < 4:
            if arg1 >= 0:
                if not stor1[100 * arg1 / 10^(arg2 - 2)]:
                    return 0
                if 10^(arg2 - 5) * stor1[100 * arg1 / 10^(arg2 - 2)] / stor1[100 * arg1 / 10^(arg2 - 2)] != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^(arg2 - 5) * stor1[100 * arg1 / 10^(arg2 - 2)])
            if stor1[100 * arg1 / 10^(arg2 - 2)] > 100000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor1[100 * arg1 / 10^(arg2 - 2)] + 100000:
                return 0
            if (100000 * 10^(arg2 - 5)) - (stor1[100 * arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)) / -stor1[100 * arg1 / 10^(arg2 - 2)] + 100000 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100000 * 10^(arg2 - 5)) - (stor1[100 * arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)))
    else:
        if 10 * arg1 / 10^(arg2 - 2) / arg1 / 10^(arg2 - 2) != 10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 3 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^(arg2 - 3) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 10^(arg2 - 3)
        if 5 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if 100 * arg1 / 10^(arg2 - 2) >= 41900:
            if arg1 >= 0:
                if 99999 * 10^(arg2 - 5) / 99999 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99999 * 10^(arg2 - 5))
            if 10^(arg2 - 5) != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return 10^(arg2 - 5)
        if 100 * arg1 / 10^(arg2 - 2) >= 40600:
            if arg1 >= 0:
                if 99998 * 10^(arg2 - 5) / 99998 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99998 * 10^(arg2 - 5))
            if uint255(10^(arg2 - 5)) != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (2 * 10^(arg2 - 5))
        if 100 * arg1 / 10^(arg2 - 2) >= 39800:
            if arg1 >= 0:
                if 99997 * 10^(arg2 - 5) / 99997 != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (99997 * 10^(arg2 - 5))
            if 3 * 10^(arg2 - 5) / 3 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (3 * 10^(arg2 - 5))
        if (arg1 / 10^(arg2 - 3)) - (10 * arg1 / 10^(arg2 - 2)) >= 7:
            if arg1 >= 0:
                if not stor1[(100 * arg1 / 10^(arg2 - 2)) + 100]:
                    return 0
                if 10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] / stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100])
            if stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] > 100000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + 100000:
                return 0
            if (100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)) / -stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + 100000 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] * 10^(arg2 - 5)))
        if (arg1 / 10^(arg2 - 3)) - (10 * arg1 / 10^(arg2 - 2)) < 4:
            if arg1 >= 0:
                if not stor1[100 * arg1 / 10^(arg2 - 2)]:
                    return 0
                if 10^(arg2 - 5) * stor1[100 * arg1 / 10^(arg2 - 2)] / stor1[100 * arg1 / 10^(arg2 - 2)] != 10^(arg2 - 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^(arg2 - 5) * stor1[100 * arg1 / 10^(arg2 - 2)])
            if stor1[100 * arg1 / 10^(arg2 - 2)] > 100000:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -stor1[100 * arg1 / 10^(arg2 - 2)] + 100000:
                return 0
            if (100000 * 10^(arg2 - 5)) - (stor1[100 * arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)) / -stor1[100 * arg1 / 10^(arg2 - 2)] + 100000 != 10^(arg2 - 5):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((100000 * 10^(arg2 - 5)) - (stor1[100 * arg1 / 10^(arg2 - 2)] * 10^(arg2 - 5)))
    if stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] < stor1[100 * arg1 / 10^(arg2 - 2)]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= 0:
        if not stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2:
            return 0
        if 10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2 / stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2 != 10^(arg2 - 5):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^(arg2 - 5) * stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2)
    if stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2 > 100000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not -(stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2) + 100000:
        return 0
    if (100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2 * 10^(arg2 - 5)) / -(stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2) + 100000 != 10^(arg2 - 5):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((100000 * 10^(arg2 - 5)) - (stor1[(100 * arg1 / 10^(arg2 - 2)) + 100] + stor1[100 * arg1 / 10^(arg2 - 2)] / 2 * 10^(arg2 - 5)))
}



}
