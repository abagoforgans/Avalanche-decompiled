contract main {




// =====================  Runtime code  =====================


#
#  - queueNewRewards(uint256 arg1)
#  - getReward(address arg1)
#  - donate(uint256 arg1)
#
const sub_4cfe2f4a(?) = 830


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner; offset 16
address rewardTokenAddress;
uint256 duration;
address depositsAddress;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
uint256 queuedRewards;
uint256 currentRewards;
uint256 historicalRewards;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewards[arg1]
}

function duration() payable {
    return duration
}

function historicalRewards() payable {
    return historicalRewards
}

function deposits() payable {
    return depositsAddress
}

function queuedRewards() payable {
    return queuedRewards
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

function currentRewards() payable {
    return currentRewards
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function rewardPerTokenStored() payable {
    return rewardPerTokenStored
}

function periodFinish() payable {
    return periodFinish
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function totalSupply() payable {
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall depositsAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
    if depositsAddress:
        revert with 0, 1
    depositsAddress = arg1
    rewardTokenAddress = arg2
    duration = 48 * 24 * 3600
    owner = arg3
    emit OwnershipTransferred(owner, arg3);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function rewardPerToken() payable {
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return rewardPerTokenStored
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
            revert with 0, 17
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]))
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
        revert with 0, 17
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]))
}

function setDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if block.timestamp < periodFinish:
        if periodFinish < block.timestamp:
            revert with 0, 17
        if periodFinish - block.timestamp and rewardRate > -1 / periodFinish - block.timestamp:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        rewardRate = (periodFinish * rewardRate) - (block.timestamp * rewardRate) / arg1
        if block.timestamp > !arg1:
            revert with 0, 17
        periodFinish = block.timestamp + arg1
    duration = arg1
    emit DurationUpdate(arg1, rewardRate);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        staticcall depositsAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < periodFinish:
        if block.timestamp < lastUpdateTime:
            revert with 0, 17
        if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
            revert with 0, 17
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
            revert with 0, 17
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 17
        staticcall depositsAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
            revert with 0, 17
        return (((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    if periodFinish < lastUpdateTime:
        revert with 0, 17
    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
        revert with 0, 17
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
        revert with 0, 17
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 17
    staticcall depositsAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
        revert with 0, 17
    return (((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
}

function stake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if arg1:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 17
            staticcall depositsAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                revert with 0, 17
            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        else:
            staticcall depositsAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
                    revert with 0, 17
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                    revert with 0, 17
                rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
                    revert with 0, 17
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                    revert with 0, 17
                rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
    if depositsAddress != msg.sender:
        revert with 0, '!authorized'
    emit Staked(arg2, arg1);
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if arg1:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewardPerTokenStored < userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 17
            staticcall depositsAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                revert with 0, 17
            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        else:
            staticcall depositsAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < periodFinish:
                if block.timestamp < lastUpdateTime:
                    revert with 0, 17
                if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                    revert with 0, 17
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
                    revert with 0, 17
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                    revert with 0, 17
                rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
            else:
                if periodFinish < lastUpdateTime:
                    revert with 0, 17
                if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                    revert with 0, 17
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                    revert with 0, 17
                if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(arg1)]:
                    revert with 0, 17
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18 > !rewards[address(arg1)]:
                    revert with 0, 17
                rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
    if depositsAddress != msg.sender:
        revert with 0, '!authorized'
    emit Withdrawn(arg2, arg1);
    return 1
}

function getReward() payable {
    staticcall depositsAddress.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if rewards[address(msg.sender)]:
                rewards[address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = rewards[address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                mem[ceil32(return_data.size) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
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
                emit RewardPaid(rewards[address(msg.sender)], msg.sender);
        else:
            staticcall depositsAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)]:
                    rewards[address(msg.sender)] = 0
                    mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(4 * ceil32(return_data.size)) + 164] = rewards[address(msg.sender)]
                    mem[(4 * ceil32(return_data.size)) + 96] = 68
                    mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(4 * ceil32(return_data.size)) + 196] = 32
                    mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                    mem[(4 * ceil32(return_data.size)) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                            if not mem[(4 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit RewardPaid(rewards[address(msg.sender)], msg.sender);
            else:
                staticcall depositsAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < periodFinish:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                        revert with 0, 17
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                        revert with 0, 17
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    staticcall depositsAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                else:
                    if periodFinish < lastUpdateTime:
                        revert with 0, 17
                    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                        revert with 0, 17
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                        revert with 0, 17
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                    staticcall depositsAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)]:
                    rewards[address(msg.sender)] = 0
                    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 164] = rewards[address(msg.sender)]
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit RewardPaid(rewards[address(msg.sender)], msg.sender);
    else:
        staticcall depositsAddress.0x18160ddd with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if block.timestamp < lastUpdateTime:
                revert with 0, 17
            if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                revert with 0, 17
            if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if periodFinish < lastUpdateTime:
                revert with 0, 17
            if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                revert with 0, 17
            if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                revert with 0, 17
            rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        if block.timestamp < periodFinish:
            lastUpdateTime = block.timestamp
        else:
            lastUpdateTime = periodFinish
        if not msg.sender:
            if rewards[address(msg.sender)]:
                rewards[address(msg.sender)] = 0
                mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 164] = rewards[address(msg.sender)]
                mem[(2 * ceil32(return_data.size)) + 96] = 68
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(2 * ceil32(return_data.size)) + 196] = 32
                mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(rewardTokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                mem[(2 * ceil32(return_data.size)) + 328] = 0
                call rewardTokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0]:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                        if not mem[(2 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit RewardPaid(rewards[address(msg.sender)], msg.sender);
        else:
            staticcall depositsAddress.0x18160ddd with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if rewardPerTokenStored < userRewardPerTokenPaid[address(msg.sender)]:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
                staticcall depositsAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and rewardPerTokenStored - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                    revert with 0, 17
                rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)]:
                    rewards[address(msg.sender)] = 0
                    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(6 * ceil32(return_data.size)) + 164] = rewards[address(msg.sender)]
                    mem[(6 * ceil32(return_data.size)) + 96] = 68
                    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(6 * ceil32(return_data.size)) + 196] = 32
                    mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                    mem[(6 * ceil32(return_data.size)) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                            if not mem[(6 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit RewardPaid(rewards[address(msg.sender)], msg.sender);
            else:
                staticcall depositsAddress.0x18160ddd with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if block.timestamp < periodFinish:
                    if block.timestamp < lastUpdateTime:
                        revert with 0, 17
                    if block.timestamp - lastUpdateTime and rewardRate > -1 / block.timestamp - lastUpdateTime:
                        revert with 0, 17
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if rewardPerTokenStored > !((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                        revert with 0, 17
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    staticcall depositsAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                else:
                    if periodFinish < lastUpdateTime:
                        revert with 0, 17
                    if periodFinish - lastUpdateTime and rewardRate > -1 / periodFinish - lastUpdateTime:
                        revert with 0, 17
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if rewardPerTokenStored > !((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                        revert with 0, 17
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < userRewardPerTokenPaid[address(msg.sender)]:
                        revert with 0, 17
                    mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                    staticcall depositsAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(msg.sender)] > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18 > !rewards[address(msg.sender)]:
                        revert with 0, 17
                    rewards[address(msg.sender)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                userRewardPerTokenPaid[address(msg.sender)] = rewardPerTokenStored
                if rewards[address(msg.sender)]:
                    rewards[address(msg.sender)] = 0
                    mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(7 * ceil32(return_data.size)) + 164] = rewards[address(msg.sender)]
                    mem[(7 * ceil32(return_data.size)) + 96] = 68
                    mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[(7 * ceil32(return_data.size)) + 196] = 32
                    mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0
                    mem[(7 * ceil32(return_data.size)) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, rewards[address(msg.sender)], 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                            if not mem[(7 * ceil32(return_data.size)) + 292]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit RewardPaid(rewards[address(msg.sender)], msg.sender);
}



}
