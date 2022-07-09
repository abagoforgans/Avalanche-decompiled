contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - deposit(uint256 arg1)
#  - emergencyWithdraw()
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address lpTokenAddress;
uint256 lastRewardTimestamp;
uint256 sub_dd69f04f;
uint256 baseRate;
uint256 bonusEndTimestamp;
address rewardTokenAddress;
uint256 sub_8294a88e;
uint256 rewardMultiplier;
uint256 sub_7093879d;
uint256 sub_00f968e6;
uint256 sub_18f9006a;
mapping of struct userInfo;

function sub_00f968e6(?) payable {
    return sub_00f968e6
}

function sub_18f9006a(?) payable {
    return sub_18f9006a
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function baseRate() payable {
    return baseRate
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lpToken() payable {
    return lpTokenAddress
}

function rewardMultiplier() payable {
    return rewardMultiplier
}

function sub_7093879d(?) payable {
    return sub_7093879d
}

function sub_8294a88e(?) payable {
    return sub_8294a88e
}

function owner() payable {
    return owner
}

function sub_dd69f04f(?) payable {
    return sub_dd69f04f
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function rewardToken() payable {
    return rewardTokenAddress
}

function lastRewardTimestamp() payable {
    return lastRewardTimestamp
}

function _fallback() payable {
    revert
}

function sub_334b9b64(?) payable {
    if not lastRewardTimestamp:
        return not not lastRewardTimestamp
    return not not bonusEndTimestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0999717d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_00f968e6 = arg1
}

function sub_1d307dfe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7093879d = arg1
}

function sub_c79fa87d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8294a88e = arg1
}

function sub_c89d6f94(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_18f9006a = arg1
}

function setBaseRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseRate = arg1
}

function setRewardMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardMultiplier = arg1
}

function setBonusEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndTimestamp = arg1
}

function setStakeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRewardTimestamp:
        if bonusEndTimestamp:
            revert with 0, 'Fountain is running'
    lpTokenAddress = arg1
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRewardTimestamp:
        if bonusEndTimestamp:
            revert with 0, 'Fountain is running'
    rewardTokenAddress = arg1
}

function setStartTimeStamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if lastRewardTimestamp:
        if bonusEndTimestamp:
            revert with 0, 'Fountain is running'
    lastRewardTimestamp = arg1
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

function depositedBalance() payable {
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndTimestamp:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndTimestamp:
        return 0
    if bonusEndTimestamp < arg1:
        revert with 'NH{q', 17
    return (bonusEndTimestamp - arg1)
}

function rewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not uint8(stor0.field_160):
            revert with 0, 'Pausable: not paused'
        Mask(96, 0, stor0.field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if uint8(stor0.field_160):
            revert with 0, 'Pausable: paused'
        Mask(96, 0, stor0.field_160) = 1
        emit Paused(msg.sender);
}

function sub_37bedc14(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not arg1:
        return 0
    if not arg2:
        return arg6
    if not arg3:
        return arg6
    if not arg4:
        return arg6
    if not arg5:
        return arg6
    if arg2 and arg5 > -1 / arg2:
        revert with 'NH{q', 17
    if arg2 * arg5 and 24 * 3600 > -1 / arg2 * arg5:
        revert with 'NH{q', 17
    if arg4 and arg1 > -1 / arg4:
        revert with 'NH{q', 17
    if arg4 * arg1 and arg3 > -1 / arg4 * arg1:
        revert with 'NH{q', 17
    if not 24 * 3600 * arg2 * arg5:
        revert with 'NH{q', 18
    if arg6 > -(arg4 * arg1 * arg3 / 24 * 3600 * arg2 * arg5) - 1:
        revert with 'NH{q', 17
    return (arg6 + (arg4 * arg1 * arg3 / 24 * 3600 * arg2 * arg5))
}

