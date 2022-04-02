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
const stakingToken = 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36

const priceCalculator = 0x429ef7ec284792e33f1bd621d3f992b81aa56c08

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
    require rewardRate
    if rewardRate * rewardsDuration / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return (rewardRate * rewardsDuration)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 != bool(paused):
        paused = uint8(arg1)
        if paused:
            lastPauseTime = block.timestamp
        emit PauseChanged(bool(paused));
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if periodFinish:
        if block.timestamp <= periodFinish:
            revert with 0, 'period'
    rewardsDuration = arg1
    emit RewardsDurationUpdated(rewardsDuration);
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
    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
            gas gas_remaining wei
           args 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36, balance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[ceil32(return_data.size) + 132] = 0xa52abe4676dbfd04df42ef7755f01a3c41f28d27
    mem[ceil32(return_data.size) + 164] = -1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0xa52abe4676dbfd04df42ef7755f01a3c
    mem[ceil32(return_data.size) + 128 len 4] = approve(address rg1, uint256 rg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, 0xa52abe4676dbfd04df42ef7755f01a3c == bool(0, 0xa52abe4676dbfd04df42ef7755f01a3c)
            if not 0, 0xa52abe4676dbfd04df42ef7755f01a3c:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function rewardPerToken() payable {
    if not balance:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require balance
            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / balance))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require balance
            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return (rewardPerTokenStored + (0 / balance))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / balance))
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (rewardPerTokenStored + (0 / balance))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if balance <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require balance
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance))
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PausableUpgradeable: caller is not the rewardsDistribution'
    if balance:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if rewardsDuration <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require rewardsDuration
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require rewardsDuration
            rewardRate = arg1 / rewardsDuration
        else:
            require periodFinish - block.timestamp
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require rewardsDuration
            rewardRate = arg1 + (periodFinish * rewardRate) - (block.timestamp * rewardRate) / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if rewardsDuration <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require rewardsDuration
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'reward'
    lastUpdateTime = block.timestamp
    if block.timestamp + rewardsDuration < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = block.timestamp + rewardsDuration
    emit RewardAdded(arg1);
}

