contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - depositRewards(uint256 arg1)
#  - emergencyWithdraw()
#
uint8 paused; offset 160
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 rewardPerSecond;
uint256 totalStaked;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of struct userInfo;
uint256 stor10;
uint256 startTimestamp;
uint256 bonusEndTimestamp;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function paused() payable {
    return bool(paused)
}

function totalStaked() payable {
    return totalStaked
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function bonusEndTimestamp() payable {
    return bonusEndTimestamp
}

function startTimestamp() payable {
    return startTimestamp
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_32fbc419(?) payable {
    return stor5, stor6, stor7, stor8
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setRewardPerSecond(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerSecond = arg1
}

function setBonusEndTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndTimestamp = arg1
}

function rewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndTimestamp:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg1 >= bonusEndTimestamp:
        return 0
    if bonusEndTimestamp < arg1:
        revert with 0, 17
    return (bonusEndTimestamp - arg1)
}

function totalStakeTokenBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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

function getStakeTokenFeeBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStaked:
        revert with 0, 17
    return (ext_call.return_data[0] - totalStaked)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function sub_e9205624(?) payable {
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
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    emit EmergencyRewardWithdraw(ext_call.return_data[0], msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call rewardTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStaked:
        revert with 0, 17
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] - totalStaked
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0
    mem[ceil32(return_data.size) + 328] = 0
    call stakeTokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked, 0) << 288)
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
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function updatePool() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > stor7:
        if totalStaked:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < stor7:
                    revert with 0, 17
                if block.timestamp - stor7 and rewardPerSecond > -1 / block.timestamp - stor7:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if stor8 > !(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
                    revert with 0, 17
                stor8 += 1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked
            else:
                if stor7 >= bonusEndTimestamp:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and stor6 > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 1000000000000 * 10^18 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor8 > !(1000000000000 * 10^18 * 0 / stor10 / totalStaked):
                        revert with 0, 17
                    stor8 += 1000000000000 * 10^18 * 0 / stor10 / totalStaked
                else:
                    if bonusEndTimestamp < stor7:
                        revert with 0, 17
                    if bonusEndTimestamp - stor7 and rewardPerSecond > -1 / bonusEndTimestamp - stor7:
                        revert with 0, 17
                    if (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor8 > !(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
                        revert with 0, 17
                    stor8 += 1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked
        stor7 = block.timestamp
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp <= stor7:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and stor8 > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return ((userInfo[address(arg1)].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndTimestamp:
        if block.timestamp < stor7:
            revert with 0, 17
        if block.timestamp - stor7 and rewardPerSecond > -1 / block.timestamp - stor7:
            revert with 0, 17
        if (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
            revert with 0, 17
        if not stor10:
            revert with 0, 18
        if (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if stor8 > !(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if stor7 >= bonusEndTimestamp:
        if False and rewardPerSecond > 0:
            revert with 0, 17
        if False and stor6 > 0:
            revert with 0, 17
        if not stor10:
            revert with 0, 18
        if 0 / stor10 and 1000000000000 * 10^18 > -1 / 0 / stor10:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if stor8 > !(1000000000000 * 10^18 * 0 / stor10 / totalStaked):
            revert with 0, 17
        if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * 0 / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 0, 17
        if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
            revert with 0, 17
        return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if bonusEndTimestamp < stor7:
        revert with 0, 17
    if bonusEndTimestamp - stor7 and rewardPerSecond > -1 / bonusEndTimestamp - stor7:
        revert with 0, 17
    if (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
        revert with 0, 17
    if not stor10:
        revert with 0, 18
    if (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if stor8 > !(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
        revert with 0, 17
    if userInfo[address(arg1)].field_0 and stor8 + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if (stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18 < userInfo[address(arg1)].field_256:
        revert with 0, 17
    return (((stor8 * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > stor7:
        if totalStaked:
            if block.timestamp <= bonusEndTimestamp:
                if block.timestamp < stor7:
                    revert with 0, 17
                if block.timestamp - stor7 and rewardPerSecond > -1 / block.timestamp - stor7:
                    revert with 0, 17
                if (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (block.timestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
                    revert with 0, 17
                if not stor10:
                    revert with 0, 18
                if (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
                    revert with 0, 17
                if not totalStaked:
                    revert with 0, 18
                if stor8 > !(1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
                    revert with 0, 17
                stor8 += 1000000000000 * 10^18 * (block.timestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked
            else:
                if stor7 >= bonusEndTimestamp:
                    if False and rewardPerSecond > 0:
                        revert with 0, 17
                    if False and stor6 > 0:
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if 0 / stor10 and 1000000000000 * 10^18 > -1 / 0 / stor10:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor8 > !(1000000000000 * 10^18 * 0 / stor10 / totalStaked):
                        revert with 0, 17
                    stor8 += 1000000000000 * 10^18 * 0 / stor10 / totalStaked
                else:
                    if bonusEndTimestamp < stor7:
                        revert with 0, 17
                    if bonusEndTimestamp - stor7 and rewardPerSecond > -1 / bonusEndTimestamp - stor7:
                        revert with 0, 17
                    if (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond) and stor6 > -1 / (bonusEndTimestamp * rewardPerSecond) - (stor7 * rewardPerSecond):
                        revert with 0, 17
                    if not stor10:
                        revert with 0, 18
                    if (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 and 1000000000000 * 10^18 > -1 / (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor8 > !(1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked):
                        revert with 0, 17
                    stor8 += 1000000000000 * 10^18 * (bonusEndTimestamp * rewardPerSecond * stor6) - (stor7 * rewardPerSecond * stor6) / stor10 / totalStaked
        stor7 = block.timestamp
    if not userInfo[msg.sender].field_0:
        if arg1:
            mem[100] = this.address
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor5):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call stor5 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
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
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            if userInfo[msg.sender].field_0 > !0:
                revert with 0, 17
            if totalStaked > !0:
                revert with 0, 17
    else:
        if userInfo[msg.sender].field_0 and stor8 > -1 / userInfo[msg.sender].field_0:
            revert with 0, 17
        if userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18 < userInfo[msg.sender].field_256:
            revert with 0, 17
        if not (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256:
            if arg1:
                mem[100] = this.address
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = this.address
                mem[ceil32(return_data.size) + 196] = arg1
                mem[ceil32(return_data.size) + 96] = 100
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(stor5):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
                mem[ceil32(return_data.size) + 392] = 0
                call stor5 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
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
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                if userInfo[msg.sender].field_0 > !0:
                    revert with 0, 17
                if totalStaked > !0:
                    revert with 0, 17
        else:
            mem[100] = this.address
            require ext_code.size(rewardTokenAddress)
            staticcall rewardTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg1:
                    mem[ceil32(return_data.size) + 100] = this.address
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[(2 * ceil32(return_data.size)) + 164] = this.address
                    mem[(2 * ceil32(return_data.size)) + 196] = arg1
                    mem[(2 * ceil32(return_data.size)) + 96] = 100
                    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                    mem[(2 * ceil32(return_data.size)) + 228] = 32
                    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(stor5):
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
                    mem[(2 * ceil32(return_data.size)) + 392] = 0
                    call stor5 with:
                       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
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
                        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                            if not mem[(2 * ceil32(return_data.size)) + 324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    if userInfo[msg.sender].field_0 > !0:
                        revert with 0, 17
                    if totalStaked > !0:
                        revert with 0, 17
            else:
                mem[ceil32(return_data.size) + 132] = msg.sender
                if (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256 <= ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 164] = (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256, 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, (userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18) - userInfo[msg.sender].field_256, 0) << 288)
                else:
                    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 68
                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 196] = 32
                    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(rewardTokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
                    mem[ceil32(return_data.size) + 328] = 0
                    call rewardTokenAddress with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
                    if arg1:
                        mem[ceil32(return_data.size) + 264] = this.address
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + 296] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + 328] = this.address
                        mem[(2 * ceil32(return_data.size)) + 360] = arg1
                        mem[(2 * ceil32(return_data.size)) + 260] = 100
                        mem[(2 * ceil32(return_data.size)) + 292 len 4] = unknown_0x23b872dd(?????)
                        mem[(2 * ceil32(return_data.size)) + 392] = 32
                        mem[(2 * ceil32(return_data.size)) + 424] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor5):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + 456 len 128] = 0, msg.sender, address(this.address), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + 556] = 0
                        call stor5 with:
                           funct Mask(32, 224, 0, msg.sender, address(this.address), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(768, -544, 0, msg.sender, address(this.address), arg1, 0) << 544)
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
                            mem[(2 * ceil32(return_data.size)) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 488] == bool(mem[(2 * ceil32(return_data.size)) + 488])
                                if not mem[(2 * ceil32(return_data.size)) + 488]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        if userInfo[msg.sender].field_0 > !0:
                            revert with 0, 17
                        if totalStaked > !0:
                            revert with 0, 17
                else:
                    mem[ceil32(return_data.size) + 260] = return_data.size
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
                    if arg1:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = this.address
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg1
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 100
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0x23b872dd(?????)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(stor5):
                            revert with 0, 'Address: call to non-contract'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len 128] = 0, msg.sender, address(this.address), arg1, 0
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 557] = 0
                        call stor5 with:
                           funct Mask(32, 224, 0, msg.sender, address(this.address), arg1, 0) >> 224
                             gas gas_remaining wei
                            args (Mask(768, -544, 0, msg.sender, address(this.address), arg1, 0) << 544)
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
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = return_data.size
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 462] = 32
                                mem[(4 * ceil32(return_data.size)) + 494] = 32
                                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 458
                                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489])
                                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489]:
                                    mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 462] = 32
                                    mem[(4 * ceil32(return_data.size)) + 494] = 42
                                    mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                                    mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 458
                                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 17
                        if userInfo[msg.sender].field_0 > !0:
                            revert with 0, 17
                        if totalStaked > !0:
                            revert with 0, 17
    if userInfo[msg.sender].field_0 and stor8 > -1 / userInfo[msg.sender].field_0:
        revert with 0, 17
    userInfo[msg.sender].field_256 = userInfo[msg.sender].field_0 * stor8 / 1000000000000 * 10^18
    emit Deposit(0, msg.sender);
}



}
