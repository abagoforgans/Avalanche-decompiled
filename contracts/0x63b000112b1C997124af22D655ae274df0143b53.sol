contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
uint256 stor6;
address dividendTokenAddress;
mapping of struct stor9;
mapping of struct withdrawnDividendOf;
mapping of uint8 stor11;
uint256 totalDividendsDistributed;
address owner;
uint256 numberOfTokenHolders;
uint256 lastProcessedIndex;
mapping of uint8 stor19;
mapping of uint256 lastClaimTimes;
uint256 claimWait;
uint256 minimumTokenBalanceForDividends;

function getNumberOfTokenHolders() payable {
    return numberOfTokenHolders
}

function dividendToken() payable {
    return dividendTokenAddress
}

function totalSupply() payable {
    return totalSupply
}

function lastClaimTimes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimTimes[arg1]
}

function lastProcessedIndex() payable {
    return lastProcessedIndex
}

function decimals() payable {
    return decimals
}

function excludedFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function claimWait() payable {
    return claimWait
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDividendsDistributed() payable {
    return totalDividendsDistributed
}

function owner() payable {
    return owner
}

function withdrawnDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawnDividendOf[address(arg1)].field_0
}

function minimumTokenBalanceForDividends() payable {
    return minimumTokenBalanceForDividends
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function getLastProcessedIndex() payable {
    return lastProcessedIndex
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

function setDividendTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dividendTokenAddress = arg1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BabyPooCakeDividend_Tracker: No transfers allowed'
}

function withdrawDividend() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'BabyPooCakeDividend_Tracker: withdrawDividend disabled. Use the 'claim' function on the main BabyPooCake contract.'
}

