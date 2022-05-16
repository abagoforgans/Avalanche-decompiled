contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#  - notifyRewardAmount(address arg1, uint256 arg2)
#  - exit()
#
uint256 stor0;
uint8 stor1;
address owner; offset 8
address stakingTokenAddress;
mapping of struct rewardData;
array of address rewardTokens;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() payable {
    return totalSupply
}

function rewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardData[arg1].field_0, 
           rewardData[arg1].field_256,
           rewardData[arg1].field_512,
           rewardData[arg1].field_768,
           rewardData[arg1].field_1024,
           rewardData[arg1].field_1280
}

function paused() payable {
    return bool(stor1)
}

function userRewardPerTokenPaid(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userRewardPerTokenPaid[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rewardTokens.length
    return rewardTokens[arg1]
}

function owner() payable {
    return owner
}

function rewards(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return rewards[arg1][arg2]
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

function lastTimeRewardApplicable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < rewardData[address(arg1)].field_512:
        return block.timestamp
    return rewardData[address(arg1)].field_512
}

function setRewardsDistributor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardData[address(arg1)].field_0 = arg2
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

function addReward(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not rewardData[address(arg1)].field_256
    rewardTokens.length++
    rewardTokens[rewardTokens.length] = arg1
    rewardData[address(arg1)].field_0 = arg2
    rewardData[address(arg1)].field_256 = arg3
}

function setRewardsDuration(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp <= rewardData[address(arg1)].field_512:
        revert with 0, 'Reward period still active'
    require rewardData[address(arg1)].field_0 == msg.sender
    if arg2 <= 0:
        revert with 0, 'Reward duration must be non-zero'
    rewardData[address(arg1)].field_256 = arg2
    emit RewardsDurationUpdated(address(arg1), rewardData[address(arg1)].field_256);
}

function getRewardForDuration(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not rewardData[address(arg1)].field_768:
        return 0
    require rewardData[address(arg1)].field_768
    if rewardData[address(arg1)].field_768 * rewardData[address(arg1)].field_256 / rewardData[address(arg1)].field_768 != rewardData[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardData[address(arg1)].field_768 * rewardData[address(arg1)].field_256)
}

function rewardPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return rewardData[address(arg1)].field_1280
    if block.timestamp < rewardData[address(arg1)].field_512:
        if rewardData[address(arg1)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg1)].field_1024:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardData[address(arg1)].field_1280 + (0 / totalSupply) < rewardData[address(arg1)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardData[address(arg1)].field_1280 + (0 / totalSupply))
        require block.timestamp - rewardData[address(arg1)].field_1024
        if (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / block.timestamp - rewardData[address(arg1)].field_1024 != rewardData[address(arg1)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardData[address(arg1)].field_1280 + (0 / totalSupply) < rewardData[address(arg1)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardData[address(arg1)].field_1280 + (0 / totalSupply))
        require (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768)
        if (10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / (block.timestamp * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg1)].field_1280 + ((10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardData[address(arg1)].field_1280 + ((10^18 * block.timestamp * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply))
    if rewardData[address(arg1)].field_1024 > rewardData[address(arg1)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg1)].field_512 - rewardData[address(arg1)].field_1024:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg1)].field_1280 + (0 / totalSupply) < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardData[address(arg1)].field_1280 + (0 / totalSupply))
    require rewardData[address(arg1)].field_512 - rewardData[address(arg1)].field_1024
    if (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / rewardData[address(arg1)].field_512 - rewardData[address(arg1)].field_1024 != rewardData[address(arg1)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg1)].field_1280 + (0 / totalSupply) < rewardData[address(arg1)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardData[address(arg1)].field_1280 + (0 / totalSupply))
    require (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768)
    if (10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / (rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardData[address(arg1)].field_1280 + ((10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply) < rewardData[address(arg1)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardData[address(arg1)].field_1280 + ((10^18 * rewardData[address(arg1)].field_512 * rewardData[address(arg1)].field_768) - (10^18 * rewardData[address(arg1)].field_1024 * rewardData[address(arg1)].field_768) / totalSupply))
}

function earned(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not totalSupply:
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)][address(arg2)]
        require balanceOf[address(arg1)]
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
    if block.timestamp < rewardData[address(arg2)].field_512:
        if rewardData[address(arg2)].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - rewardData[address(arg2)].field_1024:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardData[address(arg2)].field_1280 + (0 / totalSupply) < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)][address(arg2)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)][address(arg2)]
            require balanceOf[address(arg1)]
            if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
        require block.timestamp - rewardData[address(arg2)].field_1024
        if (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / block.timestamp - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if rewardData[address(arg2)].field_1280 + (0 / totalSupply) < rewardData[address(arg2)].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + (0 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)][address(arg2)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)][address(arg2)]
            require balanceOf[address(arg1)]
            if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
        require (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768)
        if (10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (block.timestamp * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg2)].field_1280 + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)][address(arg2)]
        require balanceOf[address(arg1)]
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
    if rewardData[address(arg2)].field_1024 > rewardData[address(arg2)].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg2)].field_1280 + (0 / totalSupply) < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)][address(arg2)]
        require balanceOf[address(arg1)]
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
    require rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024
    if (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / rewardData[address(arg2)].field_512 - rewardData[address(arg2)].field_1024 != rewardData[address(arg2)].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardData[address(arg2)].field_1280 + (0 / totalSupply) < rewardData[address(arg2)].field_1280:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + (0 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)][address(arg2)]
        require balanceOf[address(arg1)]
        if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + (0 / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
    require (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768)
    if (10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / (rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if rewardData[address(arg2)].field_1280 + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) < rewardData[address(arg2)].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)][address(arg2)] > rewardData[address(arg2)].field_1280 + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)][address(arg2)]
    require balanceOf[address(arg1)]
    if (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardData[address(arg2)].field_1280 + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply) - userRewardPerTokenPaid[address(arg1)][address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if ((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)] < (rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardData[address(arg2)].field_1280 * balanceOf[address(arg1)]) + ((10^18 * rewardData[address(arg2)].field_512 * rewardData[address(arg2)].field_768) - (10^18 * rewardData[address(arg2)].field_1024 * rewardData[address(arg2)].field_768) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)][address(arg2)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)][address(arg2)])
}

