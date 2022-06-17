contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - recoverERC20(address arg1, uint256 arg2)
#  - stake(uint256 arg1)
#  - exit()
#
uint256 stor0;
address owner;
address sub_13bb3c33Address;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
mapping of struct userInfo;
address devaddr;
array of uint256 blockDeltaStartStage;
array of uint256 blockDeltaEndStage;
array of uint256 userFeeStage;
uint256 userDepFee;
uint256 PERCENT_LOCK_BONUS_REWARD;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function sub_13bb3c33(?) payable {
    return sub_13bb3c33Address
}

function totalSupply() payable {
    return totalSupply
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, 
           userInfo[arg1].field_256,
           userInfo[arg1].field_512,
           userInfo[arg1].field_768,
           userInfo[arg1].field_1024
}

function rewardsDuration() payable {
    return rewardsDuration
}

function blockDeltaStartStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaStartStage.length
    return blockDeltaStartStage[arg1]
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userDepFee() payable {
    return userDepFee
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function PERCENT_LOCK_BONUS_REWARD() payable {
    return PERCENT_LOCK_BONUS_REWARD
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function blockDeltaEndStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < blockDeltaEndStage.length
    return blockDeltaEndStage[arg1]
}

function userFeeStage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < userFeeStage.length
    return userFeeStage[arg1]
}

function devaddr() payable {
    return devaddr
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
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

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    if arg1 <= 0:
        revert with 0, 'Reward duration can't be zero'
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
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
    require ext_code.size(sub_13bb3c33Address)
    staticcall sub_13bb3c33Address.0x70a08231 with:
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
        if userInfo[address(arg1)].field_0 and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (rewardPerTokenStored * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (rewardPerTokenStored * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * userInfo[address(arg1)].field_0) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (rewardPerTokenStored * userInfo[address(arg1)].field_0) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * userInfo[address(arg1)].field_0) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * userInfo[address(arg1)].field_0) / 10^18) + rewards[address(arg1)])
}

function getReward() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalSupply != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
            if userInfo[address(msg.sender)].field_0 and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / userInfo[address(msg.sender)].field_0:
                revert with 0, 17
            if (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_0 and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                if userInfo[address(msg.sender)].field_0 and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / userInfo[address(msg.sender)].field_0:
                    revert with 0, 17
                if (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * userInfo[address(msg.sender)].field_0) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * userInfo[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * userInfo[address(msg.sender)].field_0) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if periodFinish < block.timestamp:
        revert with 0, 17
    if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
        revert with 0, 17
    if rewards[msg.sender] <= (periodFinish * rewardRate) - (block.timestamp * rewardRate):
        if rewards[msg.sender]:
            rewards[msg.sender] = 0
            require ext_code.size(sub_13bb3c33Address)
            call sub_13bb3c33Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, rewards[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if rewards[msg.sender] and PERCENT_LOCK_BONUS_REWARD > -1 / rewards[msg.sender]:
                revert with 0, 17
            require ext_code.size(sub_13bb3c33Address)
            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, rewards[msg.sender] * PERCENT_LOCK_BONUS_REWARD / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardPaid(rewards[msg.sender], msg.sender);
    else:
        if (periodFinish * rewardRate) - (block.timestamp * rewardRate):
            rewards[msg.sender] = 0
            require ext_code.size(sub_13bb3c33Address)
            call sub_13bb3c33Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (periodFinish * rewardRate) - (block.timestamp * rewardRate)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) and PERCENT_LOCK_BONUS_REWARD > -1 / (periodFinish * rewardRate) - (block.timestamp * rewardRate):
                revert with 0, 17
            require ext_code.size(sub_13bb3c33Address)
            call sub_13bb3c33Address.lock(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (periodFinish * rewardRate * PERCENT_LOCK_BONUS_REWARD) - (block.timestamp * rewardRate * PERCENT_LOCK_BONUS_REWARD) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit RewardPaid(((periodFinish * rewardRate) - (block.timestamp * rewardRate)), msg.sender);
    stor0 = 1
}



}
