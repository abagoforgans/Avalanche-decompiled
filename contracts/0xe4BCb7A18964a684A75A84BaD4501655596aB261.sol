contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#  - exit()
#  - stakeWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#
uint256 stor0;
address owner;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
address liqPoolManagerAddress;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
mapping of uint256 balanceOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function rewardsDuration() payable {
    return rewardsDuration
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function liqPoolManager() payable {
    return liqPoolManagerAddress
}

function periodFinish() payable {
    return periodFinish
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function getRewardForDuration() payable {
    if rewardRate and rewardsDuration > -1 / rewardRate:
        revert with 0, 17
    return (rewardRate * rewardsDuration)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setLiqPoolManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the liqPoolManager for the new period'
    liqPoolManagerAddress = arg1
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function rewardPerToken() payable {
    if 0 == totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if owner != msg.sender:
        if liqPoolManagerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Liqpoll Manager or Owner can call this.'
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 18
        rewardRate = arg1 / rewardsDuration
    else:
        if periodFinish < block.timestamp:
            revert with 0, 17
        if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
            revert with 0, 17
        if arg1 > !((periodFinish * rewardRate) - (block.timestamp * rewardRate)):
            revert with 0, 17
        if not rewardsDuration:
            revert with 0, 18
        rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 18
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp > !rewardsDuration:
        revert with 0, 17
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               0
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
               0
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)], 
           0
}

function compoundReward() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if 0 == totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 0, 17
            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 0, 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if rewardsTokenAddress != stakingTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Staking and rewards token must be the same'
    if rewards[msg.sender]:
        if totalSupply > !rewards[msg.sender]:
            revert with 0, 17
        totalSupply += rewards[msg.sender]
        if balanceOf[msg.sender] > !rewards[msg.sender]:
            revert with 0, 17
        balanceOf[msg.sender] += rewards[msg.sender]
        rewards[msg.sender] = 0
        emit Staked(rewards[msg.sender], msg.sender);
    stor0 = 1
}



}
