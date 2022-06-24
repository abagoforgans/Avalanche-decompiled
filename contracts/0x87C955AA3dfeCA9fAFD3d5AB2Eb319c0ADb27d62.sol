contract main {




// =====================  Runtime code  =====================


#
#  - pendingToken(uint256 arg1, address arg2)
#  - depositWithPermit(uint256 arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address tokenAddress;
uint256 tokenPerBlock;
uint256 bonusMultiplier;
uint256 startBlock;
uint256 bonusEndBlock;
array of struct poolInfo;
mapping of struct userInfo;
mapping of uint8 stor8;
uint256 totalAllocPoint;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function tokenPerBlock() payable {
    return tokenPerBlock
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function bonusMultiplier() payable {
    return bonusMultiplier
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function setTokenPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenPerBlock = arg1
}

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function setBonusMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusMultiplier = arg1
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

function sub_c59b2109(?) payable {
    if block.number < startBlock:
        return 10^12
    if bonusEndBlock < startBlock:
        return 10^12
    if block.number < startBlock:
        revert with 'NH{q', 17
    if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
        revert with 'NH{q', 17
    if not bonusEndBlock - startBlock:
        revert with 'NH{q', 18
    if 10^12 >= (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
        return (-((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12)
    else:
        return 0
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if block.number < startBlock:
            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                revert with 'NH{q', 17
            if 10^12 * bonusMultiplier >= 10^12:
                if arg2 < arg1:
                    revert with 'NH{q', 17
                if arg2 - arg1 and 10^12 * bonusMultiplier > -1 / arg2 - arg1:
                    revert with 'NH{q', 17
                return ((10^12 * arg2 * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier))
        else:
            if bonusEndBlock < startBlock:
                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                    revert with 'NH{q', 17
                if 10^12 * bonusMultiplier >= 10^12:
                    if arg2 < arg1:
                        revert with 'NH{q', 17
                    if arg2 - arg1 and 10^12 * bonusMultiplier > -1 / arg2 - arg1:
                        revert with 'NH{q', 17
                    return ((10^12 * arg2 * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier))
            else:
                if block.number < startBlock:
                    revert with 'NH{q', 17
                if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                    revert with 'NH{q', 17
                if not bonusEndBlock - startBlock:
                    revert with 'NH{q', 18
                if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                    if bonusMultiplier and 0 > -1 / bonusMultiplier:
                        revert with 'NH{q', 17
                else:
                    if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                        revert with 'NH{q', 17
                    if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                        if arg2 < arg1:
                            revert with 'NH{q', 17
                        if arg2 - arg1 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / arg2 - arg1:
                            revert with 'NH{q', 17
                        return ((10^12 * bonusMultiplier * arg2) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * arg2) - (10^12 * bonusMultiplier * arg1) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * arg1))
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and 10^12 > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        return ((10^12 * arg2) - (10^12 * arg1))
    if arg1 >= bonusEndBlock:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if arg2 - arg1 and 10^12 > -1 / arg2 - arg1:
            revert with 'NH{q', 17
        return ((10^12 * arg2) - (10^12 * arg1))
    if block.number < startBlock:
        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
            revert with 'NH{q', 17
        if 10^12 * bonusMultiplier >= 10^12:
            if arg2 < bonusEndBlock:
                revert with 'NH{q', 17
            if arg2 - bonusEndBlock and 10^12 > -1 / arg2 - bonusEndBlock:
                revert with 'NH{q', 17
            if bonusEndBlock < arg1:
                revert with 'NH{q', 17
            if bonusEndBlock - arg1 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - arg1:
                revert with 'NH{q', 17
            if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier) > (-1 * 10^12 * arg2) + (10^12 * bonusEndBlock) - 1:
                revert with 'NH{q', 17
            return ((10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier) + (10^12 * arg2) - (10^12 * bonusEndBlock))
    else:
        if bonusEndBlock < startBlock:
            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                revert with 'NH{q', 17
            if 10^12 * bonusMultiplier >= 10^12:
                if arg2 < bonusEndBlock:
                    revert with 'NH{q', 17
                if arg2 - bonusEndBlock and 10^12 > -1 / arg2 - bonusEndBlock:
                    revert with 'NH{q', 17
                if bonusEndBlock < arg1:
                    revert with 'NH{q', 17
                if bonusEndBlock - arg1 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - arg1:
                    revert with 'NH{q', 17
                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier) > (-1 * 10^12 * arg2) + (10^12 * bonusEndBlock) - 1:
                    revert with 'NH{q', 17
                return ((10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * arg1 * bonusMultiplier) + (10^12 * arg2) - (10^12 * bonusEndBlock))
        else:
            if block.number < startBlock:
                revert with 'NH{q', 17
            if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                revert with 'NH{q', 17
            if not bonusEndBlock - startBlock:
                revert with 'NH{q', 18
            if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                if bonusMultiplier and 0 > -1 / bonusMultiplier:
                    revert with 'NH{q', 17
            else:
                if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                    revert with 'NH{q', 17
                if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                    if arg2 < bonusEndBlock:
                        revert with 'NH{q', 17
                    if arg2 - bonusEndBlock and 10^12 > -1 / arg2 - bonusEndBlock:
                        revert with 'NH{q', 17
                    if bonusEndBlock < arg1:
                        revert with 'NH{q', 17
                    if bonusEndBlock - arg1 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - arg1:
                        revert with 'NH{q', 17
                    if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * arg1) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * arg1) > (-1 * 10^12 * arg2) + (10^12 * bonusEndBlock) - 1:
                        revert with 'NH{q', 17
                    return ((10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * arg1) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * arg1) + (10^12 * arg2) - (10^12 * bonusEndBlock))
    if arg2 < bonusEndBlock:
        revert with 'NH{q', 17
    if arg2 - bonusEndBlock and 10^12 > -1 / arg2 - bonusEndBlock:
        revert with 'NH{q', 17
    if bonusEndBlock < arg1:
        revert with 'NH{q', 17
    if bonusEndBlock - arg1 and 10^12 > -1 / bonusEndBlock - arg1:
        revert with 'NH{q', 17
    if -1 * 10^12 * arg1 > (-1 * 10^12 * arg2) - 1:
        revert with 'NH{q', 17
    return ((-1 * 10^12 * arg1) + (10^12 * arg2))
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < startBlock:
                    if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                        revert with 'NH{q', 17
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if 10^12 * bonusMultiplier >= 10^12:
                        if block.number - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier):
                            revert with 'NH{q', 17
                        if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                            revert with 'NH{q', 17
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock < startBlock:
                        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                            revert with 'NH{q', 17
                        if block.number < poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if 10^12 * bonusMultiplier >= 10^12:
                            if block.number - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number < startBlock:
                            revert with 'NH{q', 17
                        if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                            revert with 'NH{q', 17
                        if not bonusEndBlock - startBlock:
                            revert with 'NH{q', 18
                        if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                            if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                if block.number - poolInfo[arg1].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                        revert with 'NH{q', 17
                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < startBlock:
                        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                            revert with 'NH{q', 17
                        if block.number < bonusEndBlock:
                            revert with 'NH{q', 17
                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                            revert with 'NH{q', 17
                        if bonusEndBlock < poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if 10^12 * bonusMultiplier >= 10^12:
                            if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                revert with 'NH{q', 17
                            if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                revert with 'NH{q', 17
                            if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < bonusEndBlock:
                                revert with 'NH{q', 17
                            if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                revert with 'NH{q', 17
                            if bonusEndBlock < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number < startBlock:
                                revert with 'NH{q', 17
                            if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                revert with 'NH{q', 17
                            if not bonusEndBlock - startBlock:
                                revert with 'NH{q', 18
                            if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                    if bonusEndBlock - poolInfo[arg1].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function updatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _40 = mem[_39]
            require mem[_39] == mem[_39]
            if mem[_39]:
                if block.number <= bonusEndBlock:
                    if block.number < startBlock:
                        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                            revert with 'NH{q', 17
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if 10^12 * bonusMultiplier >= 10^12:
                            if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not _40:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                        else:
                            if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not _40:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                    else:
                        if bonusEndBlock < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _40:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                            else:
                                if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _40:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                        else:
                            if block.number < startBlock:
                                revert with 'NH{q', 17
                            if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                revert with 'NH{q', 17
                            if not bonusEndBlock - startBlock:
                                revert with 'NH{q', 18
                            if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _40:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                            else:
                                if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                    if block.number - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _40:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                                else:
                                    if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _40:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                            revert with 'NH{q', 17
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not _40:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                    else:
                        if block.number < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < bonusEndBlock:
                                revert with 'NH{q', 17
                            if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                revert with 'NH{q', 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _40:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                            else:
                                if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _40:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                        else:
                            if bonusEndBlock < startBlock:
                                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if 10^12 * bonusMultiplier >= 10^12:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _40:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                                else:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _40:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                            else:
                                if block.number < startBlock:
                                    revert with 'NH{q', 17
                                if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                    revert with 'NH{q', 17
                                if not bonusEndBlock - startBlock:
                                    revert with 'NH{q', 18
                                if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                    if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if bonusEndBlock < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _40:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                                else:
                                    if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if bonusEndBlock < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                        if bonusEndBlock - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _40:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
                                    else:
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _40:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _40
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _41 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _42 = mem[_41]
                require mem[_41] == mem[_41]
                if mem[_41]:
                    if block.number <= bonusEndBlock:
                        if block.number < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _42:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                            else:
                                if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _42:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                        else:
                            if bonusEndBlock < startBlock:
                                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if 10^12 * bonusMultiplier >= 10^12:
                                    if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _42:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                else:
                                    if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _42:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                            else:
                                if block.number < startBlock:
                                    revert with 'NH{q', 17
                                if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                    revert with 'NH{q', 17
                                if not bonusEndBlock - startBlock:
                                    revert with 'NH{q', 18
                                if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                    if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _42:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                else:
                                    if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                        if block.number - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512):
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _42:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                            revert with 'NH{q', 17
                                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _42:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not _42:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                        else:
                            if block.number < startBlock:
                                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if 10^12 * bonusMultiplier >= 10^12:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _42:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                else:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _42:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                            else:
                                if bonusEndBlock < startBlock:
                                    if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if bonusEndBlock < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if 10^12 * bonusMultiplier >= 10^12:
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _42:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                    else:
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _42:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                else:
                                    if block.number < startBlock:
                                        revert with 'NH{q', 17
                                    if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                        revert with 'NH{q', 17
                                    if not bonusEndBlock - startBlock:
                                        revert with 'NH{q', 18
                                    if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                        if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                            revert with 'NH{q', 17
                                        if block.number < bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _42:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                    else:
                                        if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                            revert with 'NH{q', 17
                                        if block.number < bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                            if bonusEndBlock - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                                revert with 'NH{q', 17
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not _42:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                                revert with 'NH{q', 17
                                            poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                                        else:
                                            if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                                revert with 'NH{q', 17
                                            if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                                revert with 'NH{q', 17
                                            if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                                revert with 'NH{q', 17
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not _42:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42) - 1:
                                                revert with 'NH{q', 17
                                            poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _42
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[address(arg2)]:
        revert with 0, 'add: cannot add duplicate pool'
    mem[0] = arg2
    mem[32] = 8
    stor8[address(arg2)] = 1
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _75 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _76 = mem[_75]
                require mem[_75] == mem[_75]
                if mem[_75]:
                    if block.number <= bonusEndBlock:
                        if block.number < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _76:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                            else:
                                if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not _76:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                        else:
                            if bonusEndBlock < startBlock:
                                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if 10^12 * bonusMultiplier >= 10^12:
                                    if block.number - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _76:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                else:
                                    if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _76:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                            else:
                                if block.number < startBlock:
                                    revert with 'NH{q', 17
                                if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                    revert with 'NH{q', 17
                                if not bonusEndBlock - startBlock:
                                    revert with 'NH{q', 18
                                if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                    if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                        revert with 'NH{q', 17
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _76:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                else:
                                    if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                        if block.number - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512):
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _76:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                    else:
                                        if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                            revert with 'NH{q', 17
                                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _76:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[idx].field_512 and 10^12 > -1 / block.number - poolInfo[idx].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[idx].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[idx].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not _76:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                revert with 'NH{q', 17
                            poolInfo[idx].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                        else:
                            if block.number < startBlock:
                                if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[idx].field_512:
                                    revert with 'NH{q', 17
                                if 10^12 * bonusMultiplier >= 10^12:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _76:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                else:
                                    if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not _76:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                            else:
                                if bonusEndBlock < startBlock:
                                    if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                        revert with 'NH{q', 17
                                    if block.number < bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                        revert with 'NH{q', 17
                                    if bonusEndBlock < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if 10^12 * bonusMultiplier >= 10^12:
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _76:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[idx].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                    else:
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _76:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                else:
                                    if block.number < startBlock:
                                        revert with 'NH{q', 17
                                    if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                        revert with 'NH{q', 17
                                    if not bonusEndBlock - startBlock:
                                        revert with 'NH{q', 18
                                    if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                        if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                            revert with 'NH{q', 17
                                        if block.number < bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                            revert with 'NH{q', 17
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                            revert with 'NH{q', 17
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = this.address
                                        mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining wei
                                            args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not _76:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                            revert with 'NH{q', 17
                                        poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                    else:
                                        if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                            revert with 'NH{q', 17
                                        if block.number < bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                            revert with 'NH{q', 17
                                        if bonusEndBlock < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                            if bonusEndBlock - poolInfo[idx].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                                revert with 'NH{q', 17
                                            if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                                revert with 'NH{q', 17
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not _76:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                                revert with 'NH{q', 17
                                            poolInfo[idx].field_768 += 10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                                        else:
                                            if bonusEndBlock - poolInfo[idx].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if -1 * 10^12 * poolInfo[idx].field_512 > (-1 * 10^12 * block.number) - 1:
                                                revert with 'NH{q', 17
                                            if (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[idx].field_512) + (10^12 * block.number):
                                                revert with 'NH{q', 17
                                            if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[idx].field_256 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                                revert with 'NH{q', 17
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = this.address
                                            mem[mem[64] + 36] = (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x40c10f19 with:
                                                 gas gas_remaining wei
                                                args address(this.address), (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not _76:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76) - 1:
                                                revert with 'NH{q', 17
                                            poolInfo[idx].field_768 += 10^12 * (-1 * 10^12 * poolInfo[idx].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[idx].field_256 / totalAllocPoint / _76
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > -arg1 - 1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number > startBlock:
        poolInfo[poolInfo.length].field_512 = block.number
    else:
        poolInfo[poolInfo.length].field_512 = startBlock
    poolInfo[poolInfo.length].field_768 = 0
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'withdraw: cannot withdraw more than earned'
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        mem[100] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = msg.sender
        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][address(msg.sender)].field_0 < arg2:
            revert with 'NH{q', 17
        userInfo[arg1][address(msg.sender)].field_0 -= arg2
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < startBlock:
                    if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                        revert with 'NH{q', 17
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if 10^12 * bonusMultiplier >= 10^12:
                        if block.number - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier):
                            revert with 'NH{q', 17
                        if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        mem[ceil32(return_data.size) + 132] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                            revert with 'NH{q', 17
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        mem[ceil32(return_data.size) + 132] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock < startBlock:
                        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                            revert with 'NH{q', 17
                        if block.number < poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if 10^12 * bonusMultiplier >= 10^12:
                            if block.number - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) and tokenPerBlock > -1 / (10^12 * block.number * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 132] = (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 132] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.number < startBlock:
                            revert with 'NH{q', 17
                        if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                            revert with 'NH{q', 17
                        if not bonusEndBlock - startBlock:
                            revert with 'NH{q', 18
                        if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                            if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                revert with 'NH{q', 17
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 132] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                if block.number - poolInfo[arg1].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * block.number) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[ceil32(return_data.size) + 132] = (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusMultiplier * block.number * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * block.number * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                                    revert with 'NH{q', 17
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[ceil32(return_data.size) + 132] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[arg1].field_512 and 10^12 > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 'NH{q', 17
                    if (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512) and tokenPerBlock > -1 / (10^12 * block.number) - (10^12 * poolInfo[arg1].field_512):
                        revert with 'NH{q', 17
                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12:
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    mem[ceil32(return_data.size) + 132] = (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^12 * (10^12 * block.number * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < startBlock:
                        if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                            revert with 'NH{q', 17
                        if block.number < bonusEndBlock:
                            revert with 'NH{q', 17
                        if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                            revert with 'NH{q', 17
                        if bonusEndBlock < poolInfo[arg1].field_512:
                            revert with 'NH{q', 17
                        if 10^12 * bonusMultiplier >= 10^12:
                            if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                revert with 'NH{q', 17
                            if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 132] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                revert with 'NH{q', 17
                            if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                revert with 'NH{q', 17
                            if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            mem[ceil32(return_data.size) + 132] = (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if bonusEndBlock < startBlock:
                            if bonusMultiplier and 10^12 > -1 / bonusMultiplier:
                                revert with 'NH{q', 17
                            if block.number < bonusEndBlock:
                                revert with 'NH{q', 17
                            if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                revert with 'NH{q', 17
                            if bonusEndBlock < poolInfo[arg1].field_512:
                                revert with 'NH{q', 17
                            if 10^12 * bonusMultiplier >= 10^12:
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 * bonusMultiplier > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusEndBlock * bonusMultiplier) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                    revert with 'NH{q', 17
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[ceil32(return_data.size) + 132] = (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusEndBlock * bonusMultiplier * tokenPerBlock) - (10^12 * poolInfo[arg1].field_512 * bonusMultiplier * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[ceil32(return_data.size) + 132] = (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.number < startBlock:
                                revert with 'NH{q', 17
                            if block.number - startBlock and 10^12 > -1 / block.number - startBlock:
                                revert with 'NH{q', 17
                            if not bonusEndBlock - startBlock:
                                revert with 'NH{q', 18
                            if 10^12 < (10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock:
                                if bonusMultiplier and 0 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                    revert with 'NH{q', 17
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                mem[ceil32(return_data.size) + 132] = (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if bonusMultiplier and -((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock) + 10^12 > -1 / bonusMultiplier:
                                    revert with 'NH{q', 17
                                if block.number < bonusEndBlock:
                                    revert with 'NH{q', 17
                                if block.number - bonusEndBlock and 10^12 > -1 / block.number - bonusEndBlock:
                                    revert with 'NH{q', 17
                                if bonusEndBlock < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) >= 10^12:
                                    if bonusEndBlock - poolInfo[arg1].field_512 and (10^12 * bonusMultiplier) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier) > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) > (-1 * 10^12 * block.number) + (10^12 * bonusEndBlock) - 1:
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock) and tokenPerBlock > -1 / (10^12 * bonusMultiplier * bonusEndBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512) + (10^12 * block.number) - (10^12 * bonusEndBlock):
                                        revert with 'NH{q', 17
                                    if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[ceil32(return_data.size) + 132] = (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if poolInfo[arg1].field_768 > -(10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[arg1].field_768 += 10^12 * (10^12 * bonusMultiplier * bonusEndBlock * tokenPerBlock) - ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * bonusEndBlock * tokenPerBlock) - (10^12 * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + ((10^12 * block.number) - (10^12 * startBlock) / bonusEndBlock - startBlock * bonusMultiplier * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) - (10^12 * bonusEndBlock * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if bonusEndBlock - poolInfo[arg1].field_512 and 10^12 > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if -1 * 10^12 * poolInfo[arg1].field_512 > (-1 * 10^12 * block.number) - 1:
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number) and tokenPerBlock > -1 / (-1 * 10^12 * poolInfo[arg1].field_512) + (10^12 * block.number):
                                        revert with 'NH{q', 17
                                    if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 and poolInfo[arg1].field_256 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12:
                                        revert with 'NH{q', 17
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    mem[ceil32(return_data.size) + 132] = (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint and 10^12 > -1 / (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not ext_call.return_data[0]:
                                        revert with 'NH{q', 18
                                    if poolInfo[arg1].field_768 > -(10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                        revert with 'NH{q', 17
                                    poolInfo[arg1].field_768 += 10^12 * (-1 * 10^12 * poolInfo[arg1].field_512 * tokenPerBlock) + (10^12 * block.number * tokenPerBlock) / 10^12 * poolInfo[arg1].field_256 / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(msg.sender)].field_256:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][address(msg.sender)].field_0 < arg2:
            revert with 'NH{q', 17
        userInfo[arg1][address(msg.sender)].field_0 -= arg2
        if userInfo[arg1][address(msg.sender)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(msg.sender)].field_0:
            revert with 'NH{q', 17
        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(poolInfo[arg1].field_0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(arg2, msg.sender, arg1);
}



}
