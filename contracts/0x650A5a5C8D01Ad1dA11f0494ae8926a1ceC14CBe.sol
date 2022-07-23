contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address rewardsTokenAddress;
address devAddress;
address ecosystemAddress;
uint256 rewardsPerBlock;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 endBlock;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;

function ecosystemAddress() payable {
    return ecosystemAddress
}

function poolLength() payable {
    return poolInfo.length
}

function endBlock() payable {
    return endBlock
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function devAddress() payable {
    return devAddress
}

function startBlock() payable {
    return startBlock
}

function rewardsPerBlock() payable {
    return rewardsPerBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function rewardsToken() payable {
    return rewardsTokenAddress
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

function dev(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'dev: wut?'
    devAddress = arg1
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= endBlock:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg1 >= endBlock:
        return 0
    if endBlock < arg1:
        revert with 0, 17
    return (endBlock - arg1)
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

function pendingRewards(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= endBlock:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= endBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= endBlock:
        if False and rewardsPerBlock > 0:
            revert with 0, 17
        if False and poolInfo[arg1].field_256 > 0:
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if endBlock < poolInfo[arg1].field_512:
        revert with 0, 17
    if endBlock - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
        revert with 0, 17
    if (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if block.number <= endBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
            else:
                if poolInfo[arg1].field_512 <= endBlock:
                    if block.number <= endBlock:
                        if block.number < poolInfo[arg1].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= endBlock:
                            if False and rewardsPerBlock > 0:
                                revert with 0, 17
                            if False and poolInfo[arg1].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 2 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 2 * 0 / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args ecosystemAddress, 0 / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if endBlock < poolInfo[arg1].field_512:
                                revert with 0, 17
                            if endBlock - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
                                revert with 0, 17
                            if (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 2 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args ecosystemAddress, (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            poolInfo[arg1].field_768 += 10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
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
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _34 = mem[_33]
            if not mem[_33]:
                poolInfo[idx].field_512 = block.number
            else:
                if block.number <= endBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(rewardsTokenAddress)
                    call rewardsTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalAllocPoint:
                        revert with 0, 18
                    require ext_code.size(rewardsTokenAddress)
                    call rewardsTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    require ext_code.size(rewardsTokenAddress)
                    call rewardsTokenAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 0, 17
                    if not _34:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
                    poolInfo[idx].field_512 = block.number
                else:
                    if poolInfo[idx].field_512 <= endBlock:
                        if block.number <= endBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not _34:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
                        else:
                            if poolInfo[idx].field_512 >= endBlock:
                                if False and rewardsPerBlock > 0:
                                    revert with 0, 17
                                if False and poolInfo[idx].field_256 > 0:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if 0 / totalAllocPoint and 2 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 2 * 0 / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args ecosystemAddress, 0 / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = 0 / totalAllocPoint
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), 0 / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                    revert with 0, 17
                                if not _34:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _34):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _34
                            else:
                                if endBlock < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if endBlock - poolInfo[idx].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 2 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args ecosystemAddress, (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _34:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _34
                        poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
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
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _66 = mem[_55]
                if not mem[_55]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if block.number <= endBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _66:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 <= endBlock:
                            if block.number <= endBlock:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _66:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66
                            else:
                                if poolInfo[idx].field_512 >= endBlock:
                                    if False and rewardsPerBlock > 0:
                                        revert with 0, 17
                                    if False and poolInfo[idx].field_256 > 0:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if 0 / totalAllocPoint and 2 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 2 * 0 / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args ecosystemAddress, 0 / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not _66:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _66):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _66
                                else:
                                    if endBlock < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if endBlock - poolInfo[idx].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 2 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args ecosystemAddress, (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not _66:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _66
                            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
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
                _40 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _41 = mem[_40]
                if not mem[_40]:
                    poolInfo[idx].field_512 = block.number
                else:
                    if block.number <= endBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not _41:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                        poolInfo[idx].field_512 = block.number
                    else:
                        if poolInfo[idx].field_512 <= endBlock:
                            if block.number <= endBlock:
                                if block.number < poolInfo[idx].field_512:
                                    revert with 0, 17
                                if block.number - poolInfo[idx].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[idx].field_512:
                                    revert with 0, 17
                                if (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if not totalAllocPoint:
                                    revert with 0, 18
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = this.address
                                mem[mem[64] + 36] = (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                require ext_code.size(rewardsTokenAddress)
                                call rewardsTokenAddress.0x40c10f19 with:
                                     gas gas_remaining wei
                                    args address(this.address), (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                    revert with 0, 17
                                if not _41:
                                    revert with 0, 18
                                if poolInfo[idx].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                                    revert with 0, 17
                                poolInfo[idx].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                            else:
                                if poolInfo[idx].field_512 >= endBlock:
                                    if False and rewardsPerBlock > 0:
                                        revert with 0, 17
                                    if False and poolInfo[idx].field_256 > 0:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if 0 / totalAllocPoint and 2 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 2 * 0 / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args ecosystemAddress, 0 / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = 0 / totalAllocPoint
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), 0 / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                        revert with 0, 17
                                    if not _41:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _41):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _41
                                else:
                                    if endBlock < poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if endBlock - poolInfo[idx].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[idx].field_512:
                                        revert with 0, 17
                                    if (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock) and poolInfo[idx].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[idx].field_512 * rewardsPerBlock):
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 2 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args devAddress, 2 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if not totalAllocPoint:
                                        revert with 0, 18
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args ecosystemAddress, (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = this.address
                                    mem[mem[64] + 36] = (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    require ext_code.size(rewardsTokenAddress)
                                    call rewardsTokenAddress.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args address(this.address), (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint:
                                        revert with 0, 17
                                    if not _41:
                                        revert with 0, 18
                                    if poolInfo[idx].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41):
                                        revert with 0, 17
                                    poolInfo[idx].field_768 += 10^12 * (endBlock * rewardsPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardsPerBlock * poolInfo[idx].field_256) / totalAllocPoint / _41
                            poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[100] = this.address
        require ext_code.size(rewardsTokenAddress)
        staticcall rewardsTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.number
        else:
            if block.number <= endBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not totalAllocPoint:
                    revert with 0, 18
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 132] = (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                require ext_code.size(rewardsTokenAddress)
                call rewardsTokenAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(this.address), (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[arg1].field_512 = block.number
            else:
                if poolInfo[arg1].field_512 <= endBlock:
                    if block.number <= endBlock:
                        if block.number < poolInfo[arg1].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / block.number - poolInfo[arg1].field_512:
                            revert with 0, 17
                        if (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (block.number * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args devAddress, 2 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not totalAllocPoint:
                            revert with 0, 18
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args ecosystemAddress, (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 132] = (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        require ext_code.size(rewardsTokenAddress)
                        call rewardsTokenAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(this.address), (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if poolInfo[arg1].field_768 > !(10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        poolInfo[arg1].field_768 += 10^12 * (block.number * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= endBlock:
                            if False and rewardsPerBlock > 0:
                                revert with 0, 17
                            if False and poolInfo[arg1].field_256 > 0:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if 0 / totalAllocPoint and 2 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 2 * 0 / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args ecosystemAddress, 0 / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = 0 / totalAllocPoint
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), 0 / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if endBlock < poolInfo[arg1].field_512:
                                revert with 0, 17
                            if endBlock - poolInfo[arg1].field_512 and rewardsPerBlock > -1 / endBlock - poolInfo[arg1].field_512:
                                revert with 0, 17
                            if (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock) and poolInfo[arg1].field_256 > -1 / (endBlock * rewardsPerBlock) - (poolInfo[arg1].field_512 * rewardsPerBlock):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 2 > -1 / (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args devAddress, 2 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not totalAllocPoint:
                                revert with 0, 18
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args ecosystemAddress, (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 132] = (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            require ext_code.size(rewardsTokenAddress)
                            call rewardsTokenAddress.0x40c10f19 with:
                                 gas gas_remaining wei
                                args address(this.address), (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not ext_call.return_data[0]:
                                revert with 0, 18
                            if poolInfo[arg1].field_768 > !(10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            poolInfo[arg1].field_768 += 10^12 * (endBlock * rewardsPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardsPerBlock * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.number
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(rewardsTokenAddress)
        staticcall rewardsTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(rewardsTokenAddress)
            call rewardsTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 - arg2 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0 - arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) - (arg2 * poolInfo[arg1].field_768) / 10^12
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
    emit Withdraw(arg2, msg.sender, arg1);
    stor1 = 1
}



}
