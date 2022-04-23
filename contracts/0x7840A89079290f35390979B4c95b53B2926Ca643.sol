contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1)
#
address owner;
mapping of uint256 stor101;
mapping of uint256 stor102;
uint256 totalSharesSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor151;
address stor152;
address stor153;
uint256 ratio;
uint256 lastConfirmedRatio;
uint256 lockedSupply;
mapping of uint256 pendingBurn;
uint256 stor158;
uint256 collectableFee;

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function pendingBurn(address arg1) payable {
    require calldata.size - 4 >= 32
    return pendingBurn[address(arg1)]
}

function collectableFee() payable {
    return collectableFee
}

function ratio() payable {
    return ratio
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastConfirmedRatio() payable {
    return lastConfirmedRatio
}

function lockedSupply() payable {
    return lockedSupply
}

function totalSharesSupply() payable {
    return totalSharesSupply
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor151 = arg1
}

function changeAvalanchePool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor153 = arg1
}

function changeCrossChainBridge(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor152 = arg1
}

function repairCollectableFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    collectableFee = arg1
}

function sub_34783ecb(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    ratio = arg1
    lastConfirmedRatio = arg2
}

function lockForDelayedBurn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor153 != msg.sender:
            revert with 0, 'Minter: not allowed'
    if arg2 + pendingBurn[address(arg1)] < pendingBurn[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    pendingBurn[address(arg1)] += arg2
    if arg2 + stor158 < stor158:
        revert with 0, 'SafeMath: addition overflow'
    stor158 += arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
    if (ratio / 500) + ratio < ratio:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= (ratio / 500) + ratio:
        if ratio / 500 > ratio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 <= ratio - (ratio / 500):
            revert with 0, 'New ratio should be in limits'
    ratio = arg1
    emit RatioUpdate(arg1);
}

function updateLastConfirmedRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
    if (lastConfirmedRatio / 500) + lastConfirmedRatio < lastConfirmedRatio:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= (lastConfirmedRatio / 500) + lastConfirmedRatio:
        if lastConfirmedRatio / 500 > lastConfirmedRatio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 <= lastConfirmedRatio - (lastConfirmedRatio / 500):
            revert with 0, 'New ratio should be in limits'
    lastConfirmedRatio = arg1
    emit LastConfirmedRatioUpdate(arg1);
}

function totalSupply() payable {
    if not totalSharesSupply:
        if ratio <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ratio:
            return (0 / ratio)
    else:
        if 10^18 * totalSharesSupply / totalSharesSupply != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ratio <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ratio:
            return (10^18 * totalSharesSupply / ratio)
    ('iszero', ('stor', ('name', 'ratio', 154)))
    revert
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not stor102[address(arg1)][address(arg2)]:
        if ratio <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ratio:
            return (0 / ratio)
    else:
        if 10^18 * stor102[address(arg1)][address(arg2)] / stor102[address(arg1)][address(arg2)] != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ratio <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ratio:
            return (10^18 * stor102[address(arg1)][address(arg2)] / ratio)
    ('iszero', ('stor', ('name', 'ratio', 154)))
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor101[address(arg1)]:
        if ratio <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ratio
        if pendingBurn[address(arg1)] > 0 / ratio:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / ratio) - pendingBurn[address(arg1)])
    if 10^18 * stor101[address(arg1)] / stor101[address(arg1)] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ratio <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ratio
    if pendingBurn[address(arg1)] > 10^18 * stor101[address(arg1)] / ratio:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((10^18 * stor101[address(arg1)] / ratio) - pendingBurn[address(arg1)])
}