function getReward() payable {
    mem[64] = 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    while idx < rewardTokens.length:
        if totalSupply:
            if block.timestamp < rewardData[stor4[idx]].field_512:
                if rewardData[stor4[idx]].field_1024 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - rewardData[stor4[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor4[idx]].field_1280 += 0 / totalSupply
                else:
                    require block.timestamp - rewardData[stor4[idx]].field_1024
                    if (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / block.timestamp - rewardData[stor4[idx]].field_1024 != rewardData[stor4[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor4[idx]].field_1280 += 0 / totalSupply
                    else:
                        require (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768)
                        if (10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor4[idx]].field_1280 += (10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply
            else:
                if rewardData[stor4[idx]].field_1024 > rewardData[stor4[idx]].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardData[stor4[idx]].field_1280 += 0 / totalSupply
                else:
                    require rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024
                    if (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024 != rewardData[stor4[idx]].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if not (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor4[idx]].field_1280 += 0 / totalSupply
                    else:
                        require (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768)
                        if (10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardData[stor4[idx]].field_1280 += (10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply
        mem[0] = rewardTokens[idx]
        mem[32] = 3
        if block.timestamp < rewardData[stor4[idx]].field_512:
            rewardData[stor4[idx]].field_1024 = block.timestamp
        else:
            rewardData[stor4[idx]].field_1024 = rewardData[stor4[idx]].field_512
        if msg.sender:
            if not totalSupply:
                if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if rewards[address(msg.sender)][stor4[idx]] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                    if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if block.timestamp < rewardData[stor4[idx]].field_512:
                    if rewardData[stor4[idx]].field_1024 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - rewardData[stor4[idx]].field_1024:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)][stor4[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - rewardData[stor4[idx]].field_1024
                        if (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / block.timestamp - rewardData[stor4[idx]].field_1024 != rewardData[stor4[idx]].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)][stor4[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768)
                            if (10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / (block.timestamp * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardData[stor4[idx]].field_1280 + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) < rewardData[stor4[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)][stor4[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if rewardData[stor4[idx]].field_1024 > rewardData[stor4[idx]].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024:
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                            revert with 0, 'SafeMath: addition overflow'
                        if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + (0 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)][stor4[idx]] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024
                        if (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / rewardData[stor4[idx]].field_512 - rewardData[stor4[idx]].field_1024 != rewardData[stor4[idx]].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                        if not (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768):
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardData[stor4[idx]].field_1280 + (0 / totalSupply) < rewardData[stor4[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + (0 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)][stor4[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + (0 / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + (0 / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768)
                            if (10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / (rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            if rewardData[stor4[idx]].field_1280 + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) < rewardData[stor4[idx]].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            if userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] > rewardData[stor4[idx]].field_1280 + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)][stor4[idx]] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardData[stor4[idx]].field_1280 + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)][stor4[idx]]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                                if ((rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)][stor4[idx]] < (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)][stor4[idx]] += (rewardData[stor4[idx]].field_1280 * balanceOf[address(msg.sender)]) + ((10^18 * rewardData[stor4[idx]].field_512 * rewardData[stor4[idx]].field_768) - (10^18 * rewardData[stor4[idx]].field_1024 * rewardData[stor4[idx]].field_768) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] * balanceOf[address(msg.sender)]) / 10^18
            mem[0] = rewardTokens[idx]
            mem[32] = sha3(address(msg.sender), 5)
            userRewardPerTokenPaid[address(msg.sender)][stor4[idx]] = rewardData[stor4[idx]].field_1280
        idx = idx + 1
        continue 
    idx = 0
    while idx < rewardTokens.length:
        mem[0] = rewardTokens[idx]
        mem[32] = sha3(address(msg.sender), 6)
        if rewards[address(msg.sender)][stor4[idx]] > 0:
            mem[0] = rewardTokens[idx]
            mem[32] = sha3(address(msg.sender), 6)
            rewards[address(msg.sender)][stor4[idx]] = 0
            _5366 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = rewards[address(msg.sender)][stor4[idx]]
            _5367 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_5367 + 32] = mem[_5367 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[64] = _5366 + 164
            mem[_5366 + 100] = 32
            mem[_5366 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(rewardTokens[idx]) <= 0:
                revert with 0, 'Address: call to non-contract'
            _5373 = mem[_5367]
            s = 0
            while s < _5373:
                mem[_5366 + s + 164] = mem[_5367 + s + 32]
                s = s + 32
                continue 
            if ceil32(_5373) > _5373:
                mem[_5366 + _5373 + 164] = 0
            call rewardTokens[idx].mem[_5366 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_5366 + 168 len _5373 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96] > 0:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_5366 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5366 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[_5366 + idx + 232] = mem[_5366 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_5366 + 232]
                if mem[96] > 0:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5366 + 164] = rewards[address(msg.sender)][stor4[idx]]
            else:
                mem[64] = _5366 + ceil32(return_data.size) + 165
                mem[_5366 + 164] = return_data.size
                mem[_5366 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_5366 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_5366 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[_5366 + ceil32(return_data.size) + idx + 233] = mem[_5366 + idx + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_5366 + ceil32(return_data.size) + 233]
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[_5366 + 196] == bool(mem[_5366 + 196])
                    if not mem[_5366 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_5366 + ceil32(return_data.size) + 165] = rewards[address(msg.sender)][stor4[idx]]
            emit RewardPaid(rewards[address(msg.sender)][stor4[idx]], msg.sender, rewardTokens[idx]);
        idx = idx + 1
        continue 
    stor0 = 1
}



}
