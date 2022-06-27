contract main {




// =====================  Runtime code  =====================


#
#  - sub_142fcf4f(?)
#  - getReward()
#  - queueNewRewards(uint256 arg1)
#  - getReward(address arg1, bool arg2)
#  - donate(uint256 arg1)
#
const sub_4cfe2f4a(?) = 830

const DURATION = (168 * 24 * 3600)


address rewardTokenAddress;
address boosterAddress;
address rewardManagerAddress;
uint256 pid;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 queuedRewards;
uint256 currentRewards;
uint256 historicalRewards;
uint256 totalSupply;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
mapping of uint256 balanceOf;
array of address extraRewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function rewardManager() payable {
    return rewardManagerAddress
}

function totalSupply() payable {
    return totalSupply
}

function historicalRewards() payable {
    return historicalRewards
}

function extraRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < extraRewards.length
    return address(extraRewards[arg1])
}

function queuedRewards() payable {
    return queuedRewards
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userRewardPerTokenPaid[arg1]
}

function currentRewards() payable {
    return currentRewards
}

function booster() payable {
    return boosterAddress
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function extraRewardsLength() payable {
    return extraRewards.length
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

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function clearExtraRewards() payable {
    if rewardManagerAddress != msg.sender:
        revert with 0, '!authorized'
    emit 0x6d160206 
    extraRewards.length = 0
    idx = 0
    while extraRewards.length > idx:
        uint256(extraRewards[idx]) = 0
        idx = idx + 1
        continue 
}

function initialize(uint256 arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if rewardTokenAddress:
        revert with 0, 1
    pid = arg1
    rewardTokenAddress = arg2
    boosterAddress = arg3
    rewardManagerAddress = arg4
}

function addExtraReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardManagerAddress != msg.sender:
        revert with 0, '!authorized'
    if not arg1:
        revert with 0, '!reward setting'
    emit 0x7a486d50: arg1
    extraRewards.length++
    address(extraRewards[extraRewards.length]) = arg1
    return 1
}

function rewardPerToken() payable {
    if not totalSupply:
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

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
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
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
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

function stake(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not arg1:
                if arg2 <= 0:
                    revert with 0, 'RewardPool : Cannot stake 0'
                if boosterAddress != msg.sender:
                    revert with 0, '!authorized'
                idx = 0
                while idx < extraRewards.length:
                    mem[0] = 15
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    call address(extraRewards[idx]).0xadc9772e with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _491 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_491] == bool(mem[_491])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if not totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                    mem[32] = 12
                    userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_494] == bool(mem[_494])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _492 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_492] == bool(mem[_492])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_493] == bool(mem[_493])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
        else:
            lastUpdateTime = periodFinish
            if not arg1:
                if arg2 <= 0:
                    revert with 0, 'RewardPool : Cannot stake 0'
                if boosterAddress != msg.sender:
                    revert with 0, '!authorized'
                idx = 0
                while idx < extraRewards.length:
                    mem[0] = 15
                    mem[mem[64] + 4] = arg1
                    mem[mem[64] + 36] = arg2
                    call address(extraRewards[idx]).0xadc9772e with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _495 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_495] == bool(mem[_495])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if not totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 17
                    if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                        revert with 0, 17
                    if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                        revert with 0, 17
                    mem[0] = arg1
                    rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                    mem[32] = 12
                    userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _498 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_498] == bool(mem[_498])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
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
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _496 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_496] == bool(mem[_496])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _497 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_497] == bool(mem[_497])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not arg1:
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _475 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_475] == bool(mem[_475])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _478 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_478] == bool(mem[_478])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _476 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_476] == bool(mem[_476])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
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
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _477 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_477] == bool(mem[_477])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not arg1:
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_479] == bool(mem[_479])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _482 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_482] == bool(mem[_482])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _480 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_480] == bool(mem[_480])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
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
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _481 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_481] == bool(mem[_481])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
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
                if not arg1:
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _483 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_483] == bool(mem[_483])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _486 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_486] == bool(mem[_486])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _484 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_484] == bool(mem[_484])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
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
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _485 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_485] == bool(mem[_485])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not arg1:
                    if arg2 <= 0:
                        revert with 0, 'RewardPool : Cannot stake 0'
                    if boosterAddress != msg.sender:
                        revert with 0, '!authorized'
                    idx = 0
                    while idx < extraRewards.length:
                        mem[0] = 15
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        call address(extraRewards[idx]).0xadc9772e with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_487] == bool(mem[_487])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 17
                        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                            revert with 0, 17
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                            revert with 0, 17
                        mem[0] = arg1
                        rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                        mem[32] = 12
                        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                        if arg2 <= 0:
                            revert with 0, 'RewardPool : Cannot stake 0'
                        if boosterAddress != msg.sender:
                            revert with 0, '!authorized'
                        idx = 0
                        while idx < extraRewards.length:
                            mem[0] = 15
                            mem[mem[64] + 4] = arg1
                            mem[mem[64] + 36] = arg2
                            call address(extraRewards[idx]).0xadc9772e with:
                                 gas gas_remaining wei
                                args address(arg1), arg2
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _490 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_490] == bool(mem[_490])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
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
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _488 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_488] == bool(mem[_488])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
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
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 17
                            if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
                                revert with 0, 17
                            if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
                                revert with 0, 17
                            mem[0] = arg1
                            rewards[address(arg1)] += (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18
                            mem[32] = 12
                            userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
                            if arg2 <= 0:
                                revert with 0, 'RewardPool : Cannot stake 0'
                            if boosterAddress != msg.sender:
                                revert with 0, '!authorized'
                            idx = 0
                            while idx < extraRewards.length:
                                mem[0] = 15
                                mem[mem[64] + 4] = arg1
                                mem[mem[64] + 36] = arg2
                                call address(extraRewards[idx]).0xadc9772e with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _489 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_489] == bool(mem[_489])
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Staked(arg2, arg1);
    return 1
}



}
