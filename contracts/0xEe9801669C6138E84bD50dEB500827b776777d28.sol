contract main {




// =====================  Runtime code  =====================


const FACTOR_DENOMINATOR = 100 * 10^6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
mapping of uint256 unlockedOf;
mapping of struct staked;
mapping of uint256 unlockFactor;
mapping of uint256 unlockBlockGap;
mapping of uint8 stor11;
uint256 totalUnlocked;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function getStaked(address arg1) payable {
    require calldata.size - 4 >= 32
    return staked[address(msg.sender)][address(arg1)].field_0
}

function getUnlockFactor(address arg1) payable {
    require calldata.size - 4 >= 32
    return unlockFactor[address(arg1)]
}

function getUnlockBlockGap(address arg1) payable {
    require calldata.size - 4 >= 32
    return unlockBlockGap[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function totalUnlocked() payable {
    return totalUnlocked
}

function unlockedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return unlockedOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAuthorizedMintCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11[address(arg1)] = 1
}

function removeAuthorizedMintCaller(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor11[address(arg1)] = 0
}

function lockedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if unlockedOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (balanceOf[address(arg1)] - unlockedOf[address(arg1)])
}

function setUnlockFactor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unlockFactor[address(arg1)] = arg2
    emit LOG_SET_UNLOCK_FACTOR(arg2, arg1);
}

function setUnlockBlockGap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    unlockBlockGap[address(arg1)] = arg2
    emit LOG_SET_UNLOCK_BLOCK_GAP(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mintLockedToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor11[address(msg.sender)]:
            revert with 0, 'O3: MINT_CALLER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if totalSupply > 100000000 * 10^18:
        revert with 0, 'O3: TOTAL_SUPPLY_EXCEEDED'
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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

function mintUnlockedToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if not stor11[address(msg.sender)]:
            revert with 0, 'O3: MINT_CALLER_NOT_AUTHORIZED'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if arg2 + unlockedOf[address(arg1)] < unlockedOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    unlockedOf[address(arg1)] += arg2
    if arg2 + totalUnlocked < totalUnlocked:
        revert with 0, 'SafeMath: addition overflow'
    totalUnlocked += arg2
    emit LOG_UNLOCK_TRANSFER(arg2, 0, arg1);
    if totalSupply > 100000000 * 10^18:
        revert with 0, 'O3: TOTAL_SUPPLY_EXCEEDED'
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if not msg.sender:
        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
    if not arg1:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
    if arg2 > unlockedOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    47,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320756e6c6f636b65642062616c616e63,
                    mem[271 len 17],
                    mem[305 len 15]
    unlockedOf[address(msg.sender)] -= arg2
    if arg2 + unlockedOf[arg1] < unlockedOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    unlockedOf[address(arg1)] = arg2 + unlockedOf[arg1]
    emit LOG_UNLOCK_TRANSFER(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if not arg1:
        revert with 0, 32, 37, 0x7245524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
    if not arg2:
        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
    if arg3 > unlockedOf[address(arg1)]:
        revert with 0, 
                    32,
                    47,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320756e6c6f636b65642062616c616e63,
                    mem[271 len 17],
                    mem[305 len 15]
    unlockedOf[address(arg1)] -= arg3
    if arg3 + unlockedOf[arg2] < unlockedOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    unlockedOf[address(arg2)] = arg3 + unlockedOf[arg2]
    emit LOG_UNLOCK_TRANSFER(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'O3: TRANSFER_AMOUNT_EXCEEDED'
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getUnlockSpeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if unlockedOf[address(arg1)] > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not unlockFactor[address(arg2)]:
        if not balanceOf[address(arg1)] - unlockedOf[address(arg1)]:
            if unlockBlockGap[address(arg2)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg2)]
            if 0 <= 0 / unlockBlockGap[address(arg2)]:
                return 0
            return (0 / unlockBlockGap[address(arg2)])
        if (100 * 10^6 * balanceOf[address(arg1)]) - (100 * 10^6 * unlockedOf[address(arg1)]) / balanceOf[address(arg1)] - unlockedOf[address(arg1)] != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if unlockBlockGap[address(arg2)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require unlockBlockGap[address(arg2)]
        if 0 <= (100 * 10^6 * balanceOf[address(arg1)]) - (100 * 10^6 * unlockedOf[address(arg1)]) / unlockBlockGap[address(arg2)]:
            return 0
    else:
        if staked[address(arg1)][address(arg2)].field_0 * unlockFactor[address(arg2)] / unlockFactor[address(arg2)] != staked[address(arg1)][address(arg2)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not balanceOf[address(arg1)] - unlockedOf[address(arg1)]:
            if unlockBlockGap[address(arg2)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg2)]
            if staked[address(arg1)][address(arg2)].field_0 * unlockFactor[address(arg2)] <= 0 / unlockBlockGap[address(arg2)]:
                return (staked[address(arg1)][address(arg2)].field_0 * unlockFactor[address(arg2)])
            return (0 / unlockBlockGap[address(arg2)])
        if (100 * 10^6 * balanceOf[address(arg1)]) - (100 * 10^6 * unlockedOf[address(arg1)]) / balanceOf[address(arg1)] - unlockedOf[address(arg1)] != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if unlockBlockGap[address(arg2)] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require unlockBlockGap[address(arg2)]
        if staked[address(arg1)][address(arg2)].field_0 * unlockFactor[address(arg2)] <= (100 * 10^6 * balanceOf[address(arg1)]) - (100 * 10^6 * unlockedOf[address(arg1)]) / unlockBlockGap[address(arg2)]:
            return (staked[address(arg1)][address(arg2)].field_0 * unlockFactor[address(arg2)])
    return ((100 * 10^6 * balanceOf[address(arg1)]) - (100 * 10^6 * unlockedOf[address(arg1)]) / unlockBlockGap[address(arg2)])
}

function claimableUnlocked(address arg1) payable {
    require calldata.size - 4 >= 32
    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not unlockFactor[address(arg1)]:
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= 0 / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    return 0
            else:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6)
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    return 0
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6)
    else:
        if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] / unlockFactor[address(arg1)] != staked[address(msg.sender)][address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= 0 / unlockBlockGap[address(arg1)]:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6)
            else:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6)
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6)
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return 0
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        return ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6)
    return (balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)])
}

