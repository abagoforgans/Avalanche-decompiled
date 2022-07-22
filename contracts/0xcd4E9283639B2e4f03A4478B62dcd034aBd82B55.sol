contract main {




// =====================  Runtime code  =====================


#
#  - unstake(uint256 arg1)
#  - claim()
#  - exit(uint256 arg1)
#  - stake(uint256 arg1)
#
const VERSION = 0x312e312e31000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
uint8 stor151;
address rewardsTokenAddress;
address stakingTokenAddress;
uint256 periodFinish;
uint256 rewardsDuration;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint8 isStakingPaused;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint256 totalStake;
mapping of uint256 stakeOf;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function isStakingPaused() payable {
    return bool(isStakingPaused)
}

function rewardsDuration() payable {
    return rewardsDuration
}

function stakeOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakeOf[address(arg1)]
}

function paused() payable {
    return bool(stor151)
}

function stakingToken() payable {
    return stakingTokenAddress
}

function rewardRate() payable {
    return rewardRate
}

function totalStake() payable {
    return totalStake
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

function pauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStakingPaused = 1
}

function unpauseStaking() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStakingPaused = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor151:
        revert with 0, 'Pausable: paused'
    stor151 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor151:
        revert with 0, 'Pausable: not paused'
    stor151 = 0
    emit Unpaused(msg.sender);
}

function setRewardRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'S-RCNZ-01'
    rewardRate = arg1
    emit RewardRateUpdated(arg1);
}

function setRewardsDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= periodFinish:
        revert with 0, 'S-DMBC-01'
    if block.timestamp > !arg1:
        revert with 0, 17
    periodFinish = block.timestamp + arg1
    emit RewardsDurationUpdated(arg1);
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

function rewardPerToken() payable {
    if 0 == totalStake:
        return rewardPerTokenStored
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
            revert with 0, 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000))
}

function recoverFunds() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isStakingPaused = 1
    mem[100] = this.address
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStake:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStake
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(stakingTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStake, 0
    mem[ceil32(return_data.size) + 328] = 0
    call stakingTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStake, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStake, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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
    emit 0x12a739c9: ext_call.return_data[0], stakingTokenAddress
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 == totalStake:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if stakeOf[address(arg1)] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / stakeOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            revert with 0, 17
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        if stakeOf[address(arg1)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) - userRewardPerTokenPaid[address(arg1)] > -1 / stakeOf[address(arg1)]:
            revert with 0, 17
        if (rewardPerTokenStored * stakeOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * stakeOf[address(arg1)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        revert with 0, 17
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    if stakeOf[address(arg1)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) - userRewardPerTokenPaid[address(arg1)] > -1 / stakeOf[address(arg1)]:
        revert with 0, 17
    if (rewardPerTokenStored * stakeOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * stakeOf[address(arg1)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(arg1)]) - (userRewardPerTokenPaid[address(arg1)] * stakeOf[address(arg1)]) / 10^18) + rewards[address(arg1)])
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        stor151 = 0
        stor101 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            stor151 = 0
            stor101 = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                stor151 = 0
                stor101 = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    stor151 = 0
                    stor101 = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        stor151 = 0
                        stor101 = 1
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            stor151 = 0
                            stor101 = 1
                        else:
                            uint16(stor0.field_0) = 257
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                stor151 = 0
                                stor101 = 1
                            else:
                                uint16(stor0.field_0) = 257
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    stor151 = 0
                                    stor101 = 1
                                else:
                                    uint16(stor0.field_0) = 257
                                    stor151 = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        stor101 = 1
                                    else:
                                        uint16(stor0.field_0) = 257
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            stor101 = 1
                                        else:
                                            uint16(stor0.field_0) = 257
                                            stor101 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
    stakingTokenAddress = arg1
    rewardsTokenAddress = arg2
    rewardsDuration = arg4
    rewardRate = arg3
    if block.timestamp > !arg4:
        revert with 0, 17
    periodFinish = block.timestamp + arg4
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function restake() payable {
    if stor151:
        revert with 0, 'Pausable: paused'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if totalStake != 0:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if 0 == totalStake:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
            revert with 0, 17
        if stakeOf[address(msg.sender)] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / stakeOf[address(msg.sender)]:
            revert with 0, 17
        if (rewardPerTokenStored * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
            revert with 0, 17
        rewards[address(msg.sender)] += (rewardPerTokenStored * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18
    else:
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
                revert with 0, 17
            if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if stakeOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / stakeOf[address(msg.sender)]:
                revert with 0, 17
            if (rewardPerTokenStored * stakeOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * stakeOf[address(msg.sender)]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) and 10^18 > -1 / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                revert with 0, 17
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000):
                revert with 0, 17
            if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) < userRewardPerTokenPaid[address(msg.sender)]:
                revert with 0, 17
            if stakeOf[address(msg.sender)] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000) - userRewardPerTokenPaid[address(msg.sender)] > -1 / stakeOf[address(msg.sender)]:
                revert with 0, 17
            if (rewardPerTokenStored * stakeOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18 > !rewards[address(msg.sender)]:
                revert with 0, 17
            rewards[address(msg.sender)] += (rewardPerTokenStored * stakeOf[address(msg.sender)]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / 8760 * 24 * 3600 / 10000 * stakeOf[address(msg.sender)]) - (userRewardPerTokenPaid[address(msg.sender)] * stakeOf[address(msg.sender)]) / 10^18
    userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
    if isStakingPaused:
        revert with 0, 'S-SHBP-02'
    if rewards[msg.sender]:
        rewards[msg.sender] = 0
        emit Restaked(rewards[msg.sender], msg.sender);
        if totalStake > !rewards[msg.sender]:
            revert with 0, 17
        totalStake += rewards[msg.sender]
        if stakeOf[msg.sender] > !rewards[msg.sender]:
            revert with 0, 17
        stakeOf[msg.sender] += rewards[msg.sender]
    stor101 = 1
}



}
