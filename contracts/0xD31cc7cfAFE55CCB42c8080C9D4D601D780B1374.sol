contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - initialize()
#  - withdrawAll()
#  - recoverERC20(address arg1, uint256 arg2)
#  - deposit(uint256 arg1)
#
const stakingToken = 0x964ddc3f274e425c6f257c046161f956d8fa2652

const priceCalculator = 0xaad0328d77ea428d7290300f3ba234a6869e2bdf

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address owner;
address rewardsDistributionAddress;
uint256 stor152;
uint256 lastPauseTime;
uint8 paused;
address rewardsTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 balance;
mapping of uint256 balanceOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function totalSupply() payable {
    return balance
}

function rewardsDuration() payable {
    return rewardsDuration
}

function withdrawableBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
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
    return balanceOf[address(arg1)]
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

function owner() payable {
    return owner
}

function lastPauseTime() payable {
    return lastPauseTime
}

function balance() payable {
    return balance
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

function harvest() payable {
  stop
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

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardsDuration * rewardRate)
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0, 'period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
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

function tvl() payable {
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function setRewardsToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if rewardsTokenAddress:
        revert with 0, 'set rewards token already'
    rewardsTokenAddress = arg1
    mem[100] = this.address
    mem[132] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0xa52abe4676dbfd04df42ef7755f01a3c
    mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address rg1, uint256 rg2), 0xa52abe4676dbfd04df42ef77, 0, -1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address rg1, uint256 rg2), 0xa52abe4676dbfd04df42ef77, 0, -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address rg1, uint256 rg2), 0xa52abe4676dbfd04df42ef77, 0, -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, 0xa52abe4676dbfd04df42ef7755f01a3c == bool(0, 0xa52abe4676dbfd04df42ef7755f01a3c)
            if not 0, 0xa52abe4676dbfd04df42ef7755f01a3c:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardsDuration:
        revert with 0, 'SafeMath: division by zero', 0
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'reward'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function apy() payable {
    if not balance:
        if not rewardRate:
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0, 0 / ext_call.return_data[0]
        if 10^18 * rewardRate / rewardRate != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args rewardsTokenAddress, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 10^18 * rewardRate / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0, 0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 / 10^18 * rewardRate / 10^18 != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0, 0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / 10^18 / 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 0, 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / 10^18 / ext_call.return_data[0]
    if not rewardRate:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args rewardsTokenAddress, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / balance:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0, 0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * 0 / balance / 0 / balance != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * 0 / balance:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return 0, 0, 0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / balance / 8760 * 24 * 3600 * 0 / balance != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 0, 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / balance / ext_call.return_data[0]
    if 10^18 * rewardRate / rewardRate != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args rewardsTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not 10^18 * rewardRate / balance:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 0, 0 / ext_call.return_data[0]
    if 8760 * 24 * 3600 * 10^18 * rewardRate / balance / 10^18 * rewardRate / balance != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * 10^18 * rewardRate / balance:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return 0, 0, 0 / ext_call.return_data[0]
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / balance / 8760 * 24 * 3600 * 10^18 * rewardRate / balance != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return 0, 0, 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / balance / ext_call.return_data[0]
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not balance:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function profitOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, rewards[address(arg1)]
        else:
            if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
    else:
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
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 0, 0, ext_call.return_data[0]
}

