contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256[] arg1)
#
uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 rewardsDuration;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
address liqPoolManagerAddress;
mapping of uint256 userRewardPerTokenPaid;
mapping of struct rewards;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of address stor14;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1].field_0
}

function totalSupply() payable {
    return totalSupply
}

function rewardsDuration() payable {
    return rewardsDuration
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
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

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
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
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function setLiqPoolManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    94,
                    0x6c50726576696f7573207265776172647320706572696f64206d75737420626520636f6d706c657465206265666f7265206368616e67696e6720746865206c6971506f6f6c4d616e6167657220666f7220746865206e657720706572696f,
                    mem[258 len 2]
    liqPoolManagerAddress = arg1
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if stakingTokenAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6443616e6e6f7420776974686472617720746865207374616b696e6720746f6b65,
                    mem[197 len 31]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
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
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
    periodFinish = arg1
}

function notifyRewardAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if address(owner) != msg.sender:
        if liqPoolManagerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x734c6971706f6c6c204d616e61676572206f72204f776e65722063616e2063616c6c2074686973,
                        mem[203 len 25]
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

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0 == totalSupply:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
            if not balanceOf[address(arg1)]:
                if rewards[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return rewards[address(arg1)].field_0
            if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
        if not balanceOf[address(arg1)]:
            if rewards[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return rewards[address(arg1)].field_0
        if (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < (0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (rewards[address(arg1)].field_0 + ((0 / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
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
    if not balanceOf[address(arg1)]:
        if rewards[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return rewards[address(arg1)].field_0
    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (rewards[address(arg1)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(arg1)]) + (rewardPerTokenStored * balanceOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * balanceOf[address(arg1)]) / 10^18))
}

function stake(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
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
    if msg.sender:
        if 0 == totalSupply:
            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(msg.sender)]:
                if rewards[address(msg.sender)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                        if not balanceOf[address(msg.sender)]:
                            if rewards[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 14
        stor14[cd[((32 * idx) + arg1 + 36)]] = msg.sender
        idx = idx + 1
        continue 
    if arg1.length + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1.length
    if arg1.length + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += arg1.length
    emit Staked(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), msg.sender);
    stor0 = 1
}

function getReward() payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if 0 == totalSupply:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
            if not msg.sender:
                if rewards[msg.sender].field_0:
                    rewards[msg.sender].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(rewardsTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[msg.sender].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
        else:
            lastUpdateTime = periodFinish
            if not msg.sender:
                if rewards[msg.sender].field_0:
                    rewards[msg.sender].field_0 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(rewardsTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                    mem[324 len 0] = 0
                    call rewardsTokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args rewards[msg.sender].field_0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
            else:
                if 0 == totalSupply:
                    if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not balanceOf[address(msg.sender)]:
                        if rewards[address(msg.sender)].field_0 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                            revert with 0, 'SafeMath: addition overflow'
                        rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                    if block.timestamp >= periodFinish:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = block.timestamp
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                if block.timestamp < periodFinish:
                    lastUpdateTime = block.timestamp
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                else:
                    lastUpdateTime = periodFinish
                    if not msg.sender:
                        if rewards[msg.sender].field_0:
                            rewards[msg.sender].field_0 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(rewardsTokenAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                            mem[324 len 0] = 0
                            call rewardsTokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args rewards[msg.sender].field_0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        if 0 == totalSupply:
                            if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not balanceOf[address(msg.sender)]:
                                if rewards[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                    if not balanceOf[address(msg.sender)]:
                                        if rewards[address(msg.sender)].field_0 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                            revert with 0, 'SafeMath: addition overflow'
                                        rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                    if rewards[msg.sender].field_0:
                                        rewards[msg.sender].field_0 = 0
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                        if not ext_code.size(rewardsTokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                        mem[324 len 0] = 0
                                        call rewardsTokenAddress with:
                                           funct uint32(msg.sender)
                                             gas gas_remaining wei
                                            args rewards[msg.sender].field_0, mem[324 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[ceil32(return_data.size) + 371 len 22]
                                        emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                    else:
                        lastUpdateTime = periodFinish
                        if not msg.sender:
                            if rewards[msg.sender].field_0:
                                rewards[msg.sender].field_0 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if not ext_code.size(rewardsTokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                mem[324 len 0] = 0
                                call rewardsTokenAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                        else:
                            if 0 == totalSupply:
                                if userRewardPerTokenPaid[address(msg.sender)] > rewardPerTokenStored:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not balanceOf[address(msg.sender)]:
                                    if rewards[address(msg.sender)].field_0 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if rewards[address(msg.sender)].field_0 + ((rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                        revert with 0, 'SafeMath: addition overflow'
                                    rewards[address(msg.sender)].field_0 += (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                if rewards[msg.sender].field_0:
                                    rewards[msg.sender].field_0 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if not ext_code.size(rewardsTokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                    mem[324 len 0] = 0
                                    call rewardsTokenAddress with:
                                       funct uint32(msg.sender)
                                         gas gas_remaining wei
                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 371 len 22]
                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    mem[324 len 0] = 0
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                            else:
                                                if ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                                if rewards[msg.sender].field_0:
                                                    rewards[msg.sender].field_0 = 0
                                                    if eth.balance(this.address) < 0:
                                                        revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                    if not ext_code.size(rewardsTokenAddress):
                                                        revert with 0, 'Address: call to non-contract'
                                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                    call rewardsTokenAddress with:
                                                       funct uint32(msg.sender)
                                                         gas gas_remaining wei
                                                        args rewards[msg.sender].field_0, mem[324 len 4]
                                                    if not return_data.size:
                                                        if not ext_call.success:
                                                            revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                            mem[ceil32(return_data.size) + 371 len 22]
                                                    emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if totalSupply <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalSupply
                                            if (0 / totalSupply) + rewardPerTokenStored < rewardPerTokenStored:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if userRewardPerTokenPaid[address(msg.sender)] > (0 / totalSupply) + rewardPerTokenStored:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                        if not balanceOf[address(msg.sender)]:
                                            if rewards[address(msg.sender)].field_0 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
                                        else:
                                            if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                revert with 0, 'SafeMath: addition overflow'
                                            rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                            userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                            if rewards[msg.sender].field_0:
                                                rewards[msg.sender].field_0 = 0
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                if not ext_code.size(rewardsTokenAddress):
                                                    revert with 0, 'Address: call to non-contract'
                                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                                mem[324 len 0] = 0
                                                call rewardsTokenAddress with:
                                                   funct uint32(msg.sender)
                                                     gas gas_remaining wei
                                                    args rewards[msg.sender].field_0, mem[324 len 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != (0 / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + ((0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += (0 / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
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
                                            if not balanceOf[address(msg.sender)]:
                                                if rewards[address(msg.sender)].field_0 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply) + rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)]:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                if rewards[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                rewards[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / totalSupply * balanceOf[address(msg.sender)]) + (rewardPerTokenStored * balanceOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * balanceOf[address(msg.sender)]) / 10^18
                                        userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                                        if rewards[msg.sender].field_0:
                                            rewards[msg.sender].field_0 = 0
                                            if eth.balance(this.address) < 0:
                                                revert with 0, 32, 38, 0x2e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                            if not ext_code.size(rewardsTokenAddress):
                                                revert with 0, 'Address: call to non-contract'
                                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_32
                                            mem[324 len 0] = 0
                                            call rewardsTokenAddress with:
                                               funct uint32(msg.sender)
                                                 gas gas_remaining wei
                                                args rewards[msg.sender].field_0, mem[324 len 4]
                                            if not return_data.size:
                                                if not ext_call.success:
                                                    revert with unknown_0xa9059cbb(?????), msg.sender, rewards[msg.sender].field_0
                                                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                            emit RewardPaid(rewards[msg.sender].field_0, msg.sender);
    stor0 = 1
}



}