function setAuth(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor11[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Auth: caller is not the authorized'
    stor11[address(arg1)] = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BabyPooCakeDividend_Tracker: No transfers allowed'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateMinimumTokenBalanceForDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == minimumTokenBalanceForDividends:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New mimimum balance for dividend cannot be same as current minimum balance'
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    minimumTokenBalanceForDividends = 10^9 * arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function updateClaimWait(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1800:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BabyPooCakeDividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 > 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BabyPooCakeDividend_Tracker: claimWait must be updated to between 1 and 24 hours'
    if arg1 == claimWait:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'BabyPooCakeDividend_Tracker: Cannot update claimWait to same value'
    emit ClaimWaitUpdated(arg1, claimWait);
    claimWait = arg1
}

function distributeDividends(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require totalSupply > 0
    if arg1:
        if not arg1:
            if not totalSupply:
                revert with 0, 18
            if stor6 > !(0 / totalSupply):
                revert with 0, 17
            if stor6 + (0 / totalSupply) < stor6:
                revert with 0, 'SafeMath: addition overflow'
            stor6 += 0 / totalSupply
        else:
            if arg1 and 0x100000000000000000000000000000000 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 << 128 / arg1 != 0x100000000000000000000000000000000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not totalSupply:
                revert with 0, 18
            if stor6 > !(arg1 << 128 / totalSupply):
                revert with 0, 17
            if stor6 + (arg1 << 128 / totalSupply) < stor6:
                revert with 0, 'SafeMath: addition overflow'
            stor6 += arg1 << 128 / totalSupply
        emit DividendsDistributed(arg1, msg.sender);
        if totalDividendsDistributed > !arg1:
            revert with 0, 17
        if totalDividendsDistributed + arg1 < totalDividendsDistributed:
            revert with 0, 'SafeMath: addition overflow'
        totalDividendsDistributed += arg1
}

function accumulativeDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        return stor9[address(arg1)].field_128
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor9[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
    return (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
}

function dividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor9[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function withdrawableDividendOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        return (stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0)
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor9[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    return ((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0)
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function excludeFromDividends(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not stor19[address(arg1)]
    stor19[address(arg1)] = 1
    if 0 <= balanceOf[address(arg1)]:
        if 0 < balanceOf[address(arg1)]:
            if 0 > balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if balanceOf[address(arg1)] < 0:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
            if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 17
            balanceOf[address(arg1)] = 0
            if balanceOf[address(arg1)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if totalSupply < balanceOf[address(arg1)]:
                revert with 0, 17
            totalSupply -= balanceOf[address(arg1)]
            emit Transfer(balanceOf[address(arg1)], arg1, 0);
            if not stor6:
                if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
            else:
                if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor6 * balanceOf[address(arg1)] >= 0
                if stor6 * balanceOf[address(arg1)] > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < 0 and stor6 * balanceOf[address(arg1)] < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor6 * balanceOf[address(arg1)] < 0:
                    require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0
                else:
                    if stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0:
                        require stor6 * balanceOf[address(arg1)] < 0
                        require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0
                stor9[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
    else:
        if balanceOf[address(arg1)] > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < balanceOf[address(arg1)]:
            revert with 0, 17
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !-balanceOf[address(arg1)]:
            revert with 0, 17
        if totalSupply - balanceOf[address(arg1)] < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply -= balanceOf[address(arg1)]
        if balanceOf[address(arg1)] > !-balanceOf[address(arg1)]:
            revert with 0, 17
        if 0 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = 0
        emit Transfer(-balanceOf[address(arg1)], 0, arg1);
        if not stor6:
            if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
            if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
        else:
            if stor6 and -balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if -1 * stor6 * balanceOf[address(arg1)] / stor6 != -balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            require -1 * stor6 * balanceOf[address(arg1)] >= 0
            if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor9[address(arg1)].field_0:
                require -1 * stor6 * balanceOf[address(arg1)] < 0
                if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                    revert with 0, 17
                if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor9[address(arg1)].field_0
            if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            stor9[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x4c60db9c with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit ExcludeFromDividends(arg1);
}

function processAccount(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
            if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                revert with 0, 17
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
            emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
            require ext_code.size(dividendTokenAddress)
            call dividendTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                if not stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                    return 0
                lastClaimTimes[address(arg1)] = block.timestamp
                emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
                return 1
            if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
    else:
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                revert with 0, 17
            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
            withdrawnDividendOf[address(arg1)].field_128 = 0
            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
            require ext_code.size(dividendTokenAddress)
            call dividendTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0]:
                if not (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                    return 0
                lastClaimTimes[address(arg1)] = block.timestamp
                emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, arg2);
                return 1
            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
    return 0
}

function setBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor19[address(arg1)]:
        if arg2 < minimumTokenBalanceForDividends:
            if 0 <= balanceOf[address(arg1)]:
                if 0 >= balanceOf[address(arg1)]:
                    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x4c60db9c with:
                         gas gas_remaining wei
                        args 14, arg1
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor6:
                        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                            emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                    else:
                        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        require stor6 * balanceOf[address(arg1)] >= 0
                        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                            revert with 0, 17
                        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0:
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        else:
                            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                                require stor9[address(arg1)].field_0 < 0
                                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
                else:
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[address(arg1)] < 0:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 17
                    balanceOf[address(arg1)] = 0
                    if balanceOf[address(arg1)] > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply < balanceOf[address(arg1)]:
                        revert with 0, 17
                    totalSupply -= balanceOf[address(arg1)]
                    emit Transfer(balanceOf[address(arg1)], arg1, 0);
                    if not stor6:
                        if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                    else:
                        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor6 * balanceOf[address(arg1)] >= 0
                        if stor6 * balanceOf[address(arg1)] > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and stor6 * balanceOf[address(arg1)] < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor6 * balanceOf[address(arg1)] < 0:
                            require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0:
                                require stor6 * balanceOf[address(arg1)] < 0
                                require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) < stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
                    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x4c60db9c with:
                         gas gas_remaining wei
                        args 14, arg1
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor6:
                        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                            emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                    else:
                        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor6 * balanceOf[address(arg1)] >= 0
                        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                            revert with 0, 17
                        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0:
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        else:
                            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                                require stor9[address(arg1)].field_0 < 0
                                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
            else:
                if balanceOf[address(arg1)] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < balanceOf[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !-balanceOf[address(arg1)]:
                    revert with 0, 17
                if totalSupply - balanceOf[address(arg1)] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply -= balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > !-balanceOf[address(arg1)]:
                    revert with 0, 17
                if 0 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = 0
                emit Transfer(-balanceOf[address(arg1)], 0, arg1);
                if not stor6:
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                else:
                    if stor6 and -balanceOf[address(arg1)] > -1 / stor6:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if -1 * stor6 * balanceOf[address(arg1)] / stor6 != -balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    require -1 * stor6 * balanceOf[address(arg1)] >= 0
                    if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                        revert with 0, 17
                    if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor9[address(arg1)].field_0:
                        require -1 * stor6 * balanceOf[address(arg1)] < 0
                        if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                            revert with 0, 17
                        if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 + (stor6 * balanceOf[address(arg1)]) > stor9[address(arg1)].field_0
                    if stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000 and -1 * stor6 * balanceOf[address(arg1)] >= 0:
                        revert with 0, 17
                    if -1 * stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    stor9[address(arg1)].field_0 += stor6 * balanceOf[address(arg1)]
                require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x4c60db9c with:
                     gas gas_remaining wei
                    args 14, arg1
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not stor6:
                    if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 >= 0
                    if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                        if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                        emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(dividendTokenAddress)
                        call dividendTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                        else:
                            if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                else:
                    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    require stor6 * balanceOf[address(arg1)] >= 0
                    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0:
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                    else:
                        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                            require stor9[address(arg1)].field_0 < 0
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                        if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                        withdrawnDividendOf[address(arg1)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(dividendTokenAddress)
                        call dividendTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                        else:
                            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
        else:
            if arg2 <= balanceOf[address(arg1)]:
                if arg2 >= balanceOf[address(arg1)]:
                    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0xbc2b405c with:
                         gas gas_remaining wei
                        args 14, address(arg1), arg2
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor6:
                        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                            emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                    else:
                        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        require stor6 * balanceOf[address(arg1)] >= 0
                        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                            revert with 0, 17
                        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0:
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        else:
                            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                                require stor9[address(arg1)].field_0 < 0
                                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
                else:
                    if arg2 > balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if balanceOf[address(arg1)] < arg2:
                        revert with 0, 17
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
                    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
                        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)] - arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)] = arg2
                    if balanceOf[address(arg1)] - arg2 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply < balanceOf[address(arg1)] - arg2:
                        revert with 0, 17
                    totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
                    emit Transfer((balanceOf[address(arg1)] - arg2), arg1, 0);
                    if not stor6:
                        if 0 > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and 0 < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= stor9[address(arg1)].field_0
                    else:
                        if stor6 and balanceOf[address(arg1)] - arg2 > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) / stor6 != balanceOf[address(arg1)] - arg2:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) >= 0
                        if (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) > -stor9[address(arg1)].field_0 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor9[address(arg1)].field_0 >= 0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0 and (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < -stor9[address(arg1)].field_0 - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < 0:
                            require stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < stor9[address(arg1)].field_0
                        else:
                            if stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < stor9[address(arg1)].field_0:
                                require (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < 0
                                require stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor6) - (arg2 * stor6) < stor9[address(arg1)].field_0
                        stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 + (balanceOf[address(arg1)] * stor6) - (arg2 * stor6)
                    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0xbc2b405c with:
                         gas gas_remaining wei
                        args 14, address(arg1), arg2
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not stor6:
                        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                            emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                    else:
                        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                            revert with 0, 17
                        if not stor6:
                            revert with 0, 18
                        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require stor6 * balanceOf[address(arg1)] >= 0
                        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                            revert with 0, 17
                        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 17
                        if stor9[address(arg1)].field_0 < 0:
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        else:
                            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                                require stor9[address(arg1)].field_0 < 0
                                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 17
                        if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                            if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                                revert with 0, 17
                            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                            withdrawnDividendOf[address(arg1)].field_128 = 0
                            emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                            require ext_code.size(dividendTokenAddress)
                            call dividendTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0]:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    lastClaimTimes[address(arg1)] = block.timestamp
                                    emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                            else:
                                if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                    revert with 0, 17
                                withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
            else:
                if balanceOf[address(arg1)] > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 < balanceOf[address(arg1)]:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply > !(arg2 - balanceOf[address(arg1)]):
                    revert with 0, 17
                if totalSupply + arg2 - balanceOf[address(arg1)] < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = totalSupply + arg2 - balanceOf[address(arg1)]
                if balanceOf[address(arg1)] > !(arg2 - balanceOf[address(arg1)]):
                    revert with 0, 17
                if arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2
                emit Transfer((arg2 - balanceOf[address(arg1)]), 0, arg1);
                if not stor6:
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 <= stor9[address(arg1)].field_0
                    if stor9[address(arg1)].field_0 < 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                else:
                    if stor6 and arg2 - balanceOf[address(arg1)] > -1 / stor6:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) / stor6 != arg2 - balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    require (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) >= 0
                    if stor9[address(arg1)].field_0 < (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) - 0x8000000000000000000000000000000000000000000000000000000000000000 and (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) >= 0:
                        revert with 0, 17
                    if (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) < 0 and stor9[address(arg1)].field_0 > (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 - (arg2 * stor6) + (balanceOf[address(arg1)] * stor6) > stor9[address(arg1)].field_0:
                        require (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) < 0
                        if stor9[address(arg1)].field_0 < (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) - 0x8000000000000000000000000000000000000000000000000000000000000000 and (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) >= 0:
                            revert with 0, 17
                        if (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) < 0 and stor9[address(arg1)].field_0 > (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        require stor9[address(arg1)].field_0 - (arg2 * stor6) + (balanceOf[address(arg1)] * stor6) > stor9[address(arg1)].field_0
                    if stor9[address(arg1)].field_0 < (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) - 0x8000000000000000000000000000000000000000000000000000000000000000 and (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) >= 0:
                        revert with 0, 17
                    if (arg2 * stor6) - (balanceOf[address(arg1)] * stor6) < 0 and stor9[address(arg1)].field_0 > (arg2 * stor6) + (-1 * balanceOf[address(arg1)] * stor6) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    stor9[address(arg1)].field_0 = stor9[address(arg1)].field_0 - (arg2 * stor6) + (balanceOf[address(arg1)] * stor6)
                require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
                delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0xbc2b405c with:
                     gas gas_remaining wei
                    args 14, address(arg1), arg2
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not stor6:
                    if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 >= 0
                    if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                        if withdrawnDividendOf[address(arg1)].field_0 > !(stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0):
                            revert with 0, 17
                        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = stor9[address(arg1)].field_128
                        emit DividendWithdrawn((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(dividendTokenAddress)
                        call dividendTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim((stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                        else:
                            if stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawnDividendOf[address(arg1)].field_0 < stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - stor9[address(arg1)].field_128
                else:
                    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                        revert with 0, 17
                    if not stor6:
                        revert with 0, 18
                    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    require stor6 * balanceOf[address(arg1)] >= 0
                    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                        revert with 0, 17
                    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 17
                    if stor9[address(arg1)].field_0 < 0:
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                    else:
                        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                            require stor9[address(arg1)].field_0 < 0
                            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                        if withdrawnDividendOf[address(arg1)].field_0 > !((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0):
                            revert with 0, 17
                        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        withdrawnDividendOf[address(arg1)].field_0 = Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128
                        withdrawnDividendOf[address(arg1)].field_128 = 0
                        emit DividendWithdrawn(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1);
                        require ext_code.size(dividendTokenAddress)
                        call dividendTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if ext_call.return_data[0]:
                            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                lastClaimTimes[address(arg1)] = block.timestamp
                                emit Claim(((Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0), arg1, 1);
                        else:
                            if (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0 > withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if withdrawnDividendOf[address(arg1)].field_0 < (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0:
                                revert with 0, 17
                            withdrawnDividendOf[address(arg1)].field_0 = (2 * withdrawnDividendOf[address(arg1)].field_0) - (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128)
}

function getAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x17e142d1 with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if not stor6:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               -1,
                               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor9[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor9[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if delegate.return_data[0] <= lastProcessedIndex:
        if lastProcessedIndex >= numberOfTokenHolders:
            if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
                revert with 0, 17
            if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require delegate.return_data[0] >= delegate.return_data[0]
            if not stor6:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                    revert with 0, 17
                if not stor6:
                    if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(arg1)].field_0 >= 0
                    if not lastClaimTimes[address(arg1)]:
                        if 0 <= block.timestamp:
                            return address(arg1), 
                                   delegate.return_data[0],
                                   delegate.return_data[0],
                                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                                   stor9[address(arg1)].field_0,
                                   lastClaimTimes[address(arg1)],
                                   0,
                                   0
                        if block.timestamp > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < block.timestamp:
                            revert with 0, 17
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor9[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               -block.timestamp
                    if lastClaimTimes[address(arg1)] > !claimWait:
                        revert with 0, 17
                    if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor9[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               lastClaimTimes[address(arg1)] + claimWait,
                               0
                    if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           lastClaimTimes[address(arg1)] + claimWait - block.timestamp
                if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor6 * balanceOf[address(arg1)] >= 0
                if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                    revert with 0, 17
                if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(arg1)].field_0 < 0:
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                else:
                    if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                        require stor9[address(arg1)].field_0 < 0
                        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                               stor9[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if lastProcessedIndex > numberOfTokenHolders:
            revert with 0, 'SafeMath: subtraction overflow'
        if numberOfTokenHolders < lastProcessedIndex:
            revert with 0, 17
        if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if numberOfTokenHolders - lastProcessedIndex < 0:
            require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
        else:
            if delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]:
                require numberOfTokenHolders - lastProcessedIndex < 0
                require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
        if not stor6:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(arg1)].field_0 >= 0
                if not lastClaimTimes[address(arg1)]:
                    if 0 <= block.timestamp:
                        return address(arg1), 
                               delegate.return_data[0],
                               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                               stor9[address(arg1)].field_0,
                               lastClaimTimes[address(arg1)],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(arg1)] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           lastClaimTimes[address(arg1)] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       lastClaimTimes[address(arg1)] + claimWait - block.timestamp
            if stor6 and balanceOf[address(arg1)] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(arg1)] >= 0
            if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(arg1)].field_0 < 0:
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            else:
                if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                    require stor9[address(arg1)].field_0 < 0
                    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor9[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
        revert with 0, 17
    if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if lastProcessedIndex < 0:
        require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
    else:
        if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
            require lastProcessedIndex < 0
            if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
                revert with 0, 17
            if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
    if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
        revert with 0, 17
    if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if withdrawnDividendOf[address(arg1)].field_0 > stor9[address(arg1)].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor9[address(arg1)].field_128 < withdrawnDividendOf[address(arg1)].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(arg1)].field_0 >= 0
            if not lastClaimTimes[address(arg1)]:
                if 0 <= block.timestamp:
                    return address(arg1), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                           stor9[address(arg1)].field_0,
                           lastClaimTimes[address(arg1)],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(arg1)] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       lastClaimTimes[address(arg1)] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   stor9[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   lastClaimTimes[address(arg1)] + claimWait - block.timestamp
        if stor6 and balanceOf[address(arg1)] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(arg1)] >= 0
        if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(arg1)].field_0 < 0:
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        else:
            if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
                require stor9[address(arg1)].field_0 < 0
                require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               stor9[address(arg1)].field_128 - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor9[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
    if withdrawnDividendOf[address(arg1)].field_0 > Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128 < withdrawnDividendOf[address(arg1)].field_0:
        revert with 0, 17
    if not stor6:
        if stor9[address(arg1)].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(arg1)].field_0 >= 0
        if not lastClaimTimes[address(arg1)]:
            if 0 <= block.timestamp:
                return address(arg1), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                       stor9[address(arg1)].field_0,
                       lastClaimTimes[address(arg1)],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor9[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(arg1)] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   stor9[address(arg1)].field_0,
                   lastClaimTimes[address(arg1)],
                   lastClaimTimes[address(arg1)] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               stor9[address(arg1)].field_0,
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               lastClaimTimes[address(arg1)] + claimWait - block.timestamp
    if stor6 and balanceOf[address(arg1)] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(arg1)] / stor6 != balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(arg1)] >= 0
    if stor9[address(arg1)].field_0 > (-1 * stor6 * balanceOf[address(arg1)]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(arg1)] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(arg1)] < 0 and stor9[address(arg1)].field_0 < (-1 * stor6 * balanceOf[address(arg1)]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(arg1)].field_0 < 0:
        require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    else:
        if (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]:
            require stor9[address(arg1)].field_0 < 0
            require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 < stor6 * balanceOf[address(arg1)]
    require (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0 >= 0
    if not lastClaimTimes[address(arg1)]:
        if 0 <= block.timestamp:
            return address(arg1), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
                   lastClaimTimes[address(arg1)],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < block.timestamp:
            revert with 0, 17
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               0,
               -block.timestamp
    if lastClaimTimes[address(arg1)] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(arg1)] + claimWait < lastClaimTimes[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if lastClaimTimes[address(arg1)] + claimWait <= block.timestamp:
        return address(arg1), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
               lastClaimTimes[address(arg1)],
               lastClaimTimes[address(arg1)] + claimWait,
               0
    if block.timestamp > lastClaimTimes[address(arg1)] + claimWait:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastClaimTimes[address(arg1)] + claimWait < block.timestamp:
        revert with 0, 17
    return address(arg1), 
           delegate.return_data[0],
           delegate.return_data[0] - lastProcessedIndex,
           (Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0) >> 128) - withdrawnDividendOf[address(arg1)].field_0,
           Mask(128, 128, (stor6 * balanceOf[address(arg1)]) + stor9[address(arg1)].field_0),
           lastClaimTimes[address(arg1)],
           lastClaimTimes[address(arg1)] + claimWait,
           lastClaimTimes[address(arg1)] + claimWait - block.timestamp
}

function getAccountAtIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0xdeb3d896 with:
         gas gas_remaining wei
        args 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= delegate.return_data[0]:
        return 0, -1, -1, 0, 0, 0, 0, 0
    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0xd1aa9e7e with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    require ext_code.size(0xeffa4b901431c251e7cffd01a44dd957d02605eb)
    delegate 0xeffa4b901431c251e7cffd01a44dd957d02605eb.0x17e142d1 with:
         gas gas_remaining wei
        args 14, address(delegate.return_data[0])
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < 0:
        if not stor6:
            if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(delegate.return_data[0])].field_0 >= 0
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor9[address(delegate.return_data[0])].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(delegate.return_data[0])].field_0 >= 0
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               -1,
                               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor9[address(delegate.return_data[0])].field_0,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
            if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
            if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(delegate.return_data[0])].field_0 < 0:
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            else:
                if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                    require stor9[address(delegate.return_data[0])].field_0 < 0
                    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(delegate.return_data[0])].field_0 < 0:
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                require stor9[address(delegate.return_data[0])].field_0 < 0
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           -1,
                           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor9[address(delegate.return_data[0])].field_0,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(delegate.return_data[0])].field_0 < 0:
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                require stor9[address(delegate.return_data[0])].field_0 < 0
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       -1,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   -1,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               -1,
               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if delegate.return_data[0] <= lastProcessedIndex:
        if lastProcessedIndex >= numberOfTokenHolders:
            if 0 > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
                revert with 0, 17
            if delegate.return_data[0] < 0 and 0 < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            require delegate.return_data[0] >= delegate.return_data[0]
            if not stor6:
                if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(delegate.return_data[0])].field_0 >= 0
                if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor9[address(delegate.return_data[0])].field_128:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
                    revert with 0, 17
                if not stor6:
                    if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    require stor9[address(delegate.return_data[0])].field_0 >= 0
                    if not lastClaimTimes[address(delegate.return_data[0])]:
                        if 0 <= block.timestamp:
                            return address(delegate.return_data[0]), 
                                   delegate.return_data[0],
                                   delegate.return_data[0],
                                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                                   stor9[address(delegate.return_data[0])].field_0,
                                   lastClaimTimes[address(delegate.return_data[0])],
                                   0,
                                   0
                        if block.timestamp > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < block.timestamp:
                            revert with 0, 17
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor9[address(delegate.return_data[0])].field_0,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               -block.timestamp
                    if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                        revert with 0, 17
                    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                        revert with 0, 'SafeMath: addition overflow'
                    if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor9[address(delegate.return_data[0])].field_0,
                               lastClaimTimes[address(delegate.return_data[0])],
                               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                               0
                    if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                        revert with 0, 17
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
                if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
                    revert with 0, 17
                if not stor6:
                    revert with 0, 18
                if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: multiplication overflow'
                require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
                if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
                    revert with 0, 17
                if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                if stor9[address(delegate.return_data[0])].field_0 < 0:
                    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
                else:
                    if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                        require stor9[address(delegate.return_data[0])].field_0 < 0
                        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                           lastClaimTimes[address(delegate.return_data[0])],
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
            if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
            if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(delegate.return_data[0])].field_0 < 0:
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            else:
                if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                    require stor9[address(delegate.return_data[0])].field_0 < 0
                    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128:
                revert with 0, 'SafeMath: subtraction overflow'
            if Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(delegate.return_data[0])].field_0 >= 0
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0],
                               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor9[address(delegate.return_data[0])].field_0,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
            if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
            if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(delegate.return_data[0])].field_0 < 0:
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            else:
                if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                    require stor9[address(delegate.return_data[0])].field_0 < 0
                    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0],
                           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0],
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0],
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if lastProcessedIndex > numberOfTokenHolders:
            revert with 0, 'SafeMath: subtraction overflow'
        if numberOfTokenHolders < lastProcessedIndex:
            revert with 0, 17
        if numberOfTokenHolders - lastProcessedIndex > -delegate.return_data[0] + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and delegate.return_data[0] >= 0:
            revert with 0, 17
        if delegate.return_data[0] < 0 and numberOfTokenHolders - lastProcessedIndex < -delegate.return_data[0] - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if numberOfTokenHolders - lastProcessedIndex < 0:
            require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
        else:
            if delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]:
                require numberOfTokenHolders - lastProcessedIndex < 0
                require delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex < delegate.return_data[0]
        if not stor6:
            if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(delegate.return_data[0])].field_0 >= 0
            if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor9[address(delegate.return_data[0])].field_128:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
                revert with 0, 17
            if not stor6:
                if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                require stor9[address(delegate.return_data[0])].field_0 >= 0
                if not lastClaimTimes[address(delegate.return_data[0])]:
                    if 0 <= block.timestamp:
                        return address(delegate.return_data[0]), 
                               delegate.return_data[0],
                               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                               stor9[address(delegate.return_data[0])].field_0,
                               lastClaimTimes[address(delegate.return_data[0])],
                               0,
                               0
                    if block.timestamp > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < block.timestamp:
                        revert with 0, 17
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           -block.timestamp
                if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                    revert with 0, 17
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                    revert with 0, 'SafeMath: addition overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                           0
                if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
            if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
                revert with 0, 17
            if not stor6:
                revert with 0, 18
            if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: multiplication overflow'
            require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
            if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
                revert with 0, 17
            if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 17
            if stor9[address(delegate.return_data[0])].field_0 < 0:
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            else:
                if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                    require stor9[address(delegate.return_data[0])].field_0 < 0
                    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(delegate.return_data[0])].field_0 < 0:
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                require stor9[address(delegate.return_data[0])].field_0 < 0
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128:
            revert with 0, 'SafeMath: subtraction overflow'
        if Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor9[address(delegate.return_data[0])].field_0,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(delegate.return_data[0])].field_0 < 0:
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                require stor9[address(delegate.return_data[0])].field_0 < 0
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] + numberOfTokenHolders - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
        revert with 0, 17
    if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if lastProcessedIndex < 0:
        require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
    else:
        if delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]:
            require lastProcessedIndex < 0
            if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
                revert with 0, 17
            if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require delegate.return_data[0] - lastProcessedIndex > delegate.return_data[0]
    if delegate.return_data[0] < lastProcessedIndex - 0x8000000000000000000000000000000000000000000000000000000000000000 and lastProcessedIndex >= 0:
        revert with 0, 17
    if lastProcessedIndex < 0 and delegate.return_data[0] > lastProcessedIndex + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if not stor6:
        if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(delegate.return_data[0])].field_0 >= 0
        if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > stor9[address(delegate.return_data[0])].field_128:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor9[address(delegate.return_data[0])].field_128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
            revert with 0, 17
        if not stor6:
            if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            require stor9[address(delegate.return_data[0])].field_0 >= 0
            if not lastClaimTimes[address(delegate.return_data[0])]:
                if 0 <= block.timestamp:
                    return address(delegate.return_data[0]), 
                           delegate.return_data[0],
                           delegate.return_data[0] - lastProcessedIndex,
                           stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                           stor9[address(delegate.return_data[0])].field_0,
                           lastClaimTimes[address(delegate.return_data[0])],
                           0,
                           0
                if block.timestamp > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < block.timestamp:
                    revert with 0, 17
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       -block.timestamp
            if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
                revert with 0, 17
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
                revert with 0, 'SafeMath: addition overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                       0
            if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
                revert with 0, 'SafeMath: subtraction overflow'
            if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor9[address(delegate.return_data[0])].field_0,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
        if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
            revert with 0, 17
        if not stor6:
            revert with 0, 18
        if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: multiplication overflow'
        require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
        if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
            revert with 0, 17
        if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if stor9[address(delegate.return_data[0])].field_0 < 0:
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        else:
            if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
                require stor9[address(delegate.return_data[0])].field_0 < 0
                require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               stor9[address(delegate.return_data[0])].field_128 - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
    if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(delegate.return_data[0])].field_0 < 0:
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
    else:
        if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
            require stor9[address(delegate.return_data[0])].field_0 < 0
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
    if withdrawnDividendOf[address(delegate.return_data[0])].field_0 > Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128:
        revert with 0, 'SafeMath: subtraction overflow'
    if Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128 < withdrawnDividendOf[address(delegate.return_data[0])].field_0:
        revert with 0, 17
    if not stor6:
        if stor9[address(delegate.return_data[0])].field_0 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 0, 17
        require stor9[address(delegate.return_data[0])].field_0 >= 0
        if not lastClaimTimes[address(delegate.return_data[0])]:
            if 0 <= block.timestamp:
                return address(delegate.return_data[0]), 
                       delegate.return_data[0],
                       delegate.return_data[0] - lastProcessedIndex,
                       (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                       stor9[address(delegate.return_data[0])].field_0,
                       lastClaimTimes[address(delegate.return_data[0])],
                       0,
                       0
            if block.timestamp > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < block.timestamp:
                revert with 0, 17
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor9[address(delegate.return_data[0])].field_0,
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   -block.timestamp
        if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
            revert with 0, 17
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
            revert with 0, 'SafeMath: addition overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   stor9[address(delegate.return_data[0])].field_0,
                   lastClaimTimes[address(delegate.return_data[0])],
                   lastClaimTimes[address(delegate.return_data[0])] + claimWait,
                   0
        if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
            revert with 0, 'SafeMath: subtraction overflow'
        if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               stor9[address(delegate.return_data[0])].field_0,
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
    if stor6 and balanceOf[address(delegate.return_data[0])] > -1 / stor6:
        revert with 0, 17
    if not stor6:
        revert with 0, 18
    if stor6 * balanceOf[address(delegate.return_data[0])] / stor6 != balanceOf[address(delegate.return_data[0])]:
        revert with 0, 'SafeMath: multiplication overflow'
    require stor6 * balanceOf[address(delegate.return_data[0])] >= 0
    if stor9[address(delegate.return_data[0])].field_0 > (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stor6 * balanceOf[address(delegate.return_data[0])] >= 0:
        revert with 0, 17
    if stor6 * balanceOf[address(delegate.return_data[0])] < 0 and stor9[address(delegate.return_data[0])].field_0 < (-1 * stor6 * balanceOf[address(delegate.return_data[0])]) - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if stor9[address(delegate.return_data[0])].field_0 < 0:
        require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
    else:
        if (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]:
            require stor9[address(delegate.return_data[0])].field_0 < 0
            require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 < stor6 * balanceOf[address(delegate.return_data[0])]
    require (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0 >= 0
    if not lastClaimTimes[address(delegate.return_data[0])]:
        if 0 <= block.timestamp:
            return address(delegate.return_data[0]), 
                   delegate.return_data[0],
                   delegate.return_data[0] - lastProcessedIndex,
                   (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
                   Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
                   lastClaimTimes[address(delegate.return_data[0])],
                   0,
                   0
        if block.timestamp > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < block.timestamp:
            revert with 0, 17
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
               lastClaimTimes[address(delegate.return_data[0])],
               0,
               -block.timestamp
    if lastClaimTimes[address(delegate.return_data[0])] > !claimWait:
        revert with 0, 17
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < lastClaimTimes[address(delegate.return_data[0])]:
        revert with 0, 'SafeMath: addition overflow'
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait <= block.timestamp:
        return address(delegate.return_data[0]), 
               delegate.return_data[0],
               delegate.return_data[0] - lastProcessedIndex,
               (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
               Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
               lastClaimTimes[address(delegate.return_data[0])],
               lastClaimTimes[address(delegate.return_data[0])] + claimWait,
               0
    if block.timestamp > lastClaimTimes[address(delegate.return_data[0])] + claimWait:
        revert with 0, 'SafeMath: subtraction overflow'
    if lastClaimTimes[address(delegate.return_data[0])] + claimWait < block.timestamp:
        revert with 0, 17
    return address(delegate.return_data[0]), 
           delegate.return_data[0],
           delegate.return_data[0] - lastProcessedIndex,
           (Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0) >> 128) - withdrawnDividendOf[address(delegate.return_data[0])].field_0,
           Mask(128, 128, (stor6 * balanceOf[address(delegate.return_data[0])]) + stor9[address(delegate.return_data[0])].field_0),
           lastClaimTimes[address(delegate.return_data[0])],
           lastClaimTimes[address(delegate.return_data[0])] + claimWait,
           lastClaimTimes[address(delegate.return_data[0])] + claimWait - block.timestamp
}



}
