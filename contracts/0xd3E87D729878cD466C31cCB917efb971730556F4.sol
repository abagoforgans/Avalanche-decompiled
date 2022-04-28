contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#  - initialize(address arg1)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 paused;
address owner;
mapping of uint8 stor251;
mapping of uint8 stor252;
mapping of uint8 stor253;
mapping of uint256 stor254;
uint8 canClaim;
uint256 sellFeeRate;
address feeAddress;
uint256 rewardCycleBlock;
uint256 threshHoldTopUpRate;
address stakerAddress;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function isSellAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor252[address(arg1)])
}

function decimals() payable {
    return decimals
}

function feeAddress() payable {
    return feeAddress
}

function sellFeeRate() payable {
    return sellFeeRate
}

function paused() payable {
    return bool(paused)
}

function canClaim() payable {
    return bool(canClaim)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function rewardCycleBlock() payable {
    return rewardCycleBlock
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function stakerAddress() payable {
    return stakerAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isExceptionAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor253[address(arg1)])
}

function threshHoldTopUpRate() payable {
    return threshHoldTopUpRate
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

function isAvailableToClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor254[address(arg1)]:
        return (block.timestamp > stor254[address(arg1)])
    return 1
}

function setStakerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stakerAddress = arg1
}

function getNextAvailableClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor254[address(arg1)]:
        return stor254[address(arg1)]
    return (block.timestamp - 60)
}

function setThreshHoldTopUpRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    threshHoldTopUpRate = arg1
}

function setSellFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sellFeeRate = arg1
    emit UpdateSellFeeRate(arg1);
}

function addSellAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor252[address(arg1)] = 1
    emit AddSellAddress(arg1);
}

function removeSellAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor252[address(arg1)] = 0
    emit RemoveSellAddress(arg1);
}

function setNextAvailableClaimTime(address arg1) payable {
    require calldata.size - 4 >= 32
    if stakerAddress != msg.sender:
        revert with 0, 'Only staker address'
    stor254[address(arg1)] = rewardCycleBlock + block.timestamp
}

function setExceptionAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor253[address(arg1)] = 1
    emit UpdateExceptionAddress(arg1);
}

function removeExceptionAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor253[address(arg1)] = 0
    emit UpdateExceptionAddress(arg1);
}

function blackListAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    require arg2 != bool(stor251[address(arg1)])
    stor251[address(arg1)] = uint8(arg2)
    emit Blacklist(arg2, arg1);
    return 1
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, 0, arg1);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if paused:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[206 len 22]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function calculateTopUpClaim(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not arg1:
        return (arg2 + block.timestamp)
    if not arg4:
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 0 / arg1 < arg3:
            return 0
        if not arg2:
            if 0 < arg2:
                return 0
        else:
            if 0 / arg1 * arg2 / arg2 != 0 / arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 0 / arg1 * arg2 / 100 < arg2:
                return (0 / arg1 * arg2 / 100)
    else:
        if 100 * arg4 / arg4 != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg1
        if 100 * arg4 / arg1 < arg3:
            return 0
        if not arg2:
            if 0 < arg2:
                return 0
        else:
            if 100 * arg4 / arg1 * arg2 / arg2 != 100 * arg4 / arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 100 * arg4 / arg1 * arg2 / 100 < arg2:
                return (100 * arg4 / arg1 * arg2 / 100)
    return arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if paused:
        revert with 0, 'Pausable: paused'
    if stor251[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73426c61636b6c69737420616464726573732063616e6e6f74207472616e736665,
                    mem[197 len 31]
    if not stor252[address(arg2)]:
        if stor254[address(arg2)] >= block.timestamp:
            if not balanceOf[address(arg2)]:
                stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
            else:
                if not arg3:
                    if balanceOf[address(arg2)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require balanceOf[address(arg2)]
                    if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                        if block.timestamp + 604799 < stor254[address(arg2)]:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not rewardCycleBlock:
                            if 0 < rewardCycleBlock:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                stor254[address(arg2)] += rewardCycleBlock
                                if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                stor254[address(arg2)] += rewardCycleBlock
                                if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if 100 * arg3 / arg3 != 100:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if balanceOf[address(arg2)] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require balanceOf[address(arg2)]
                    if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                        if block.timestamp + 604799 < stor254[address(arg2)]:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not rewardCycleBlock:
                            if 0 < rewardCycleBlock:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                stor254[address(arg2)] += rewardCycleBlock
                                if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                stor254[address(arg2)] += rewardCycleBlock
                                if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
        else:
            if balanceOf[address(arg2)] <= 0:
                if not balanceOf[address(arg2)]:
                    stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                    if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if not arg3:
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                    if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if 100 * arg3 / arg3 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                    if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
            else:
                if not balanceOf[address(arg2)]:
                    stor254[address(arg2)] = (2 * block.timestamp) + rewardCycleBlock
                    if block.timestamp + 604799 < (2 * block.timestamp) + rewardCycleBlock:
                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if not arg3:
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            stor254[address(arg2)] = block.timestamp
                            if block.timestamp + 604799 < block.timestamp:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                    if 604799 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                    if 604799 < 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                    if 604799 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if 100 * arg3 / arg3 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            stor254[address(arg2)] = block.timestamp
                            if block.timestamp + 604799 < block.timestamp:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                    if 604799 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] = block.timestamp + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                    if 604799 < 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                    if 604799 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
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
        if paused:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[206 len 22]
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
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
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if stor253[address(arg1)]:
            if stor254[address(arg2)] >= block.timestamp:
                if not balanceOf[address(arg2)]:
                    stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                    if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if not arg3:
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                    if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if 100 * arg3 / arg3 != 100:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if balanceOf[address(arg2)] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require balanceOf[address(arg2)]
                        if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not rewardCycleBlock:
                                if 0 < rewardCycleBlock:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                    stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                    if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    stor254[address(arg2)] += rewardCycleBlock
                                    if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
            else:
                if balanceOf[address(arg2)] <= 0:
                    if not balanceOf[address(arg2)]:
                        stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                        if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not arg3:
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if 100 * arg3 / arg3 != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if not balanceOf[address(arg2)]:
                        stor254[address(arg2)] = (2 * block.timestamp) + rewardCycleBlock
                        if block.timestamp + 604799 < (2 * block.timestamp) + rewardCycleBlock:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not arg3:
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                stor254[address(arg2)] = block.timestamp
                                if block.timestamp + 604799 < block.timestamp:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp
                                        if block.timestamp + 604799 < block.timestamp:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                        if 604799 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                        if 604799 < 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                        if 604799 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if 100 * arg3 / arg3 != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                stor254[address(arg2)] = block.timestamp
                                if block.timestamp + 604799 < block.timestamp:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp
                                        if block.timestamp + 604799 < block.timestamp:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                        if 604799 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] = block.timestamp + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                        if 604799 < 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                        if 604799 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
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
            if paused:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            42,
                            0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                            mem[206 len 22]
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
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
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if not arg3:
                if 0 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor254[address(arg2)] >= block.timestamp:
                    if not balanceOf[address(arg2)]:
                        stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                        if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not arg3:
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if 100 * arg3 / arg3 != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if balanceOf[address(arg2)] <= 0:
                        if not balanceOf[address(arg2)]:
                            stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                            if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not arg3:
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                            if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 100 * arg3 / arg3 != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] += 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                            if block.timestamp + 604799 < stor254[address(arg2)] + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not balanceOf[address(arg2)]:
                            stor254[address(arg2)] = (2 * block.timestamp) + rewardCycleBlock
                            if block.timestamp + 604799 < (2 * block.timestamp) + rewardCycleBlock:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not arg3:
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp
                                            if block.timestamp + 604799 < block.timestamp:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                            if 604799 < 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if 100 * arg3 / arg3 != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 100 * arg3 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp
                                            if block.timestamp + 604799 < block.timestamp:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 100 * arg3 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                            if 604799 < 100 * arg3 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
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
                if paused:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                42,
                                0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                                mem[206 len 22]
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
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
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if sellFeeRate * arg3 / arg3 != sellFeeRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sellFeeRate * arg3 / 100 > arg3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor254[address(arg2)] >= block.timestamp:
                    if not balanceOf[address(arg2)]:
                        stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                        if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not arg3 - (sellFeeRate * arg3 / 100):
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / arg3 - (sellFeeRate * arg3 / 100) != 100:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if balanceOf[address(arg2)] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require balanceOf[address(arg2)]
                            if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                if block.timestamp + 604799 < stor254[address(arg2)]:
                                    stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if not rewardCycleBlock:
                                    if 0 < rewardCycleBlock:
                                        if block.timestamp + 604799 < stor254[address(arg2)]:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                        stor254[address(arg2)] += (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                        if block.timestamp + 604799 < stor254[address(arg2)] + ((100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        stor254[address(arg2)] += rewardCycleBlock
                                        if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                else:
                    if balanceOf[address(arg2)] <= 0:
                        if not balanceOf[address(arg2)]:
                            stor254[address(arg2)] = stor254[address(arg2)] + rewardCycleBlock + block.timestamp
                            if 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not arg3 - (sellFeeRate * arg3 / 100):
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] += 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                            if block.timestamp + 604799 < stor254[address(arg2)] + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / arg3 - (sellFeeRate * arg3 / 100) != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    if block.timestamp + 604799 < stor254[address(arg2)]:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            if block.timestamp + 604799 < stor254[address(arg2)]:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] += (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100
                                            if block.timestamp + 604799 < stor254[address(arg2)] + ((100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100):
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] += rewardCycleBlock
                                            if block.timestamp + 604799 < stor254[address(arg2)] + rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                    else:
                        if not balanceOf[address(arg2)]:
                            stor254[address(arg2)] = (2 * block.timestamp) + rewardCycleBlock
                            if block.timestamp + 604799 < (2 * block.timestamp) + rewardCycleBlock:
                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                        else:
                            if not arg3 - (sellFeeRate * arg3 / 100):
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if 0 / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp
                                            if block.timestamp + 604799 < block.timestamp:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != 0 / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + (0 / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                            if 604799 < 0 / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                            else:
                                if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / arg3 - (sellFeeRate * arg3 / 100) != 100:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if balanceOf[address(arg2)] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require balanceOf[address(arg2)]
                                if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] < threshHoldTopUpRate:
                                    stor254[address(arg2)] = block.timestamp
                                    if block.timestamp + 604799 < block.timestamp:
                                        stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                else:
                                    if not rewardCycleBlock:
                                        if 0 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp
                                            if block.timestamp + 604799 < block.timestamp:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                    else:
                                        if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / rewardCycleBlock != (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100 < rewardCycleBlock:
                                            stor254[address(arg2)] = block.timestamp + ((100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100)
                                            if 604799 < (100 * arg3) - (100 * sellFeeRate * arg3 / 100) / balanceOf[address(arg2)] * rewardCycleBlock / 100:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                                        else:
                                            stor254[address(arg2)] = block.timestamp + rewardCycleBlock
                                            if 604799 < rewardCycleBlock:
                                                stor254[address(arg2)] = block.timestamp + (168 * 24 * 3600)
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not sellFeeRate * arg3 / 100:
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if paused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    42,
                                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                                    mem[206 len 22]
                    if arg3 - (sellFeeRate * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sellFeeRate * arg3 / 100)
                    if arg3 - (sellFeeRate * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (sellFeeRate * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (sellFeeRate * arg3 / 100)), arg1, arg2);
                    if arg3 - (sellFeeRate * arg3 / 100) > allowance[address(arg1)][address(msg.sender)]:
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
                else:
                    if not feeAddress:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if paused:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    42,
                                    0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                                    mem[206 len 22]
                    if sellFeeRate * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= sellFeeRate * arg3 / 100
                    if (sellFeeRate * arg3 / 100) + balanceOf[stor257] < balanceOf[stor257]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor257] += sellFeeRate * arg3 / 100
                    emit Transfer((sellFeeRate * arg3 / 100), arg1, feeAddress);
                    if sellFeeRate * arg3 / 100 > allowance[address(arg1)][address(msg.sender)]:
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
                    allowance[address(arg1)][address(msg.sender)] -= sellFeeRate * arg3 / 100
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - (sellFeeRate * arg3 / 100)), arg1, msg.sender);
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                    if paused:
                        revert with 0, 32, 42, 0x6f45524332305061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[398 len 22]
                    if arg3 - (sellFeeRate * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7245524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (sellFeeRate * arg3 / 100)
                    if arg3 - (sellFeeRate * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (sellFeeRate * arg3 / 100) + balanceOf[arg2]
                    emit Transfer((arg3 - (sellFeeRate * arg3 / 100)), arg1, arg2);
                    if arg3 - (sellFeeRate * arg3 / 100) > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[456 len 24],
                                    mem[504 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[584 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[582 len 30]
                ('bool', 'msg.sender')
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (sellFeeRate * arg3 / 100)
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (sellFeeRate * arg3 / 100)), arg1, msg.sender);
    return 1
}



}
