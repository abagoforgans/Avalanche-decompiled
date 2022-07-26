contract main {




// =====================  Runtime code  =====================


#
#  - getReward()
#  - recoverERC20(address arg1, uint256 arg2)
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
mapping of address stor14;
mapping of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor16;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= balanceOf[address(arg1)]:
        revert with 0, 'Owner index out of bounds'
    return tokenOfOwnerByIndex[address(arg1)][arg2]
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
        revert with 'NH{q', 17
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

function recoverERC721(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Previous rewards period must be complete before changing the duration for the new period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(rewardsDuration);
}

function rewardPerToken() payable {
    if not totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
            revert with 'NH{q', 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
        revert with 'NH{q', 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply))
}

function updatePeriodFinish(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    periodFinish = arg1
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
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
            revert with 'NH{q', 18
        rewardRate = arg1 / rewardsDuration
    else:
        if periodFinish < block.timestamp:
            revert with 'NH{q', 17
        if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
            revert with 'NH{q', 17
        if arg1 > (-1 * periodFinish * rewardRate) + (block.timestamp * rewardRate) - 1:
            revert with 'NH{q', 17
        if not rewardsDuration:
            revert with 'NH{q', 18
        rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not rewardsDuration:
        revert with 'NH{q', 18
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if block.timestamp > -rewardsDuration - 1:
        revert with 'NH{q', 17
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 'NH{q', 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 'NH{q', 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 'NH{q', 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
            revert with 'NH{q', 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
            revert with 'NH{q', 17
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
            revert with 'NH{q', 17
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 'NH{q', 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 'NH{q', 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 'NH{q', 17
    if not totalSupply:
        revert with 'NH{q', 18
    if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
        revert with 'NH{q', 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(arg1)]:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(arg1)] > -1 / balanceOf[address(arg1)]:
        revert with 'NH{q', 17
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18 > -rewards[address(arg1)] - 1:
        revert with 'NH{q', 17
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function stake(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if totalSupply:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if msg.sender:
        if not totalSupply:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                revert with 'NH{q', 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        else:
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 'NH{q', 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 'NH{q', 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 'NH{q', 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    revert with 'NH{q', 17
                if not totalSupply:
                    revert with 'NH{q', 18
                if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                    revert with 'NH{q', 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 'NH{q', 17
                if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                    revert with 'NH{q', 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    idx = 0
    while idx < arg1.length:
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stakingTokenAddress)
        call stakingTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 'NH{q', 50
        stor14[cd[((32 * idx) + arg1 + 36)]] = msg.sender
        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)]] = cd[((32 * idx) + arg1 + 36)]
        stor16[cd[((32 * idx) + arg1 + 36)]] = balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 13
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if totalSupply > -arg1.length - 1:
        revert with 'NH{q', 17
    totalSupply += arg1.length
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit Staked(Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length]), msg.sender);
    stor0 = 1
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if stor14[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'Permission denied'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1658 = mem[(32 * idx) + 128]
                    mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg1.length) + 101] = this.address
                    mem[floor32(arg1.length) + 133] = msg.sender
                    mem[floor32(arg1.length) + 165] = _1658
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1658
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if balanceOf[address(msg.sender)] < 1:
                        revert with 'NH{q', 17
                    if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                        tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                        stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                    stor16[mem[(32 * idx) + 128]] = 0
                    tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 13
                    if balanceOf[address(msg.sender)] < 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if not totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                        revert with 'NH{q', 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1664 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1664
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1664
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 'NH{q', 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1660 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1660
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1660
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 'NH{q', 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 'NH{q', 17
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1662 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1662
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1662
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                idx = 0
                while idx < arg1.length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if stor14[mem[(32 * idx) + 128]] != msg.sender:
                        revert with 0, 'Permission denied'
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1666 = mem[(32 * idx) + 128]
                    mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[floor32(arg1.length) + 101] = this.address
                    mem[floor32(arg1.length) + 133] = msg.sender
                    mem[floor32(arg1.length) + 165] = _1666
                    require ext_code.size(stakingTokenAddress)
                    call stakingTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1666
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    if balanceOf[address(msg.sender)] < 1:
                        revert with 'NH{q', 17
                    if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                        tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                        stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                    stor16[mem[(32 * idx) + 128]] = 0
                    tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                    mem[0] = msg.sender
                    mem[32] = 13
                    if balanceOf[address(msg.sender)] < 1:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]--
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
            else:
                if not totalSupply:
                    if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                        revert with 'NH{q', 17
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                        revert with 'NH{q', 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1672 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1672
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1672
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if block.timestamp < periodFinish:
                        if block.timestamp < lastUpdateTime:
                            revert with 'NH{q', 17
                        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                            revert with 'NH{q', 17
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1668 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1668
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1668
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if periodFinish < lastUpdateTime:
                            revert with 'NH{q', 17
                        if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                            revert with 'NH{q', 17
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            revert with 'NH{q', 17
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                            revert with 'NH{q', 17
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1670 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1670
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1670
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
    else:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 'NH{q', 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 'NH{q', 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1642 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1642
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1642
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1644 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1644
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1644
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 'NH{q', 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2130 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2130
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2130
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 'NH{q', 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2132 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2132
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2132
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1646 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1646
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1646
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1648 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1648
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1648
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 'NH{q', 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2134 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2134
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2134
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 'NH{q', 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2136 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2136
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2136
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
        else:
            if periodFinish < lastUpdateTime:
                revert with 'NH{q', 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 'NH{q', 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 'NH{q', 17
            if not totalSupply:
                revert with 'NH{q', 18
            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                revert with 'NH{q', 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1650 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1650
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1650
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1652 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1652
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1652
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 'NH{q', 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2138 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2138
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2138
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 'NH{q', 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2140 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2140
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2140
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    idx = 0
                    while idx < arg1.length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if stor14[mem[(32 * idx) + 128]] != msg.sender:
                            revert with 0, 'Permission denied'
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1654 = mem[(32 * idx) + 128]
                        mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                        mem[floor32(arg1.length) + 101] = this.address
                        mem[floor32(arg1.length) + 133] = msg.sender
                        mem[floor32(arg1.length) + 165] = _1654
                        require ext_code.size(stakingTokenAddress)
                        call stakingTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1654
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                            tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                            stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                        stor16[mem[(32 * idx) + 128]] = 0
                        tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                        mem[0] = msg.sender
                        mem[32] = 13
                        if balanceOf[address(msg.sender)] < 1:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)]--
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                else:
                    if not totalSupply:
                        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                            revert with 'NH{q', 17
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                            revert with 'NH{q', 17
                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        idx = 0
                        while idx < arg1.length:
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                revert with 0, 'Permission denied'
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            _1656 = mem[(32 * idx) + 128]
                            mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                            mem[floor32(arg1.length) + 101] = this.address
                            mem[floor32(arg1.length) + 133] = msg.sender
                            mem[floor32(arg1.length) + 165] = _1656
                            require ext_code.size(stakingTokenAddress)
                            call stakingTokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, _1656
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                            stor16[mem[(32 * idx) + 128]] = 0
                            tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                            mem[0] = msg.sender
                            mem[32] = 13
                            if balanceOf[address(msg.sender)] < 1:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)]--
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                    else:
                        if block.timestamp < periodFinish:
                            if block.timestamp < lastUpdateTime:
                                revert with 'NH{q', 17
                            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2142 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2142
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2142
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            if periodFinish < lastUpdateTime:
                                revert with 'NH{q', 17
                            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                                revert with 'NH{q', 17
                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                revert with 'NH{q', 17
                            if not totalSupply:
                                revert with 'NH{q', 18
                            if rewardPerTokenStored > -((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - 1:
                                revert with 'NH{q', 17
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) < userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) - userRewardPerTokenPaid[address(msg.sender)] > -1 / balanceOf[address(msg.sender)]:
                                revert with 'NH{q', 17
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18 > -rewards[address(msg.sender)] - 1:
                                revert with 'NH{q', 17
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            idx = 0
                            while idx < arg1.length:
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if stor14[mem[(32 * idx) + 128]] != msg.sender:
                                    revert with 0, 'Permission denied'
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                _2144 = mem[(32 * idx) + 128]
                                mem[floor32(arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                                mem[floor32(arg1.length) + 101] = this.address
                                mem[floor32(arg1.length) + 133] = msg.sender
                                mem[floor32(arg1.length) + 165] = _2144
                                require ext_code.size(stakingTokenAddress)
                                call stakingTokenAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2144
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx >= mem[96]:
                                    revert with 'NH{q', 50
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                if stor16[mem[(32 * idx) + 128]] != balanceOf[address(msg.sender)] - 1:
                                    tokenOfOwnerByIndex[address(msg.sender)][stor16[mem[(32 * idx) + 128]]] = tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1]
                                    stor16[stor15[address(msg.sender)][stor13[address(msg.sender)] - 1]] = stor16[mem[(32 * idx) + 128]]
                                stor16[mem[(32 * idx) + 128]] = 0
                                tokenOfOwnerByIndex[address(msg.sender)][stor13[address(msg.sender)] - 1] = 0
                                mem[0] = msg.sender
                                mem[32] = 13
                                if balanceOf[address(msg.sender)] < 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)]--
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
    if totalSupply < mem[96]:
        revert with 'NH{q', 17
    totalSupply -= mem[96]
    mem[floor32(arg1.length) + 97] = 32
    mem[floor32(arg1.length) + 129] = mem[96]
    mem[floor32(arg1.length) + 161 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    emit Withdrawn(address arg1, uint256[] arg2):
                   32,
                   mem[floor32(arg1.length) + 129 len (32 * mem[96]) + 32],
                   msg.sender,
    stor0 = 1
}



}