function claimUnlocked(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not unlockFactor[address(arg1)]:
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= 0 / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                staked[address(msg.sender)][address(arg1)].field_256 = block.number
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                else:
                    if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                    emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
            else:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                staked[address(msg.sender)][address(arg1)].field_256 = block.number
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                else:
                    if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                    emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
    else:
        if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] / unlockFactor[address(arg1)] != staked[address(msg.sender)][address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= 0 / unlockBlockGap[address(arg1)]:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
            else:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        emit LOG_CLAIM_UNLOCKED((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), msg.sender);
    stor6 = 1
    return 1
}

function unstake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not arg2:
        revert with 0, 'O3: ZERO_UNSTAKE_AMOUNT'
    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'O3: UNSTAKE_AMOUNT_EXCEEDED'
    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not unlockFactor[address(arg1)]:
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= 0 / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                staked[address(msg.sender)][address(arg1)].field_256 = block.number
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                else:
                    if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                    emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                mem[324 len 0] = 0
            else:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 > balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                staked[address(msg.sender)][address(arg1)].field_256 = block.number
                if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                    if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                else:
                    if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                    if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                        revert with 0, 'SafeMath: addition overflow'
                    totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                    emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            mem[324 len 0] = 0
    else:
        if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] / unlockFactor[address(arg1)] != staked[address(msg.sender)][address(arg1)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] > 0 / unlockBlockGap[address(arg1)]:
                if not 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                else:
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            else:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 > balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
        else:
            if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if unlockBlockGap[address(arg1)] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require unlockBlockGap[address(arg1)]
            if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                else:
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
            else:
                if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                else:
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 -= arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                        emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit LOG_UNSTAKE(arg2, msg.sender, arg1);
    stor6 = 1
    return 1
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not unlockFactor[address(arg1)]:
        revert with 0, 'O3: FACTOR_NOT_SET'
    if not unlockBlockGap[address(arg1)]:
        revert with 0, 'O3: BLOCK_GAP_NOT_SET'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not unlockFactor[address(arg1)]:
            if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 += arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not 0 / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            else:
                if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 += arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
        else:
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] / unlockFactor[address(arg1)] != staked[address(msg.sender)][address(arg1)].field_0:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= 0 / unlockBlockGap[address(arg1)]:
                    if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not 0 / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            else:
                if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not unlockFactor[address(arg1)]:
            if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= 0 / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 += arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not 0 / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            else:
                if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    staked[address(msg.sender)][address(arg1)].field_0 += arg2
                    staked[address(msg.sender)][address(arg1)].field_256 = block.number
                    if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                        if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                    else:
                        if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                        if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                            revert with 0, 'SafeMath: addition overflow'
                        totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                        emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
        else:
            if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] / unlockFactor[address(arg1)] != staked[address(msg.sender)][address(arg1)].field_0:
                revert with 0, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 394 len 31]
            if not balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= 0 / unlockBlockGap[address(arg1)]:
                    if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not 0 / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 0 / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * 0 / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * 0 / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
            else:
                if (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] != 100 * 10^6:
                    revert with 0, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if unlockBlockGap[address(arg1)] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require unlockBlockGap[address(arg1)]
                if staked[address(msg.sender)][address(arg1)].field_256 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] <= (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                    if not staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            if ((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * staked[address(msg.sender)][address(arg1)].field_0 * unlockFactor[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                else:
                    if not (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]:
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if 0 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            emit LOG_UNLOCK_TRANSFER(0, 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
                    else:
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)] != block.number - staked[address(msg.sender)][address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if unlockedOf[address(msg.sender)] > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 + staked[address(msg.sender)][address(arg1)].field_0 < staked[address(msg.sender)][address(arg1)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        staked[address(msg.sender)][address(arg1)].field_0 += arg2
                        staked[address(msg.sender)][address(arg1)].field_256 = block.number
                        if (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6 <= balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]:
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + unlockedOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            if ((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6) + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked += (block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6
                            emit LOG_UNLOCK_TRANSFER(((block.number * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) - (staked[address(msg.sender)][address(arg1)].field_256 * (100 * 10^6 * balanceOf[address(msg.sender)]) - (100 * 10^6 * unlockedOf[address(msg.sender)]) / unlockBlockGap[address(arg1)]) / 100 * 10^6), 0, msg.sender);
                        else:
                            if balanceOf[address(msg.sender)] < unlockedOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: addition overflow'
                            unlockedOf[address(msg.sender)] = balanceOf[address(msg.sender)]
                            if balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked < totalUnlocked:
                                revert with 0, 'SafeMath: addition overflow'
                            totalUnlocked = balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)] + totalUnlocked
                            emit LOG_UNLOCK_TRANSFER((balanceOf[address(msg.sender)] - unlockedOf[address(msg.sender)]), 0, msg.sender);
    emit LOG_STAKE(arg2, msg.sender, arg1);
    stor6 = 1
    return 1
}



}
