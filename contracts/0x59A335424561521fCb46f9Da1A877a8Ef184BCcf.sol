contract main {




// =====================  Runtime code  =====================


#
#  - getReward(address arg1)
#
address owner;
address sub_de6c20fdAddress;
address sub_b1f2e804Address;
uint256 periodFinish;
uint256 rewardRate;
uint256 lastUpdateTime;
uint256 rewardPerTokenStored;
mapping of uint256 userRewardPerTokenPaid;
mapping of uint256 rewards;
uint8 stor58;

function rewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return rewards[arg1]
}

function rewardRate() payable {
    return rewardRate
}

function userRewardPerTokenPaid(address arg1) payable {
    require calldata.size - 4 >= 32
    return userRewardPerTokenPaid[arg1]
}

function owner() payable {
    return owner
}

function sub_b1f2e804(?) payable {
    return sub_b1f2e804Address
}

function lastUpdateTime() payable {
    return lastUpdateTime
}

function sub_de6c20fd(?) payable {
    return sub_de6c20fdAddress
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor58:
        revert with 0, 'Addresses already set'
    require msg.sender == 0x657f21492e7f6433e87cb9746d2de375ac6aeb3
    stor58 = 1
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_de6c20fdAddress = arg1
    sub_b1f2e804Address = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_4723dbb8(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not rewardRate:
            return 0
        require rewardRate
        if rewardRate * arg2 / rewardRate != arg2:
            revert with 0, 'mul overflow'
        return (rewardRate * arg2)
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    if not rewardRate:
        if not ext_call.return_data[0] + arg1:
            revert with 0, 'div by 0'
        if ext_call.return_data[0] + arg1:
            return (0 / ext_call.return_data[0] + arg1)
    else:
        if rewardRate:
            if rewardRate * arg2 / rewardRate != arg2:
                revert with 0, 'mul overflow'
            if not rewardRate * arg2:
                if not ext_call.return_data[0] + arg1:
                    revert with 0, 'div by 0'
                if ext_call.return_data[0] + arg1:
                    return (0 / ext_call.return_data[0] + arg1)
            else:
                if rewardRate * arg2:
                    if rewardRate * arg2 * arg1 / rewardRate * arg2 != arg1:
                        revert with 0, 'mul overflow'
                    if not ext_call.return_data[0] + arg1:
                        revert with 0, 'div by 0'
                    if ext_call.return_data[0] + arg1:
                        return (rewardRate * arg2 * arg1 / ext_call.return_data[0] + arg1)
    revert
}

function rewardPerToken() payable {
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return rewardPerTokenStored
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'sub overflow'
        if not block.timestamp - lastUpdateTime:
            if not ext_call.return_data[0]:
                revert with 0, 'div by 0'
            require ext_call.return_data[0]
            if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                revert with 0, 'add overflow'
            return (rewardPerTokenStored + (0 / ext_call.return_data[0]))
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'mul overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not ext_call.return_data[0]:
                revert with 0, 'div by 0'
            require ext_call.return_data[0]
            if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                revert with 0, 'add overflow'
            return (rewardPerTokenStored + (0 / ext_call.return_data[0]))
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'mul overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        return (rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]))
    if lastUpdateTime > periodFinish:
        revert with 0, 'sub overflow'
    if not periodFinish - lastUpdateTime:
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        return (rewardPerTokenStored + (0 / ext_call.return_data[0]))
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'mul overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        return (rewardPerTokenStored + (0 / ext_call.return_data[0]))
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'mul overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'div by 0'
    require ext_call.return_data[0]
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
        revert with 0, 'add overflow'
    return (rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]))
}

function notifyRewardAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0x121a5805 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'sub overflow'
            if not block.timestamp - lastUpdateTime:
                if not ext_call.return_data[0]:
                    revert with 0, 'div by 0'
                require ext_call.return_data[0]
                if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                    revert with 0, 'add overflow'
                rewardPerTokenStored += 0 / ext_call.return_data[0]
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += 0 / ext_call.return_data[0]
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'mul overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'sub overflow'
            if not periodFinish - lastUpdateTime:
                if not ext_call.return_data[0]:
                    revert with 0, 'div by 0'
                require ext_call.return_data[0]
                if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                    revert with 0, 'add overflow'
                rewardPerTokenStored += 0 / ext_call.return_data[0]
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += 0 / ext_call.return_data[0]
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'mul overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    require ext_code.size(sub_de6c20fdAddress)
    staticcall sub_de6c20fdAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient YETI in contract'
    if not arg2:
        revert with 0, 'div by 0'
    require arg2
    rewardRate = arg1 / arg2
    lastUpdateTime = block.timestamp
    if block.timestamp + arg2 < block.timestamp:
        revert with 0, 'add overflow'
    periodFinish = block.timestamp + arg2
    emit RewardAdded(arg1);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
            revert with 0, 'sub overflow'
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0xafa72b80 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'add overflow'
            return rewards[address(arg1)]
        require ext_call.return_data[0]
        if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'mul overflow'
        if ((rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'add overflow'
        return (((rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp < periodFinish:
        if lastUpdateTime > block.timestamp:
            revert with 0, 'sub overflow'
        if not block.timestamp - lastUpdateTime:
            if not ext_call.return_data[0]:
                revert with 0, 'div by 0'
            require ext_call.return_data[0]
            if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                revert with 0, 'add overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                revert with 0, 'sub overflow'
            require ext_code.size(sub_b1f2e804Address)
            staticcall sub_b1f2e804Address.0xafa72b80 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'add overflow'
                return rewards[address(arg1)]
            require ext_call.return_data[0]
            if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'mul overflow'
            if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'add overflow'
            return (((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
        require block.timestamp - lastUpdateTime
        if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
            revert with 0, 'mul overflow'
        if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
            if not ext_call.return_data[0]:
                revert with 0, 'div by 0'
            require ext_call.return_data[0]
            if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                revert with 0, 'add overflow'
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                revert with 0, 'sub overflow'
            require ext_code.size(sub_b1f2e804Address)
            staticcall sub_b1f2e804Address.0xafa72b80 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'add overflow'
                return rewards[address(arg1)]
            require ext_call.return_data[0]
            if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                revert with 0, 'mul overflow'
            if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'add overflow'
            return (((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
            revert with 0, 'mul overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
            revert with 0, 'sub overflow'
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0xafa72b80 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'add overflow'
            return rewards[address(arg1)]
        require ext_call.return_data[0]
        if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'mul overflow'
        if ((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'add overflow'
        return (((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    if lastUpdateTime > periodFinish:
        revert with 0, 'sub overflow'
    if not periodFinish - lastUpdateTime:
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
            revert with 0, 'sub overflow'
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0xafa72b80 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'add overflow'
            return rewards[address(arg1)]
        require ext_call.return_data[0]
        if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'mul overflow'
        if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'add overflow'
        return (((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    require periodFinish - lastUpdateTime
    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
        revert with 0, 'mul overflow'
    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
        if not ext_call.return_data[0]:
            revert with 0, 'div by 0'
        require ext_call.return_data[0]
        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
            revert with 0, 'add overflow'
        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
            revert with 0, 'sub overflow'
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0xafa72b80 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if rewards[address(arg1)] < 0:
                revert with 0, 'add overflow'
            return rewards[address(arg1)]
        require ext_call.return_data[0]
        if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
            revert with 0, 'mul overflow'
        if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'add overflow'
        return (((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
        revert with 0, 'mul overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'div by 0'
    require ext_call.return_data[0]
    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
        revert with 0, 'add overflow'
    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
        revert with 0, 'sub overflow'
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0xafa72b80 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if rewards[address(arg1)] < 0:
            revert with 0, 'add overflow'
        return rewards[address(arg1)]
    require ext_call.return_data[0]
    if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
        revert with 0, 'mul overflow'
    if ((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'add overflow'
    return (((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)])
}

function sub_f31878ae(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == sub_b1f2e804Address
    require ext_code.size(sub_b1f2e804Address)
    staticcall sub_b1f2e804Address.0x121a5805 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0x121a5805 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp < periodFinish:
            if lastUpdateTime > block.timestamp:
                revert with 0, 'sub overflow'
            if not block.timestamp - lastUpdateTime:
                if not ext_call.return_data[0]:
                    revert with 0, 'div by 0'
                require ext_call.return_data[0]
                if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                    revert with 0, 'add overflow'
                rewardPerTokenStored += 0 / ext_call.return_data[0]
            else:
                require block.timestamp - lastUpdateTime
                if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += 0 / ext_call.return_data[0]
                else:
                    require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'mul overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
        else:
            if lastUpdateTime > periodFinish:
                revert with 0, 'sub overflow'
            if not periodFinish - lastUpdateTime:
                if not ext_call.return_data[0]:
                    revert with 0, 'div by 0'
                require ext_call.return_data[0]
                if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                    revert with 0, 'add overflow'
                rewardPerTokenStored += 0 / ext_call.return_data[0]
            else:
                require periodFinish - lastUpdateTime
                if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                    revert with 0, 'mul overflow'
                if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += 0 / ext_call.return_data[0]
                else:
                    require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                    if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                        revert with 0, 'mul overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    rewardPerTokenStored += (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]
    if block.timestamp < periodFinish:
        lastUpdateTime = block.timestamp
    else:
        lastUpdateTime = periodFinish
    if arg1:
        require ext_code.size(sub_b1f2e804Address)
        staticcall sub_b1f2e804Address.0x121a5805 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored:
                revert with 0, 'sub overflow'
            require ext_code.size(sub_b1f2e804Address)
            staticcall sub_b1f2e804Address.0xafa72b80 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if rewards[address(arg1)] < 0:
                    revert with 0, 'add overflow'
            else:
                require ext_call.return_data[0]
                if (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored - userRewardPerTokenPaid[address(arg1)]:
                    revert with 0, 'mul overflow'
                if ((rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                    revert with 0, 'add overflow'
                rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        else:
            require ext_code.size(sub_b1f2e804Address)
            staticcall sub_b1f2e804Address.0x121a5805 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp < periodFinish:
                if lastUpdateTime > block.timestamp:
                    revert with 0, 'sub overflow'
                if not block.timestamp - lastUpdateTime:
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                        revert with 0, 'sub overflow'
                    require ext_code.size(sub_b1f2e804Address)
                    staticcall sub_b1f2e804Address.0xafa72b80 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'add overflow'
                    else:
                        require ext_call.return_data[0]
                        if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'mul overflow'
                        if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'add overflow'
                        rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
                else:
                    require block.timestamp - lastUpdateTime
                    if (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) / block.timestamp - lastUpdateTime != rewardRate:
                        revert with 0, 'mul overflow'
                    if not (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'div by 0'
                        require ext_call.return_data[0]
                        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                            revert with 0, 'add overflow'
                        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                            revert with 0, 'sub overflow'
                        require ext_code.size(sub_b1f2e804Address)
                        staticcall sub_b1f2e804Address.0xafa72b80 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if rewards[address(arg1)] < 0:
                                revert with 0, 'add overflow'
                        else:
                            require ext_call.return_data[0]
                            if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 'mul overflow'
                            if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'add overflow'
                            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        require (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (block.timestamp * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 'mul overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'div by 0'
                        require ext_call.return_data[0]
                        if rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                            revert with 0, 'add overflow'
                        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                            revert with 0, 'sub overflow'
                        require ext_code.size(sub_b1f2e804Address)
                        staticcall sub_b1f2e804Address.0xafa72b80 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if rewards[address(arg1)] < 0:
                                revert with 0, 'add overflow'
                        else:
                            require ext_call.return_data[0]
                            if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 'mul overflow'
                            if ((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'add overflow'
                            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * block.timestamp * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
            else:
                if lastUpdateTime > periodFinish:
                    revert with 0, 'sub overflow'
                if not periodFinish - lastUpdateTime:
                    if not ext_call.return_data[0]:
                        revert with 0, 'div by 0'
                    require ext_call.return_data[0]
                    if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                        revert with 0, 'add overflow'
                    if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                        revert with 0, 'sub overflow'
                    require ext_code.size(sub_b1f2e804Address)
                    staticcall sub_b1f2e804Address.0xafa72b80 with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        if rewards[address(arg1)] < 0:
                            revert with 0, 'add overflow'
                    else:
                        require ext_call.return_data[0]
                        if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                            revert with 0, 'mul overflow'
                        if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                            revert with 0, 'add overflow'
                        rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
                else:
                    require periodFinish - lastUpdateTime
                    if (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) / periodFinish - lastUpdateTime != rewardRate:
                        revert with 0, 'mul overflow'
                    if not (periodFinish * rewardRate) - (lastUpdateTime * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'div by 0'
                        require ext_call.return_data[0]
                        if rewardPerTokenStored + (0 / ext_call.return_data[0]) < rewardPerTokenStored:
                            revert with 0, 'add overflow'
                        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + (0 / ext_call.return_data[0]):
                            revert with 0, 'sub overflow'
                        require ext_code.size(sub_b1f2e804Address)
                        staticcall sub_b1f2e804Address.0xafa72b80 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if rewards[address(arg1)] < 0:
                                revert with 0, 'add overflow'
                        else:
                            require ext_call.return_data[0]
                            if (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + (0 / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 'mul overflow'
                            if ((rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'add overflow'
                            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + (0 / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        require (periodFinish * rewardRate) - (lastUpdateTime * rewardRate)
                        if (10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / (periodFinish * rewardRate) - (lastUpdateTime * rewardRate) != 10^18:
                            revert with 0, 'mul overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'div by 0'
                        require ext_call.return_data[0]
                        if rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) < rewardPerTokenStored:
                            revert with 0, 'add overflow'
                        if userRewardPerTokenPaid[address(arg1)] > rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]):
                            revert with 0, 'sub overflow'
                        require ext_code.size(sub_b1f2e804Address)
                        staticcall sub_b1f2e804Address.0xafa72b80 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if rewards[address(arg1)] < 0:
                                revert with 0, 'add overflow'
                        else:
                            require ext_call.return_data[0]
                            if (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != rewardPerTokenStored + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0]) - userRewardPerTokenPaid[address(arg1)]:
                                revert with 0, 'mul overflow'
                            if ((rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18) + rewards[address(arg1)] < (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'add overflow'
                            rewards[address(arg1)] += (rewardPerTokenStored * ext_call.return_data[0]) + ((10^18 * periodFinish * rewardRate) - (10^18 * lastUpdateTime * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) - (userRewardPerTokenPaid[address(arg1)] * ext_call.return_data[0]) / 10^18
        userRewardPerTokenPaid[address(arg1)] = rewardPerTokenStored
}



}