function getRewardPerSecond() payable {
    if sub_8294a88e > 0:
        return sub_8294a88e
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        return 0
    if not sub_00f968e6:
        return baseRate
    if not sub_18f9006a:
        return baseRate
    if not rewardMultiplier:
        return baseRate
    if not sub_7093879d:
        return baseRate
    if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
        revert with 'NH{q', 17
    if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
        revert with 'NH{q', 17
    if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
        revert with 'NH{q', 17
    if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
        revert with 'NH{q', 18
    if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
        revert with 'NH{q', 17
    return (baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d))
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[ceil32(return_data.size) + 196 len 28]
    call rewardTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'BoringERC20: Transfer failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'BoringERC20: Transfer failed'
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'BoringERC20: Transfer failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'BoringERC20: Transfer failed'
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function updatePool() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    if block.timestamp > lastRewardTimestamp:
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < lastRewardTimestamp:
                    revert with 'NH{q', 17
                if sub_8294a88e > 0:
                    if block.timestamp - lastRewardTimestamp and sub_8294a88e > -1 / block.timestamp - lastRewardTimestamp:
                        revert with 'NH{q', 17
                    if (block.timestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e) and 10^12 > -1 / (block.timestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e):
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -((10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += (10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]
                else:
                    require ext_code.size(lpTokenAddress)
                    staticcall lpTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        if block.timestamp - lastRewardTimestamp and 0 > -1 / block.timestamp - lastRewardTimestamp:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        sub_dd69f04f += 0 / ext_call.return_data[0]
                    else:
                        if not sub_00f968e6:
                            if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                                revert with 'NH{q', 17
                            if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            sub_dd69f04f += (10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                        else:
                            if not sub_18f9006a:
                                if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                                    revert with 'NH{q', 17
                                if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                sub_dd69f04f += (10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                            else:
                                if not rewardMultiplier:
                                    if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                                        revert with 'NH{q', 17
                                    if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    sub_dd69f04f += (10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                                else:
                                    if not sub_7093879d:
                                        if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                                            revert with 'NH{q', 17
                                        if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        sub_dd69f04f += (10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                                    else:
                                        if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
                                            revert with 'NH{q', 17
                                        if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
                                            revert with 'NH{q', 17
                                        if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
                                            revert with 'NH{q', 17
                                        if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
                                            revert with 'NH{q', 17
                                        if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
                                            revert with 'NH{q', 18
                                        if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
                                            revert with 'NH{q', 17
                                        if block.timestamp - lastRewardTimestamp and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > -1 / block.timestamp - lastRewardTimestamp:
                                            revert with 'NH{q', 17
                                        if (baseRate * block.timestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) and 10^12 > -1 / (baseRate * block.timestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if sub_dd69f04f > -((10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        sub_dd69f04f += (10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]
            else:
                if lastRewardTimestamp >= bonusEndTimestamp:
                    if sub_8294a88e <= 0:
                        require ext_code.size(lpTokenAddress)
                        staticcall lpTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0]:
                            if not sub_00f968e6:
                                if False and baseRate > 0:
                                    revert with 'NH{q', 17
                            else:
                                if not sub_18f9006a:
                                    if False and baseRate > 0:
                                        revert with 'NH{q', 17
                                else:
                                    if not rewardMultiplier:
                                        if False and baseRate > 0:
                                            revert with 'NH{q', 17
                                    else:
                                        if not sub_7093879d:
                                            if False and baseRate > 0:
                                                revert with 'NH{q', 17
                                        else:
                                            if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
                                                revert with 'NH{q', 17
                                            if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
                                                revert with 'NH{q', 17
                                            if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
                                                revert with 'NH{q', 17
                                            if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
                                                revert with 'NH{q', 18
                                            if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
                                                revert with 'NH{q', 17
                                            if False and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > 0:
                                                revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    sub_dd69f04f += 0 / ext_call.return_data[0]
                else:
                    if bonusEndTimestamp < lastRewardTimestamp:
                        revert with 'NH{q', 17
                    if sub_8294a88e > 0:
                        if bonusEndTimestamp - lastRewardTimestamp and sub_8294a88e > -1 / bonusEndTimestamp - lastRewardTimestamp:
                            revert with 'NH{q', 17
                        if (bonusEndTimestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e) and 10^12 > -1 / (bonusEndTimestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e):
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        sub_dd69f04f += (10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]
                    else:
                        require ext_code.size(lpTokenAddress)
                        staticcall lpTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if not ext_call.return_data[0]:
                            if bonusEndTimestamp - lastRewardTimestamp and 0 > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            sub_dd69f04f += 0 / ext_call.return_data[0]
                        else:
                            if not sub_00f968e6:
                                if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                    revert with 'NH{q', 17
                                if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                sub_dd69f04f += (10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                            else:
                                if not sub_18f9006a:
                                    if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                        revert with 'NH{q', 17
                                    if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    sub_dd69f04f += (10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                                else:
                                    if not rewardMultiplier:
                                        if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                            revert with 'NH{q', 17
                                        if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                            revert with 'NH{q', 17
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        sub_dd69f04f += (10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                                    else:
                                        if not sub_7093879d:
                                            if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                                revert with 'NH{q', 17
                                            if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            sub_dd69f04f += (10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]
                                        else:
                                            if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
                                                revert with 'NH{q', 17
                                            if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
                                                revert with 'NH{q', 17
                                            if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
                                                revert with 'NH{q', 17
                                            if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
                                                revert with 'NH{q', 17
                                            if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
                                                revert with 'NH{q', 18
                                            if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
                                                revert with 'NH{q', 17
                                            if bonusEndTimestamp - lastRewardTimestamp and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > -1 / bonusEndTimestamp - lastRewardTimestamp:
                                                revert with 'NH{q', 17
                                            if (baseRate * bonusEndTimestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) and 10^12 > -1 / (baseRate * bonusEndTimestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp):
                                                revert with 'NH{q', 17
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if sub_dd69f04f > -((10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            sub_dd69f04f += (10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]
        lastRewardTimestamp = block.timestamp
}

function pendingRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= lastRewardTimestamp:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 10^12) - userInfo[address(arg1)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[address(arg1)].field_0 and sub_dd69f04f > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * sub_dd69f04f / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * sub_dd69f04f / 10^12) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndTimestamp:
        if block.timestamp < lastRewardTimestamp:
            revert with 'NH{q', 17
        if sub_8294a88e > 0:
            if block.timestamp - lastRewardTimestamp and sub_8294a88e > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if (block.timestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e) and 10^12 > -1 / (block.timestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -((10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        require ext_code.size(lpTokenAddress)
        staticcall lpTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if block.timestamp - lastRewardTimestamp and 0 > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if not sub_00f968e6:
            if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if not sub_18f9006a:
            if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if not rewardMultiplier:
            if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if not sub_7093879d:
            if block.timestamp - lastRewardTimestamp and baseRate > -1 / block.timestamp - lastRewardTimestamp:
                revert with 'NH{q', 17
            if (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (block.timestamp * baseRate) - (lastRewardTimestamp * baseRate):
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if sub_dd69f04f > -((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
                revert with 'NH{q', 17
            if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
                revert with 'NH{q', 17
            return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * block.timestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
        if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
            revert with 'NH{q', 17
        if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
            revert with 'NH{q', 17
        if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
            revert with 'NH{q', 17
        if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
            revert with 'NH{q', 17
        if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
            revert with 'NH{q', 18
        if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
            revert with 'NH{q', 17
        if block.timestamp - lastRewardTimestamp and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > -1 / block.timestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (baseRate * block.timestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) and 10^12 > -1 / (baseRate * block.timestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * baseRate * block.timestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * block.timestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if lastRewardTimestamp >= bonusEndTimestamp:
        if sub_8294a88e <= 0:
            require ext_code.size(lpTokenAddress)
            staticcall lpTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0]:
                if not sub_00f968e6:
                    if False and baseRate > 0:
                        revert with 'NH{q', 17
                else:
                    if not sub_18f9006a:
                        if False and baseRate > 0:
                            revert with 'NH{q', 17
                    else:
                        if not rewardMultiplier:
                            if False and baseRate > 0:
                                revert with 'NH{q', 17
                        else:
                            if not sub_7093879d:
                                if False and baseRate > 0:
                                    revert with 'NH{q', 17
                            else:
                                if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
                                    revert with 'NH{q', 17
                                if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
                                    revert with 'NH{q', 17
                                if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
                                    revert with 'NH{q', 17
                                if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
                                    revert with 'NH{q', 17
                                if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
                                    revert with 'NH{q', 18
                                if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
                                    revert with 'NH{q', 17
                                if False and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > 0:
                                    revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if bonusEndTimestamp < lastRewardTimestamp:
        revert with 'NH{q', 17
    if sub_8294a88e > 0:
        if bonusEndTimestamp - lastRewardTimestamp and sub_8294a88e > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (bonusEndTimestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e) and 10^12 > -1 / (bonusEndTimestamp * sub_8294a88e) - (lastRewardTimestamp * sub_8294a88e):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * sub_8294a88e) - (10^12 * lastRewardTimestamp * sub_8294a88e) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    require ext_code.size(lpTokenAddress)
    staticcall lpTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if bonusEndTimestamp - lastRewardTimestamp and 0 > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -(0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + (0 / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + (0 / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not sub_00f968e6:
        if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not sub_18f9006a:
        if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not rewardMultiplier:
        if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if not sub_7093879d:
        if bonusEndTimestamp - lastRewardTimestamp and baseRate > -1 / bonusEndTimestamp - lastRewardTimestamp:
            revert with 'NH{q', 17
        if (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate) and 10^12 > -1 / (bonusEndTimestamp * baseRate) - (lastRewardTimestamp * baseRate):
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if sub_dd69f04f > -((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * bonusEndTimestamp * baseRate) - (10^12 * lastRewardTimestamp * baseRate) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if sub_00f968e6 and sub_7093879d > -1 / sub_00f968e6:
        revert with 'NH{q', 17
    if sub_00f968e6 * sub_7093879d and 24 * 3600 > -1 / sub_00f968e6 * sub_7093879d:
        revert with 'NH{q', 17
    if rewardMultiplier and ext_call.return_data[0] > -1 / rewardMultiplier:
        revert with 'NH{q', 17
    if rewardMultiplier * ext_call.return_data[0] and sub_18f9006a > -1 / rewardMultiplier * ext_call.return_data[0]:
        revert with 'NH{q', 17
    if not 24 * 3600 * sub_00f968e6 * sub_7093879d:
        revert with 'NH{q', 18
    if baseRate > -(rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) - 1:
        revert with 'NH{q', 17
    if bonusEndTimestamp - lastRewardTimestamp and baseRate + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d) > -1 / bonusEndTimestamp - lastRewardTimestamp:
        revert with 'NH{q', 17
    if (baseRate * bonusEndTimestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) and 10^12 > -1 / (baseRate * bonusEndTimestamp) + (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (baseRate * lastRewardTimestamp) - (rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp):
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if sub_dd69f04f > -((10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and sub_dd69f04f + ((10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0]) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((sub_dd69f04f * userInfo[address(arg1)].field_0) + ((10^12 * baseRate * bonusEndTimestamp) + (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * bonusEndTimestamp) - (10^12 * baseRate * lastRewardTimestamp) - (10^12 * rewardMultiplier * ext_call.return_data[0] * sub_18f9006a / 24 * 3600 * sub_00f968e6 * sub_7093879d * lastRewardTimestamp) / ext_call.return_data[0] * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}



}
