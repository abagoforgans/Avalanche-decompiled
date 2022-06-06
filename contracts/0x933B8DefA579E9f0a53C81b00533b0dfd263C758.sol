contract main {




// =====================  Runtime code  =====================


address owner;
address syrupAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor6;
uint256 startBlock;
uint256 bonusEndBlock;
uint256 totalStaked;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function totalStaked() payable {
    return totalStaked
}

function syrup() payable {
    return syrupAddress
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function stopReward() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function changeEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function changeRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerBlock = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    return (bonusEndBlock - arg1)
}

function emergencyWithdraw() payable {
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(address(poolInfo.field_0))
    call address(poolInfo.field_0).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, userInfo[address(msg.sender)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if totalStaked < userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    totalStaked -= userInfo[address(msg.sender)].field_0
    userInfo[address(msg.sender)].field_0 = 0
    userInfo[address(msg.sender)].field_256 = 0
    emit EmergencyWithdraw(userInfo[address(msg.sender)].field_0, msg.sender);
}

function saveMe(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < totalStaked:
        revert with 'NH{q', 17
    if arg1 >= ext_call.return_data[0] - totalStaked:
        revert with 0, 'not enough rewards'
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp > poolInfo[arg1].field_512:
        if totalStaked:
            if block.timestamp <= bonusEndBlock:
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.timestamp - poolInfo[arg1].field_512 and rewardPerBlock > -1 / block.timestamp - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.timestamp * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (block.timestamp * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                    revert with 'NH{q', 17
                if not stor6:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 and 10^12 > -1 / (block.timestamp * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(10^12 * (block.timestamp * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked) - 1:
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 10^12 * (block.timestamp * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if 0 / stor6 and 10^12 > -1 / 0 / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^12 * 0 / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^12 * 0 / stor6 / totalStaked
                else:
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and rewardPerBlock > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 and 10^12 > -1 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor6 / totalStaked
        poolInfo[arg1].field_512 = block.timestamp
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp > uint256(poolInfo.field_512):
        if totalStaked:
            if block.timestamp <= bonusEndBlock:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 'NH{q', 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerBlock > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 'NH{q', 17
                if (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                    revert with 'NH{q', 17
                if not stor6:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
                    revert with 'NH{q', 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if 0 / stor6 and 10^12 > -1 / 0 / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if uint256(poolInfo.field_768) > -(10^12 * 0 / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                else:
                    if bonusEndBlock < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if bonusEndBlock - uint256(poolInfo.field_512) and rewardPerBlock > -1 / bonusEndBlock - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if uint256(poolInfo.field_768) > -(10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
        uint256(poolInfo.field_512) = block.timestamp
    if userInfo[address(msg.sender)].field_0 > 0:
        if userInfo[address(msg.sender)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 > 0:
            require ext_code.size(rewardTokenAddress)
            call rewardTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > 0:
        require ext_code.size(address(poolInfo.field_0))
        call address(poolInfo.field_0).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 += arg1
        if totalStaked > -arg1 - 1:
            revert with 'NH{q', 17
        totalStaked += arg1
    if userInfo[address(msg.sender)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
    emit Deposit(arg1, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if userInfo[address(msg.sender)].field_0 < arg1:
        revert with 0, 'withdraw: not good'
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp > uint256(poolInfo.field_512):
        if totalStaked:
            if block.timestamp <= bonusEndBlock:
                if block.timestamp < uint256(poolInfo.field_512):
                    revert with 'NH{q', 17
                if block.timestamp - uint256(poolInfo.field_512) and rewardPerBlock > -1 / block.timestamp - uint256(poolInfo.field_512):
                    revert with 'NH{q', 17
                if (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                    revert with 'NH{q', 17
                if not stor6:
                    revert with 'NH{q', 18
                if (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                    revert with 'NH{q', 17
                if not totalStaked:
                    revert with 'NH{q', 18
                if uint256(poolInfo.field_768) > -(10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
                    revert with 'NH{q', 17
                uint256(poolInfo.field_768) += 10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
            else:
                if uint256(poolInfo.field_512) >= bonusEndBlock:
                    if False and rewardPerBlock > 0:
                        revert with 'NH{q', 17
                    if False and uint256(poolInfo.field_256) > 0:
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if 0 / stor6 and 10^12 > -1 / 0 / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if uint256(poolInfo.field_768) > -(10^12 * 0 / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    uint256(poolInfo.field_768) += 10^12 * 0 / stor6 / totalStaked
                else:
                    if bonusEndBlock < uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if bonusEndBlock - uint256(poolInfo.field_512) and rewardPerBlock > -1 / bonusEndBlock - uint256(poolInfo.field_512):
                        revert with 'NH{q', 17
                    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
                        revert with 'NH{q', 17
                    if not stor6:
                        revert with 'NH{q', 18
                    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
                        revert with 'NH{q', 17
                    if not totalStaked:
                        revert with 'NH{q', 18
                    if uint256(poolInfo.field_768) > -(10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
                        revert with 'NH{q', 17
                    uint256(poolInfo.field_768) += 10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked
        uint256(poolInfo.field_512) = block.timestamp
    if userInfo[address(msg.sender)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256 > 0:
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 > 0:
        if userInfo[address(msg.sender)].field_0 < arg1:
            revert with 'NH{q', 17
        userInfo[address(msg.sender)].field_0 -= arg1
        require ext_code.size(address(poolInfo.field_0))
        call address(poolInfo.field_0).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if totalStaked < arg1:
            revert with 'NH{q', 17
        totalStaked -= arg1
    if userInfo[address(msg.sender)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_256 = userInfo[address(msg.sender)].field_0 * uint256(poolInfo.field_768) / 10^12
    emit Withdraw(arg1, msg.sender);
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 0 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp <= uint256(poolInfo.field_512):
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 10^12) - userInfo[address(arg1)].field_256)
    if block.timestamp <= bonusEndBlock:
        if block.timestamp < uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if block.timestamp - uint256(poolInfo.field_512) and rewardPerBlock > -1 / block.timestamp - uint256(poolInfo.field_512):
            revert with 'NH{q', 17
        if (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (block.timestamp * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            revert with 'NH{q', 17
        if not stor6:
            revert with 'NH{q', 18
        if (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (block.timestamp * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if False and rewardPerBlock > 0:
            revert with 'NH{q', 17
        if False and uint256(poolInfo.field_256) > 0:
            revert with 'NH{q', 17
        if not stor6:
            revert with 'NH{q', 18
        if 0 / stor6 and 10^12 > -1 / 0 / stor6:
            revert with 'NH{q', 17
        if not totalStaked:
            revert with 'NH{q', 18
        if uint256(poolInfo.field_768) > -(10^12 * 0 / stor6 / totalStaked) - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * 0 / stor6 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
            revert with 'NH{q', 17
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * 0 / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
    if bonusEndBlock < uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if bonusEndBlock - uint256(poolInfo.field_512) and rewardPerBlock > -1 / bonusEndBlock - uint256(poolInfo.field_512):
        revert with 'NH{q', 17
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) and uint256(poolInfo.field_256) > -1 / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        revert with 'NH{q', 17
    if not stor6:
        revert with 'NH{q', 18
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 and 10^12 > -1 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6:
        revert with 'NH{q', 17
    if not totalStaked:
        revert with 'NH{q', 18
    if uint256(poolInfo.field_768) > -(10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) - 1:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 and uint256(poolInfo.field_768) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked) > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12 < userInfo[address(arg1)].field_256:
        revert with 'NH{q', 17
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (10^12 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor6 / totalStaked * userInfo[address(arg1)].field_0) / 10^12) - userInfo[address(arg1)].field_256)
}



}
