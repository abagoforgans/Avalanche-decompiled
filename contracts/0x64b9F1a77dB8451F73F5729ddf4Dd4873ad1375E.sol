contract main {




// =====================  Runtime code  =====================


#
#  - setPidToken(uint256 arg1, address arg2)
#  - withdraw(uint256 arg1)
#  - getReward()
#  - setFeeManager(address arg1)
#  - withdrawAll()
#  - migrate(address arg1, uint256 arg2)
#  - recoverToken(address arg1, uint256 arg2)
#  - deposit(uint256 arg1)
#  - initialize(uint256 arg1, address arg2)
#  - setRewardsToken(address arg1)
#  - depositAll()
#  - sub_deca6b24(?)
#
const priceShare = 10^18

const poolType = 2


address owner;
uint256 lastPauseTime;
uint8 paused;
mapping of uint8 stor153;
uint8 stor154;
address keeperAddress;
address stakingTokenAddress;
address rewardsDistributionAddress;
address rewardsTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 balance;
mapping of uint256 sharesOf;
uint256 pid;
mapping of uint256 depositedAt;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return balance
}

function depositedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return depositedAt[address(arg1)]
}

function rewardsDuration() payable {
    return rewardsDuration
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function rewardsDistribution() payable {
    return rewardsDistributionAddress
}

function paused() payable {
    return bool(paused)
}

function principalOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
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

function lastPauseTime() payable {
    return lastPauseTime
}

function keeper() payable {
    return keeperAddress
}

function balance() payable {
    return balance
}

function isWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor153[address(arg1)])
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

function periodFinish() payable {
    return periodFinish
}

function pid() payable {
    return pid
}

function sharesOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sharesOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setRewardsDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsDistributionAddress = arg1
}

function setWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor153[address(arg1)] = uint8(arg2)
    emit Whitelisted(arg2, arg1);
}

function disableWhitelist(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor154 = uint8(arg1)
    if not arg1:
        emit EnableWhitelist()
    else:
        emit DisableWhitelist()
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardsDuration * rewardRate)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(paused):
        paused = uint8(arg1)
        if uint8(arg1):
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(paused));
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

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if keeperAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: caller is not the owner or keeper'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'VaultController: invalid keeper address'
    keeperAddress = arg1
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LpToLydVault: reward duration can only be updated after the period ends'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function harvest() payable {
    require ext_code.size(0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084)
    staticcall 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xfb26525b14048b7bb1f3794f6129176195db7766)
    call 0xfb26525b14048b7bb1f3794f6129176195db7766.withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084)
    staticcall 0x4c9b4e1ac6f24cde3660d5e4ef1ebf77c710c084.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
}

function rewardPerToken() payable {
    if 0 == balance:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / balance) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / balance) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored)
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PausableUpgradeable: caller is not the rewardsDistribution'
    if balance != 0:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if not rewardsDuration:
            revert with 0, 'SafeMath: division by zero', 0
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = arg1 / rewardsDuration
        else:
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0, 'SafeMath: multiplication overflow'
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if not rewardsDuration:
                revert with 0, 'SafeMath: division by zero', 0
            rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0xf5eb42dc with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 'SafeMath: division by zero', 0
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'LpToLydVault: reward rate must be in the right range'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not sharesOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not sharesOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sharesOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < (0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sharesOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / sharesOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * sharesOf[address(arg1)]) + (rewardPerTokenStored * sharesOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * sharesOf[address(arg1)]) / 10^18))
}



}