function sub_f515d0da(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
        if owner != msg.sender:
            if stor151 != msg.sender:
                revert with 0, 'Operator: not allowed'
    if (ratio / 500) + ratio < ratio:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= (ratio / 500) + ratio:
        if ratio / 500 > ratio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 <= ratio - (ratio / 500):
            revert with 0, 'New ratio should be in limits'
    ratio = arg1
    emit RatioUpdate(arg1);
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
    if (lastConfirmedRatio / 500) + lastConfirmedRatio < lastConfirmedRatio:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= (lastConfirmedRatio / 500) + lastConfirmedRatio:
        if lastConfirmedRatio / 500 > lastConfirmedRatio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 <= lastConfirmedRatio - (lastConfirmedRatio / 500):
            revert with 0, 'New ratio should be in limits'
    lastConfirmedRatio = arg2
    emit LastConfirmedRatioUpdate(arg2);
    collectableFee = arg3
}

function updateBothRatios(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
        if owner != msg.sender:
            if stor151 != msg.sender:
                revert with 0, 'Operator: not allowed'
    if (ratio / 500) + ratio < ratio:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 >= (ratio / 500) + ratio:
        if ratio / 500 > ratio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 <= ratio - (ratio / 500):
            revert with 0, 'New ratio should be in limits'
    ratio = arg1
    emit RatioUpdate(arg1);
    if owner != msg.sender:
        if stor151 != msg.sender:
            revert with 0, 'Operator: not allowed'
    if (lastConfirmedRatio / 500) + lastConfirmedRatio < lastConfirmedRatio:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 >= (lastConfirmedRatio / 500) + lastConfirmedRatio:
        if lastConfirmedRatio / 500 > lastConfirmedRatio:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 <= lastConfirmedRatio - (lastConfirmedRatio / 500):
            revert with 0, 'New ratio should be in limits'
    lastConfirmedRatio = arg2
    emit LastConfirmedRatioUpdate(arg2);
}