function info(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, rewards[address(arg1)]
        else:
            if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
    else:
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
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > (0 / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + ((0 / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
                        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not balance:
        if not rewardRate:
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
            staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return balanceOf[address(arg1)], 
                   balanceOf[address(arg1)],
                   balanceOf[address(arg1)],
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   0,
                   0 / ext_call.return_data[0]
        if 10^18 * rewardRate / rewardRate != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args rewardsTokenAddress, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 10^18 * rewardRate / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return balanceOf[address(arg1)], 
                   balanceOf[address(arg1)],
                   balanceOf[address(arg1)],
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   0,
                   0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 / 10^18 * rewardRate / 10^18 != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return balanceOf[address(arg1)], 
                   balanceOf[address(arg1)],
                   balanceOf[address(arg1)],
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   0,
                   0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / 10^18 / 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return balanceOf[address(arg1)], 
               balanceOf[address(arg1)],
               balanceOf[address(arg1)],
               0,
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               0,
               0,
               8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / 10^18 / ext_call.return_data[0]
    if not rewardRate:
        if not balance:
            revert with 0, 'SafeMath: division by zero', 0
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
        staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args rewardsTokenAddress, 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if not 0 / balance:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return balanceOf[address(arg1)], 
                   balanceOf[address(arg1)],
                   balanceOf[address(arg1)],
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   0,
                   0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * 0 / balance / 0 / balance != 8760 * 24 * 3600:
            revert with 0, 'SafeMath: multiplication overflow'
        if not 8760 * 24 * 3600 * 0 / balance:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            return balanceOf[address(arg1)], 
                   balanceOf[address(arg1)],
                   balanceOf[address(arg1)],
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   0,
                   0,
                   0 / ext_call.return_data[0]
        if 8760 * 24 * 3600 * ext_call.return_data[0] * 0 / balance / 8760 * 24 * 3600 * 0 / balance != ext_call.return_data[0]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return balanceOf[address(arg1)], 
               balanceOf[address(arg1)],
               balanceOf[address(arg1)],
               0,
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               0,
               0,
               8760 * 24 * 3600 * ext_call.return_data[0] * 0 / balance / ext_call.return_data[0]
    if 10^18 * rewardRate / rewardRate != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not balance:
        revert with 0, 'SafeMath: division by zero', 0
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args 0x964ddc3f274e425c6f257c046161f956d8fa2652, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xaad0328d77ea428d7290300f3ba234a6869e2bdf)
    staticcall 0xaad0328d77ea428d7290300f3ba234a6869e2bdf.valueOfAsset(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args rewardsTokenAddress, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not 10^18 * rewardRate / balance:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return balanceOf[address(arg1)], 
               balanceOf[address(arg1)],
               balanceOf[address(arg1)],
               0,
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               0,
               0,
               0 / ext_call.return_data[0]
    if 8760 * 24 * 3600 * 10^18 * rewardRate / balance / 10^18 * rewardRate / balance != 8760 * 24 * 3600:
        revert with 0, 'SafeMath: multiplication overflow'
    if not 8760 * 24 * 3600 * 10^18 * rewardRate / balance:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        return balanceOf[address(arg1)], 
               balanceOf[address(arg1)],
               balanceOf[address(arg1)],
               0,
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               0,
               0,
               0 / ext_call.return_data[0]
    if 8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / balance / 8760 * 24 * 3600 * 10^18 * rewardRate / balance != ext_call.return_data[0]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    return balanceOf[address(arg1)], 
           balanceOf[address(arg1)],
           balanceOf[address(arg1)],
           0,
           0,
           ext_call.return_data[0],
           ext_call.return_data[0],
           0,
           0,
           8760 * 24 * 3600 * ext_call.return_data[0] * 10^18 * rewardRate / balance / ext_call.return_data[0]
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(0x964ddc3f274e425c6f257c046161f956d8fa2652)
    staticcall 0x964ddc3f274e425c6f257c046161f956d8fa2652.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    if paused:
        revert with 0, 'PausableUpgradeable: cannot be performed while the contract is paused'
    if 0 == balance:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount'
            if ext_call.return_data[0] + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0]
            if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += ext_call.return_data[0]
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 392] = 0
            call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 96] = 30
            mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
            if 0 == balance:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(msg.sender)]:
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if ext_call.return_data[0] + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260] = msg.sender
                mem[ceil32(return_data.size) + 292] = this.address
                mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 224] = 100
                mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 256 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 356] = 32
                mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                        if not mem[ceil32(return_data.size) + 452]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if block.timestamp < periodFinish:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not block.timestamp - lastUpdateTime:
                        mem[ceil32(return_data.size) + 160] = 26
                        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not balance:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 224] = 30
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not periodFinish - lastUpdateTime:
                        mem[ceil32(return_data.size) + 160] = 26
                        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not balance:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 224] = 30
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if ext_call.return_data[0] + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 388] = msg.sender
                mem[ceil32(return_data.size) + 420] = this.address
                mem[ceil32(return_data.size) + 452] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 352] = 100
                mem[ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 384 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 484] = 32
                mem[ceil32(return_data.size) + 516] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 548 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 648] = 0
                call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 580] == bool(mem[ceil32(return_data.size) + 580])
                        if not mem[ceil32(return_data.size) + 580]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 96] = 30
        mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if not balance:
                    revert with 0, 'SafeMath: division by zero', 0
                if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not balance:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount'
            if ext_call.return_data[0] + balance < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0]
            if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += ext_call.return_data[0]
            mem[ceil32(return_data.size) + 260] = msg.sender
            mem[ceil32(return_data.size) + 292] = this.address
            mem[ceil32(return_data.size) + 324] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 224] = 100
            mem[ceil32(return_data.size) + 260 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 256 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 356] = 32
            mem[ceil32(return_data.size) + 388] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 520] = 0
            call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                    if not mem[ceil32(return_data.size) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 224] = 30
            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
            if 0 == balance:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(msg.sender)]:
                    mem[ceil32(return_data.size) + 288] = 26
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 288] = 26
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if ext_call.return_data[0] + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 388] = msg.sender
                mem[ceil32(return_data.size) + 420] = this.address
                mem[ceil32(return_data.size) + 452] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 352] = 100
                mem[ceil32(return_data.size) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 384 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 484] = 32
                mem[ceil32(return_data.size) + 516] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 548 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 648] = 0
                call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 580] == bool(mem[ceil32(return_data.size) + 580])
                        if not mem[ceil32(return_data.size) + 580]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if block.timestamp < periodFinish:
                    if lastUpdateTime > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not block.timestamp - lastUpdateTime:
                        mem[ceil32(return_data.size) + 288] = 26
                        mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if not balance:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 352] = 30
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not periodFinish - lastUpdateTime:
                        mem[ceil32(return_data.size) + 288] = 26
                        mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if not balance:
                            revert with 0, 'SafeMath: division by zero', 0
                        if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 352] = 30
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if (0 / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + ((0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (0 / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if not balance:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if ext_call.return_data[0] + balance < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if ext_call.return_data[0] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += ext_call.return_data[0]
                mem[ceil32(return_data.size) + 516] = msg.sender
                mem[ceil32(return_data.size) + 548] = this.address
                mem[ceil32(return_data.size) + 580] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 480] = 100
                mem[ceil32(return_data.size) + 516 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 512 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 612] = 32
                mem[ceil32(return_data.size) + 644] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x964ddc3f274e425c6f257c046161f956d8fa2652):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 776] = 0
                call 0x964ddc3f274e425c6f257c046161f956d8fa2652 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 708] == bool(mem[ceil32(return_data.size) + 708])
                        if not mem[ceil32(return_data.size) + 708]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Staked(ext_call.return_data[0], msg.sender);
    stor152 = 1
}



}
