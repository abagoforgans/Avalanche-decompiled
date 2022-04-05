contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFor(uint256 arg1, uint256 arg2, address arg3)
#  - emergencyWithdraw(uint256 arg1)
#  - depositFor(uint256 arg1, uint256 arg2, address arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address expAddress;
address devaddr;
uint256 expPerBlock;
uint256 devFundDivRate;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 bonusEndBlock;

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

function startBlock() payable {
    return startBlock
}

function devFundDivRate() payable {
    return devFundDivRate
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

function expPerBlock() payable {
    return expPerBlock
}

function exp() payable {
    return expAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devaddr != msg.sender:
        revert with 0, 'dev: wut?'
    devaddr = arg1
}

function setExpPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!expPerBlock-0'
    expPerBlock = arg1
}

function setDevFundDivRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, '!devFundDivRate-0'
    devFundDivRate = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if bonusEndBlock > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    return (-arg1 + arg2)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
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
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(expAddress)
                    call expAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(expAddress)
                    call expAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
                        if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
                            if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < bonusEndBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    if not -poolInfo[arg1].field_512 + block.number:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require -poolInfo[arg1].field_512 + block.number
                        if (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[arg1].field_512 + block.number != expPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock)
                            if (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _194 = mem[_193]
            require mem[_193] == mem[_193]
            if mem[_193]:
                if block.number <= bonusEndBlock:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = 0 / totalAllocPoint
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if _194 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require _194
                            if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / _194
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if _194 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require _194
                            if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _194
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                        else:
                            require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                            if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _194
                            else:
                                require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _194
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _194
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                            else:
                                require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _194
                                else:
                                    require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194
                    else:
                        if bonusEndBlock > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if poolInfo[idx].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if block.number < bonusEndBlock:
                            revert with 0, 'SafeMath: addition overflow'
                        if not -poolInfo[idx].field_512 + block.number:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _194
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _194 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _194
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                        else:
                            require -poolInfo[idx].field_512 + block.number
                            if (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[idx].field_512 + block.number != expPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _194
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _194
                            else:
                                require (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock)
                                if (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (0 / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _194
                                else:
                                    require (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _194 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _194
                                    if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _194
            poolInfo[idx].field_512 = block.number
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
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_212]
                require mem[_212] == mem[_212]
                if mem[_212]:
                    if block.number <= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _214 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _214
                                if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _214
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _214 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _214
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _214
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                            else:
                                require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _214
                                else:
                                    require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _214
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _214
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                                else:
                                    require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                    if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _214
                                    else:
                                        require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214
                        else:
                            if bonusEndBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < bonusEndBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if not -poolInfo[idx].field_512 + block.number:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _214
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _214 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _214
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                            else:
                                require -poolInfo[idx].field_512 + block.number
                                if (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[idx].field_512 + block.number != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _214
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _214
                                else:
                                    require (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock)
                                    if (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (0 / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _214
                                    else:
                                        require (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _214 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _214
                                        if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _214
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    require arg1 < poolInfo.length
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
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _244 = mem[_243]
                require mem[_243] == mem[_243]
                if mem[_243]:
                    if block.number <= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _244 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _244
                                if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _244
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _244 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _244
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _244
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                            else:
                                require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _244
                                else:
                                    require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _244
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _244
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                                else:
                                    require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                    if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _244
                                    else:
                                        require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244
                        else:
                            if bonusEndBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < bonusEndBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if not -poolInfo[idx].field_512 + block.number:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _244
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _244 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _244
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                            else:
                                require -poolInfo[idx].field_512 + block.number
                                if (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[idx].field_512 + block.number != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _244
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _244
                                else:
                                    require (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock)
                                    if (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (0 / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _244
                                    else:
                                        require (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _244 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _244
                                        if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _244
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
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

function pendingExp(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
        if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if poolInfo[arg1].field_512 > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require block.number - poolInfo[arg1].field_512
        if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
        if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if bonusEndBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if poolInfo[arg1].field_512 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number < bonusEndBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not -poolInfo[arg1].field_512 + block.number:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require -poolInfo[arg1].field_512 + block.number
    if (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[arg1].field_512 + block.number != expPerBlock:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock)
    if (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    require (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0, 'withdraw: not good'
    require arg1 < poolInfo.length
    if block.number <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[100] = this.address
            require ext_code.size(expAddress)
            staticcall expAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[ceil32(return_data.size) + 100] = msg.sender
            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 132] = -userInfo[arg1][address(msg.sender)].field_256
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
            else:
                mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(ext_call.return_data[0], msg.sender, arg1);
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[100] = this.address
            require ext_code.size(expAddress)
            staticcall expAddress.0x70a08231 with:
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
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
            else:
                mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(ext_call.return_data[0], msg.sender, arg1);
        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(msg.sender)].field_0 -= arg2
        if not userInfo[arg1][address(msg.sender)].field_0:
            userInfo[arg1][address(msg.sender)].field_256 = 0
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
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
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if devFundDivRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require devFundDivRate
                    require ext_code.size(expAddress)
                    call expAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                    require ext_code.size(expAddress)
                    call expAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    require block.number - poolInfo[arg1].field_512
                    if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
                        if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 132] = (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if poolInfo[arg1].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[arg1].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[arg1].field_512
                        if (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) / block.number - poolInfo[arg1].field_512 != expPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock)
                            if (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / (block.number * expPerBlock) - (poolInfo[arg1].field_512 * expPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if bonusEndBlock > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number < bonusEndBlock:
                        revert with 0, 'SafeMath: addition overflow'
                    if not -poolInfo[arg1].field_512 + block.number:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if devFundDivRate <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require devFundDivRate
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devaddr, 0 / totalAllocPoint / devFundDivRate
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                        require ext_code.size(expAddress)
                        call expAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require -poolInfo[arg1].field_512 + block.number
                        if (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[arg1].field_512 + block.number != expPerBlock:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock)
                            if (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / (-1 * poolInfo[arg1].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[arg1].field_256:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                                if 10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_768 + (10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^12 * (-1 * poolInfo[arg1].field_512 * expPerBlock * poolInfo[arg1].field_256) + (block.number * expPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
        if not userInfo[arg1][address(msg.sender)].field_0:
            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(expAddress)
            staticcall expAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
            if -userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 132] = -userInfo[arg1][address(msg.sender)].field_256
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(-userInfo[arg1][address(msg.sender)].field_256, msg.sender, arg1);
            else:
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(ext_call.return_data[0], msg.sender, arg1);
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(expAddress)
            staticcall expAddress.0x70a08231 with:
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
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(((userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(msg.sender)].field_256), msg.sender, arg1);
            else:
                mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
                require ext_code.size(expAddress)
                call expAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit Claim(ext_call.return_data[0], msg.sender, arg1);
        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(msg.sender)].field_0 -= arg2
        if not userInfo[arg1][address(msg.sender)].field_0:
            userInfo[arg1][address(msg.sender)].field_256 = 0
        else:
            require userInfo[arg1][address(msg.sender)].field_0
            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: multiplication overflow'
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

function setMany(uint256[] arg1, uint256[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, '!same length'
    if not arg3:
        idx = 0
        s = totalAllocPoint
        while idx < arg1.length:
            require idx < arg2.length
            require idx < arg1.length
            require mem[(32 * idx) + 128] < poolInfo.length
            if poolInfo[mem[(32 * idx) + 128]].field_256 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[(32 * idx) + (32 * arg1.length) + 160] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require idx < arg2.length
            require idx < arg1.length
            require mem[(32 * idx) + 128] < poolInfo.length
            mem[0] = 5
            poolInfo[mem[(32 * idx) + 128]].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s - poolInfo[mem[(32 * idx) + 128]].field_256 + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        totalAllocPoint = totalAllocPoint + (totalAllocPoint * arg1.length) + (totalAllocPoint * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (totalAllocPoint * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length) + (s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length)
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 5
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _705 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _712 = mem[_705]
                require mem[_705] == mem[_705]
                if mem[_705]:
                    if block.number <= bonusEndBlock:
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if devFundDivRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require devFundDivRate
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devaddr, 0 / totalAllocPoint / devFundDivRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = 0 / totalAllocPoint
                            require ext_code.size(expAddress)
                            call expAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not 0 / totalAllocPoint:
                                if _712 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _712
                                if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / _712
                            else:
                                require 0 / totalAllocPoint
                                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if _712 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require _712
                                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _712
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                            else:
                                require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _712
                                else:
                                    require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _712
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) / block.number - poolInfo[idx].field_512 != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _712
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                                else:
                                    require (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock)
                                    if (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / (block.number * expPerBlock) - (poolInfo[idx].field_512 * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _712
                                    else:
                                        require (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (block.number * expPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712
                        else:
                            if bonusEndBlock > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > bonusEndBlock:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if block.number < bonusEndBlock:
                                revert with 0, 'SafeMath: addition overflow'
                            if not -poolInfo[idx].field_512 + block.number:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if devFundDivRate <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require devFundDivRate
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devaddr, 0 / totalAllocPoint / devFundDivRate
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(expAddress)
                                call expAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not 0 / totalAllocPoint:
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / _712
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if _712 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require _712
                                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                            else:
                                require -poolInfo[idx].field_512 + block.number
                                if (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) / -poolInfo[idx].field_512 + block.number != expPerBlock:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if not (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, 0 / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not 0 / totalAllocPoint:
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _712
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _712
                                else:
                                    require (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock)
                                    if (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / (-1 * poolInfo[idx].field_512 * expPerBlock) + (block.number * expPerBlock) != poolInfo[idx].field_256:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if devFundDivRate <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require devFundDivRate
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devaddr, (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / devFundDivRate
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(expAddress)
                                    call expAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (0 / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / _712
                                    else:
                                        require (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if _712 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require _712
                                        if poolInfo[idx].field_768 + (10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^12 * (-1 * poolInfo[idx].field_512 * expPerBlock * poolInfo[idx].field_256) + (block.number * expPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _712
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
        idx = 0
        s = totalAllocPoint
        while idx < mem[96]:
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            require mem[(32 * idx) + 128] < poolInfo.length
            if poolInfo[mem[(32 * idx) + 128]].field_256 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            if mem[(32 * idx) + (32 * arg1.length) + 160] < 0:
                revert with 0, 'SafeMath: addition overflow'
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[96]
            require mem[(32 * idx) + 128] < poolInfo.length
            mem[0] = 5
            poolInfo[mem[(32 * idx) + 128]].field_256 = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s - poolInfo[mem[(32 * idx) + 128]].field_256 + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        totalAllocPoint = totalAllocPoint + (totalAllocPoint * mem[96]) + (totalAllocPoint * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (totalAllocPoint * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96]) + (s * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96] * mem[96])
}



}