function apy() payable {
    if not balance:
        if not rewardRate:
            require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
            staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                    gas gas_remaining wei
                   args 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
            staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if ext_call.return_data[0]:
                return 0, 0, 0 / ext_call.return_data[0]
        else:
            if rewardRate:
                if 10^18 * rewardRate / rewardRate != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                        gas gas_remaining wei
                       args 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                        gas gas_remaining wei
                       args rewardsTokenAddress, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if not 10^18 * rewardRate / 10^18:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ext_call.return_data[0]:
                        return 0, 0, 0 / ext_call.return_data[0]
                else:
                    if 10^18 * rewardRate / 10^18:
                        if 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 / 10^18 * rewardRate / 10^18 != 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ext_call.return_data[0]:
                                return 0, 0, 0 / ext_call.return_data[0]
                        else:
                            if 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18:
                                if 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 * ext_call.return_data[0] / 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if ext_call.return_data[0]:
                                    return 0, 0, 8760 * 24 * 3600 * 10^18 * rewardRate / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    else:
        if not rewardRate:
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if balance:
                require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                        gas gas_remaining wei
                       args 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                        gas gas_remaining wei
                       args rewardsTokenAddress, 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if not 0 / balance:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if ext_call.return_data[0]:
                        return 0, 0, 0 / ext_call.return_data[0]
                else:
                    if 0 / balance:
                        if 8760 * 24 * 3600 * 0 / balance / 0 / balance != 8760 * 24 * 3600:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 8760 * 24 * 3600 * 0 / balance:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            if ext_call.return_data[0]:
                                return 0, 0, 0 / ext_call.return_data[0]
                        else:
                            if 8760 * 24 * 3600 * 0 / balance:
                                if 8760 * 24 * 3600 * 0 / balance * ext_call.return_data[0] / 8760 * 24 * 3600 * 0 / balance != ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if ext_call.return_data[0]:
                                    return 0, 0, 8760 * 24 * 3600 * 0 / balance * ext_call.return_data[0] / ext_call.return_data[0]
        else:
            if rewardRate:
                if 10^18 * rewardRate / rewardRate != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if balance:
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36, 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if not 10^18 * rewardRate / balance:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        if ext_call.return_data[0]:
                            return 0, 0, 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * rewardRate / balance:
                            if 8760 * 24 * 3600 * 10^18 * rewardRate / balance / 10^18 * rewardRate / balance != 8760 * 24 * 3600:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not 8760 * 24 * 3600 * 10^18 * rewardRate / balance:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero', 0
                                if ext_call.return_data[0]:
                                    return 0, 0, 0 / ext_call.return_data[0]
                            else:
                                if 8760 * 24 * 3600 * 10^18 * rewardRate / balance:
                                    if 8760 * 24 * 3600 * 10^18 * rewardRate / balance * ext_call.return_data[0] / 8760 * 24 * 3600 * 10^18 * rewardRate / balance != ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero', 0
                                    if ext_call.return_data[0]:
                                        return 0, 0, 8760 * 24 * 3600 * 10^18 * rewardRate / balance * ext_call.return_data[0] / ext_call.return_data[0]
    revert
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not block.timestamp - lastUpdateTime:
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require balance
            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if balance <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require balance
            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not periodFinish - lastUpdateTime:
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if balance <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require balance
        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        require balanceOf[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if balance <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require balance
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    require balanceOf[address(arg1)]
    if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function profitOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not balance:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
            staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, rewards[address(arg1)]
        else:
            require balanceOf[address(arg1)]
            if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
            staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                    gas gas_remaining wei
                   args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
    else:
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not block.timestamp - lastUpdateTime:
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    require balanceOf[address(arg1)]
                    if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        require balanceOf[address(arg1)]
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        require balanceOf[address(arg1)]
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(arg1)]:
                    if rewards[address(arg1)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, rewards[address(arg1)]
                else:
                    require balanceOf[address(arg1)]
                    if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                    staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                            gas gas_remaining wei
                           args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / balance):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        require balanceOf[address(arg1)]
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + (0 / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not balanceOf[address(arg1)]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, rewards[address(arg1)]
                    else:
                        require balanceOf[address(arg1)]
                        if (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(0x429ef7ec284792e33f1bd621d3f992b81aa56c08)
                        staticcall 0x429ef7ec284792e33f1bd621d3f992b81aa56c08.0x9268af6a with:
                                gas gas_remaining wei
                               args rewardsTokenAddress, ((rewardPerTokenStored * balanceOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) + rewards[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return 0, 0, ext_call.return_data[0]
}

function depositAll() payable {
    mem[100] = msg.sender
    require ext_code.size(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36)
    staticcall 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if stor152 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor152 = 2
    if paused:
        revert with 0, 'PausableUpgradeable: cannot be performed while the contract is paused'
    if not balance:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount'
            if balance + ext_call.return_data[0] < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0]
            if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
            if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 392] = 0
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 96] = 30
            mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
            if not balance:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(msg.sender)]:
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if balance + ext_call.return_data[0] < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
                if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 520] = 0
                call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
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
                        if balance <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require balance
                        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 224] = 30
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not periodFinish - lastUpdateTime:
                        mem[ceil32(return_data.size) + 160] = 26
                        mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if balance <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require balance
                        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 224] = 30
                        mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 160] = 26
                            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 224] = 30
                            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 288] = 26
                                mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if balance + ext_call.return_data[0] < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
                if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 548 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 648] = 0
                call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
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
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not periodFinish - lastUpdateTime:
                mem[ceil32(return_data.size) + 160] = 26
                mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                if balance <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require balance
                if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                    revert with 0, 'SafeMath: addition overflow'
                rewardPerTokenStored += 0 / balance
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / balance
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 160] = 26
                    mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if balance <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require balance
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'amount'
            if balance + ext_call.return_data[0] < balance:
                revert with 0, 'SafeMath: addition overflow'
            balance += ext_call.return_data[0]
            if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
            if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 420 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
            mem[ceil32(return_data.size) + 520] = 0
            call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                    if not uint32(msg.sender), mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 452] == bool(mem[ceil32(return_data.size) + 452])
                    if not mem[ceil32(return_data.size) + 452]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 224] = 30
            mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
            if not balance:
                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not balanceOf[address(msg.sender)]:
                    mem[ceil32(return_data.size) + 288] = 26
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if rewards[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[ceil32(return_data.size) + 288] = 26
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                    if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if balance + ext_call.return_data[0] < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
                if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 548 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 648] = 0
                call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 580 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
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
                        if balance <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require balance
                        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 352] = 30
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require block.timestamp - lastUpdateTime
                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                else:
                    if lastUpdateTime > periodFinish:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not periodFinish - lastUpdateTime:
                        mem[ceil32(return_data.size) + 288] = 26
                        mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                        if balance <= 0:
                            revert with 0, 'SafeMath: division by zero', 0
                        require balance
                        if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 352] = 30
                        mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if not balanceOf[address(msg.sender)]:
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            require balanceOf[address(msg.sender)]
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 416] = 26
                            mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                            if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                    else:
                        require periodFinish - lastUpdateTime
                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + (0 / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + (0 / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + (0 / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + (0 / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        else:
                            require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            mem[ceil32(return_data.size) + 288] = 26
                            mem[ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
                            if balance <= 0:
                                revert with 0, 'SafeMath: division by zero', 0
                            require balance
                            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) < rewardPerTokenStored:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[ceil32(return_data.size) + 352] = 30
                            mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if not balanceOf[address(msg.sender)]:
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if rewards[address(msg.sender)] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                require balanceOf[address(msg.sender)]
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance) - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                mem[ceil32(return_data.size) + 416] = 26
                                mem[ceil32(return_data.size) + 448] = 'SafeMath: division by zero'
                                if ((rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) + rewards[address(msg.sender)] < (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / balance * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'amount'
                if balance + ext_call.return_data[0] < balance:
                    revert with 0, 'SafeMath: addition overflow'
                balance += ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + ext_call.return_data[0] < balanceOf[address(msg.sender)]:
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
                if ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 676 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0
                mem[ceil32(return_data.size) + 776] = 0
                call 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0], 0) << 544)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                        if not uint32(msg.sender), mem[132 len 28]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 708 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 708] == bool(mem[ceil32(return_data.size) + 708])
                        if not mem[ceil32(return_data.size) + 708]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Staked(ext_call.return_data[0], msg.sender);
    stor152 = 1
}



}
