contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - getReward()
#  - exit()
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint32 stor51;
address owner;
uint256 stor51;
address rewardsDistributionAddress;
uint256 stor102;
uint8 sub_1265cc97;
uint8 paused; offset 8
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 minimumStakeTime;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalSupply;
mapping of struct balanceOf;
mapping of uint256 stor214;
uint256 minimumStakeAmount;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function sub_1265cc97(?) payable {
    return bool(sub_1265cc97)
}

function totalSupply() payable {
    return totalSupply
}

function minimumStakeTime() payable {
    return minimumStakeTime
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

function minimumStakeAmount() payable {
    return minimumStakeAmount
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return address(owner)
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

function _fallback() payable {
    revert
}

function lastTimeRewardApplicable() payable {
    if block.timestamp < periodFinish:
        return block.timestamp
    return periodFinish
}

function getStakeRewardDistributionTimeLeft() payable {
    if block.timestamp <= periodFinish:
        return (periodFinish - block.timestamp)
    else:
        return 0
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function migrateTo_8cb6e70(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumStakeAmount = arg1
}

function pause() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setRewardsDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardsDistributionAddress = arg1
}

function unpause() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function getStakeUnlockTimeLeft() payable {
    if periodFinish > block.timestamp:
        if minimumStakeTime + stor214[msg.sender] < stor214[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= minimumStakeTime + stor214[msg.sender]:
            return (minimumStakeTime + stor214[msg.sender] - block.timestamp)
        else:
            return 0
    else:
        return 0
}

function getRewardForDuration() payable {
    if not rewardRate:
        return 0
    if rewardsDuration * rewardRate / rewardRate != rewardsDuration:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (rewardsDuration * rewardRate)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function setMinimumStakeTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumStakeTime = arg1
    emit MinimumStakeTimeUpdated(arg1);
}

function setMinimumStakeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumStakeAmount = arg1
    emit MinimumStakeAmountUpdated(arg1);
}

function enableFailsafeMode() payable {
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumStakeAmount = 0
    minimumStakeTime = 0
    periodFinish = 0
    rewardRate = 0
    rewardPerTokenStored = 0
    sub_1265cc97 = 1
    emit FailsafeModeEnabled()
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    88,
                    0xfe50726576696f7573207265776172647320706572696f64206d75737420626520636f6d706c657465206265666f7265206368616e67696e6720746865206475726174696f6e20666f7220746865206e657720706572696f,
                    mem[252 len 8]
    rewardsDuration = arg1
    emit RewardsDurationUpdated(arg1);
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stakingTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6443616e6e6f7420776974686472617720746865207374616b696e6720746f6b65,
                    mem[197 len 31]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor51)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor51):
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
}

function recoverExtraStakingTokensToOwner() payable {
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalSupply > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - totalSupply:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), Mask(224, 32, ext_call.return_data[0] - totalSupply) >> 32
        call stakingTokenAddress with:
           funct uint32(stor51)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - totalSupply) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), ext_call.return_data[0] - totalSupply
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor51):
                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function recoverOwnStake() payable {
    if not sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    72,
                    0x655468697320616374696f6e2063616e206f6e6c7920626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[236 len 24]
    if balanceOf[msg.sender].field_0:
        if balanceOf[msg.sender].field_0 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= balanceOf[msg.sender].field_0
        if balanceOf[msg.sender].field_0 > balanceOf[msg.sender].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[msg.sender].field_0 = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender].field_32
        call stakingTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args balanceOf[msg.sender].field_0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function rewardPerToken() payable {
    if 0 == totalSupply:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / totalSupply) + rewardPerTokenStored)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / totalSupply) + rewardPerTokenStored)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored)
}