function mintBonds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor153 != msg.sender:
            revert with 0, 'Minter: not allowed'
    if not arg2:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSharesSupply < totalSharesSupply:
            revert with 0, 'SafeMath: addition overflow'
        if stor101[address(arg1)] < stor101[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        emit Transfer(0, 0, arg1);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if (ratio * arg2 / 10^18) + totalSharesSupply < totalSharesSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSharesSupply += ratio * arg2 / 10^18
        if (ratio * arg2 / 10^18) + stor101[address(arg1)] < stor101[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        stor101[address(arg1)] += ratio * arg2 / 10^18
        emit Transfer((ratio * arg2 / 10^18), 0, arg1);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor152 != msg.sender:
            revert with 0, 'Minter: not allowed'
    if arg2 < 0:
        if lockedSupply - arg2 <= lockedSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                        mem[200 len 28]
    else:
        if lockedSupply - arg2 > lockedSupply:
            if arg2 >= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                            mem[200 len 28]
            if lockedSupply - arg2 <= lockedSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            36,
                            0x735369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                            mem[200 len 28]
    lockedSupply -= arg2
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSharesSupply < totalSharesSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSharesSupply += arg2
    if arg2 + stor101[address(arg1)] < stor101[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor101[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        stor102[address(msg.sender)][address(arg1)] = 0
        emit Approval(0, msg.sender, arg1);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        stor102[address(msg.sender)][address(arg1)] = ratio * arg2 / 10^18
        emit Approval((ratio * arg2 / 10^18), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if 0 > stor102[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x7745524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        emit Approval(stor102[address(msg.sender)][address(arg1)], msg.sender, arg1);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ratio * arg2 / 10^18 > stor102[address(msg.sender)][address(arg1)]:
            revert with 0, 
                        32,
                        37,
                        0x7745524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                        mem[165 len 27],
                        mem[219 len 5]
        if not msg.sender:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
        if not arg1:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
        stor102[address(msg.sender)][address(arg1)] -= ratio * arg2 / 10^18
        emit Approval((stor102[address(msg.sender)][address(arg1)] - (ratio * arg2 / 10^18)), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if stor102[address(msg.sender)][address(arg1)] < stor102[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        emit Approval(stor102[address(msg.sender)][address(arg1)], msg.sender, arg1);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (ratio * arg2 / 10^18) + stor102[address(msg.sender)][address(arg1)] < stor102[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                        mem[200 len 28]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                        mem[198 len 30]
        stor102[address(msg.sender)][address(arg1)] += ratio * arg2 / 10^18
        emit Approval(((ratio * arg2 / 10^18) + stor102[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function commitDelayedBurn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor153 != msg.sender:
            revert with 0, 'Minter: not allowed'
    if pendingBurn[address(arg1)] < arg2:
        revert with 0, 'Too big amount to burn'
    if not arg2:
        if arg2 > pendingBurn[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        pendingBurn[address(arg1)] -= arg2
        if arg2 > stor158:
            revert with 0, 'SafeMath: subtraction overflow'
        stor158 -= arg2
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if 0 > stor101[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        if 0 > totalSharesSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, arg1, 0);
    else:
        if lastConfirmedRatio * arg2 / arg2 != lastConfirmedRatio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 > pendingBurn[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        pendingBurn[address(arg1)] -= arg2
        if arg2 > stor158:
            revert with 0, 'SafeMath: subtraction overflow'
        stor158 -= arg2
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if lastConfirmedRatio * arg2 / 10^18 > stor101[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        stor101[address(arg1)] -= lastConfirmedRatio * arg2 / 10^18
        if lastConfirmedRatio * arg2 / 10^18 > totalSharesSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSharesSupply -= lastConfirmedRatio * arg2 / 10^18
        emit Transfer((lastConfirmedRatio * arg2 / 10^18), arg1, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > stor101[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if stor101[arg1] < stor101[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor101[address(arg1)] = stor101[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if ratio * arg2 / 10^18 > stor101[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        stor101[address(msg.sender)] -= ratio * arg2 / 10^18
        if (ratio * arg2 / 10^18) + stor101[arg1] < stor101[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor101[address(arg1)] = (ratio * arg2 / 10^18) + stor101[arg1]
        emit Transfer((ratio * arg2 / 10^18), msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if stor152 != msg.sender:
            revert with 0, 'Minter: not allowed'
    if not arg2:
        if lockedSupply < lockedSupply:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if 0 > stor101[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        if 0 > totalSharesSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        emit Transfer(0, arg1, 0);
    else:
        if ratio * arg2 / arg2 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ratio * arg2 / 10^18 < 0:
            if (ratio * arg2 / 10^18) + lockedSupply >= lockedSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                            mem[197 len 31]
        else:
            if (ratio * arg2 / 10^18) + lockedSupply < lockedSupply:
                if ratio * arg2 / 10^18 >= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[197 len 31]
                if (ratio * arg2 / 10^18) + lockedSupply >= lockedSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x655369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                mem[197 len 31]
        lockedSupply += ratio * arg2 / 10^18
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if ratio * arg2 / 10^18 > stor101[address(arg1)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        stor101[address(arg1)] -= ratio * arg2 / 10^18
        if ratio * arg2 / 10^18 > totalSharesSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSharesSupply -= ratio * arg2 / 10^18
        emit Transfer((ratio * arg2 / 10^18), arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > stor101[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if stor101[arg2] < stor101[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor101[address(arg2)] = stor101[arg2]
        emit Transfer(0, arg1, arg2);
        if 0 > stor102[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        emit Approval(stor102[address(arg1)][address(msg.sender)], arg1, msg.sender);
    else:
        if ratio * arg3 / arg3 != ratio:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if ratio * arg3 / 10^18 > stor101[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        stor101[address(arg1)] -= ratio * arg3 / 10^18
        if (ratio * arg3 / 10^18) + stor101[arg2] < stor101[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor101[address(arg2)] = (ratio * arg3 / 10^18) + stor101[arg2]
        emit Transfer((ratio * arg3 / 10^18), arg1, arg2);
        if ratio * arg3 / 10^18 > stor102[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        stor102[address(arg1)][address(msg.sender)] -= ratio * arg3 / 10^18
        emit Approval((stor102[address(arg1)][address(msg.sender)] - (ratio * arg3 / 10^18)), arg1, msg.sender);
    return 1
}



}