function updatePeriodFinish(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_1265cc97:
        if totalSupply != 0:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
    if arg1 <= lastUpdateTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6454696d657374616d70206d757374206265206166746572206c61737455706461746554696d,
                    mem[202 len 26]
    periodFinish = arg1
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if rewardsDistributionAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6543616c6c6572206973206e6f742052657761726473446973747269627574696f6e20636f6e74726163,
                    mem[206 len 22]
    if not sub_1265cc97:
        if totalSupply != 0:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
    if block.timestamp >= periodFinish:
        if rewardsDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rewardsDuration
        rewardRate = arg1 / rewardsDuration
    else:
        if block.timestamp > periodFinish:
            revert with 0, 'SafeMath: subtraction overflow'
        if not periodFinish - block.timestamp:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = arg1 / rewardsDuration
        else:
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) / periodFinish - block.timestamp != rewardRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if rewardsDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require rewardsDuration
            rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) + arg1 / rewardsDuration
    require ext_code.size(rewardsTokenAddress)
    staticcall rewardsTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardsDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardsDuration
    if rewardRate > ext_call.return_data[0] / rewardsDuration:
        revert with 0, 'Provided reward too high'
    lastUpdateTime = block.timestamp
    if rewardsDuration + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    periodFinish = rewardsDuration + block.timestamp
    emit RewardAdded(arg1);
}

function initialize(address arg1, address arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        address(owner) = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        sub_1265cc97 = 0
        stor102 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            address(owner) = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            sub_1265cc97 = 0
            stor102 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                address(owner) = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                sub_1265cc97 = 0
                stor102 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    address(owner) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    sub_1265cc97 = 0
                    stor102 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        address(owner) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        sub_1265cc97 = 0
                        stor102 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        address(owner) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            sub_1265cc97 = 0
                            stor102 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            paused = 0
                            uint8(stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                sub_1265cc97 = 0
                                stor102 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                sub_1265cc97 = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    stor102 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    stor102 = 1
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if not uint8(stor0.field_8):
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
    if address(owner) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
    rewardsTokenAddress = arg3
    stakingTokenAddress = arg4
    rewardsDistributionAddress = arg2
    minimumStakeTime = arg5
    periodFinish = 0
    rewardRate = 0
    rewardsDuration = 4320 * 24 * 3600
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - lastUpdateTime:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)].field_0:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                revert with 0, 'SafeMath: addition overflow'
            if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(arg1)].field_0:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)]
            if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
    if lastUpdateTime > periodFinish:
        revert with 0, 'SafeMath: subtraction overflow'
    if not periodFinish - lastUpdateTime:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
            revert with 0, 'SafeMath: addition overflow'
        if userRewardPerTokenPaid[address(arg1)] > (0 / totalSupply) + rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)].field_0:
            if rewards[address(arg1)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)]
        if (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)] + ((0 / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
        revert with 0, 'SafeMath: addition overflow'
    if userRewardPerTokenPaid[address(arg1)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)].field_0:
        if rewards[address(arg1)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)]
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / balanceOf[address(arg1)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)].field_0) + (rewardPerTokenStored * balanceOf[address(arg1)].field_0) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)].field_0) / 10^18))
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_1265cc97:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0x645468697320616374696f6e2063616e6e6f7420626520706572666f726d6564207768696c652074686520636f6e747261637420697320696e204661696c73616665204d6f64,
                    mem[234 len 26]
    if stor102 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor102 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_1265cc97:
        if arg1 < minimumStakeAmount:
            revert with 0, 'Minimum stake amount required'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0 += arg1
        stor214[address(msg.sender)] = block.timestamp
        emit Staked(arg1, msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stakingTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
    else:
        if 0 == totalSupply:
            if block.timestamp < periodFinish:
                lastUpdateTime = block.timestamp
                if not msg.sender:
                    if arg1 < minimumStakeAmount:
                        revert with 0, 'Minimum stake amount required'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)].field_0 += arg1
                    stor214[address(msg.sender)] = block.timestamp
                    emit Staked(arg1, msg.sender);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                else:
                    if 0 == totalSupply:
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 < minimumStakeAmount:
                            revert with 0, 'Minimum stake amount required'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)].field_0 += arg1
                        stor214[address(msg.sender)] = block.timestamp
                        emit Staked(arg1, msg.sender);
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        if block.timestamp < periodFinish:
                            if lastUpdateTime > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - lastUpdateTime:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                            else:
                                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                else:
                                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                        else:
                            if lastUpdateTime > periodFinish:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not periodFinish - lastUpdateTime:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                            else:
                                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                else:
                                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
            else:
                lastUpdateTime = periodFinish
                if not msg.sender:
                    if arg1 < minimumStakeAmount:
                        revert with 0, 'Minimum stake amount required'
                    if arg1 + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1
                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)].field_0 += arg1
                    stor214[address(msg.sender)] = block.timestamp
                    emit Staked(arg1, msg.sender);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                    if not ext_code.size(stakingTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                    mem[416 len 4] = 0
                else:
                    if 0 == totalSupply:
                        if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not balanceOf[address(msg.sender)].field_0:
                            if rewards[address(msg.sender)] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if arg1 < minimumStakeAmount:
                            revert with 0, 'Minimum stake amount required'
                        if arg1 + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += arg1
                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)].field_0 += arg1
                        stor214[address(msg.sender)] = block.timestamp
                        emit Staked(arg1, msg.sender);
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                        if not ext_code.size(stakingTokenAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                        mem[416 len 4] = 0
                    else:
                        if block.timestamp >= periodFinish:
                            if lastUpdateTime > periodFinish:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not periodFinish - lastUpdateTime:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                        else:
                            if lastUpdateTime > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.timestamp - lastUpdateTime:
                                if totalSupply <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalSupply
                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                    revert with 0, 'SafeMath: addition overflow'
                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalSupply
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
        else:
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp >= periodFinish:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 < minimumStakeAmount:
                                revert with 0, 'Minimum stake amount required'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_0 += arg1
                            stor214[address(msg.sender)] = block.timestamp
                            emit Staked(arg1, msg.sender);
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                    else:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 < minimumStakeAmount:
                                revert with 0, 'Minimum stake amount required'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_0 += arg1
                            stor214[address(msg.sender)] = block.timestamp
                            emit Staked(arg1, msg.sender);
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                else:
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                        if block.timestamp < periodFinish:
                            lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                        else:
                            lastUpdateTime = periodFinish
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                        if block.timestamp < periodFinish:
                            lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                        mem[388 len 0] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                        else:
                            lastUpdateTime = periodFinish
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not periodFinish - lastUpdateTime:
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalSupply
                    if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardPerTokenStored += 0 / totalSupply
                    if block.timestamp >= periodFinish:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if arg1 < minimumStakeAmount:
                                revert with 0, 'Minimum stake amount required'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_0 += arg1
                            stor214[address(msg.sender)] = block.timestamp
                            emit Staked(arg1, msg.sender);
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if block.timestamp < periodFinish:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                    else:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if arg1 < minimumStakeAmount:
                                revert with 0, 'Minimum stake amount required'
                            if arg1 + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += arg1
                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(msg.sender)].field_0 += arg1
                            stor214[address(msg.sender)] = block.timestamp
                            emit Staked(arg1, msg.sender);
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                            if not ext_code.size(stakingTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)].field_0:
                                    if rewards[address(msg.sender)] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if block.timestamp >= periodFinish:
                                    if lastUpdateTime > periodFinish:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not periodFinish - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                    else:
                                        if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                else:
                                    if lastUpdateTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - lastUpdateTime:
                                        if totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalSupply
                                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not balanceOf[address(msg.sender)].field_0:
                                            if rewards[address(msg.sender)] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                else:
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += 0 / totalSupply
                        if block.timestamp < periodFinish:
                            lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                        else:
                            lastUpdateTime = periodFinish
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if arg1 < minimumStakeAmount:
                                            revert with 0, 'Minimum stake amount required'
                                        if arg1 + totalSupply < totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        totalSupply += arg1
                                        if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(msg.sender)].field_0 += arg1
                                        stor214[address(msg.sender)] = block.timestamp
                                        emit Staked(arg1, msg.sender);
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                        if not ext_code.size(stakingTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                        mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                    else:
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalSupply
                        if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                            revert with 0, 'SafeMath: addition overflow'
                        rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply
                        if block.timestamp >= periodFinish:
                            lastUpdateTime = periodFinish
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                                mem[388 len 0] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                    mem[388 len 0] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                            mem[388 len 0] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                        else:
                            lastUpdateTime = block.timestamp
                            if not msg.sender:
                                if arg1 < minimumStakeAmount:
                                    revert with 0, 'Minimum stake amount required'
                                if arg1 + totalSupply < totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply += arg1
                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(msg.sender)].field_0 += arg1
                                stor214[address(msg.sender)] = block.timestamp
                                emit Staked(arg1, msg.sender);
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                if not ext_code.size(stakingTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                mem[416 len 4] = 0
                            else:
                                if 0 == totalSupply:
                                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not balanceOf[address(msg.sender)].field_0:
                                        if rewards[address(msg.sender)] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)] + ((rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)] += (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if arg1 < minimumStakeAmount:
                                        revert with 0, 'Minimum stake amount required'
                                    if arg1 + totalSupply < totalSupply:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalSupply += arg1
                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(msg.sender)].field_0 += arg1
                                    stor214[address(msg.sender)] = block.timestamp
                                    emit Staked(arg1, msg.sender);
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                    if not ext_code.size(stakingTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                    mem[416 len 4] = 0
                                else:
                                    if block.timestamp < periodFinish:
                                        if lastUpdateTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if arg1 < minimumStakeAmount:
                                                revert with 0, 'Minimum stake amount required'
                                            if arg1 + totalSupply < totalSupply:
                                                revert with 0, 'SafeMath: addition overflow'
                                            totalSupply += arg1
                                            if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(msg.sender)].field_0 += arg1
                                            stor214[address(msg.sender)] = block.timestamp
                                            emit Staked(arg1, msg.sender);
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                            if not ext_code.size(stakingTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                            mem[416 len 4] = 0
                                        else:
                                            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                    else:
                                        if lastUpdateTime > periodFinish:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not periodFinish - lastUpdateTime:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)].field_0:
                                                if rewards[address(msg.sender)] < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if arg1 < minimumStakeAmount:
                                                    revert with 0, 'Minimum stake amount required'
                                                if arg1 + totalSupply < totalSupply:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                totalSupply += arg1
                                                if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(msg.sender)].field_0 += arg1
                                                stor214[address(msg.sender)] = block.timestamp
                                                emit Staked(arg1, msg.sender);
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                if not ext_code.size(stakingTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                mem[416 len 4] = 0
                                                mem[388 len 0] = 0
                                        else:
                                            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    if (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + ((0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += (0 / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
                                            else:
                                                if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if totalSupply <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalSupply
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if userRewardPerTokenPaid[address(msg.sender)] > ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not balanceOf[address(msg.sender)].field_0:
                                                    if rewards[address(msg.sender)] < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                else:
                                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / balanceOf[address(msg.sender)].field_0 != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    if rewards[address(msg.sender)] + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    rewards[address(msg.sender)] += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)].field_0) + (rewardPerTokenStored * balanceOf[address(msg.sender)].field_0) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)].field_0) / 10^18
                                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                    if arg1 < minimumStakeAmount:
                                                        revert with 0, 'Minimum stake amount required'
                                                    if arg1 + totalSupply < totalSupply:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    totalSupply += arg1
                                                    if arg1 + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(msg.sender)].field_0 += arg1
                                                    stor214[address(msg.sender)] = block.timestamp
                                                    emit Staked(arg1, msg.sender);
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                    if not ext_code.size(stakingTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                    mem[416 len 4] = 0
                                                    mem[388 len 0] = 0
    call stakingTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    stor102 = 1
}



}
