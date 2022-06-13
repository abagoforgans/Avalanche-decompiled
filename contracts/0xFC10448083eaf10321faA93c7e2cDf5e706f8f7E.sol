contract main {




// =====================  Runtime code  =====================


#
#  - set(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - massUpdatePools()
#  - add(uint256 arg1, address arg2, bool arg3, uint256 arg4)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 2400 * 10^18


address operatorAddress;
address creamAddress;
address mimAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
uint256 sub_b7e3170d;
uint256 sub_943f013d;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_1024)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function operator() payable {
    return operatorAddress
}

function poolStartTime() payable {
    return poolStartTime
}

function sub_6e271dd5(?) payable {
    return sub_6e271dd5
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_943f013d(?) payable {
    return sub_943f013d
}

function mim() payable {
    return mimAddress
}

function cream() payable {
    return creamAddress
}

function sub_b7e3170d(?) payable {
    return sub_b7e3170d
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CreamGenesisPool: caller is not the operator'
    operatorAddress = arg1
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg1, 4, 'from', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, arg2, 2, 'to', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, poolStartTime, 5, 'start', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, sub_6e271dd5, 3, 'end', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, sub_b7e3170d, 3, 'cps', 0
    if arg1 >= arg2:
        return 0
    if arg2 < sub_6e271dd5:
        if arg2 <= poolStartTime:
            return 0
        if arg1 > poolStartTime:
            if arg2 < arg1:
                revert with 'NH{q', 17
            if arg2 - arg1 and sub_b7e3170d > -1 / arg2 - arg1:
                revert with 'NH{q', 17
            return ((arg2 * sub_b7e3170d) - (arg1 * sub_b7e3170d))
        if arg2 < poolStartTime:
            revert with 'NH{q', 17
        if arg2 - poolStartTime and sub_b7e3170d > -1 / arg2 - poolStartTime:
            revert with 'NH{q', 17
        return ((arg2 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if sub_6e271dd5 < arg1:
            revert with 'NH{q', 17
        if sub_6e271dd5 - arg1 and sub_b7e3170d > -1 / sub_6e271dd5 - arg1:
            revert with 'NH{q', 17
        return ((sub_6e271dd5 * sub_b7e3170d) - (arg1 * sub_b7e3170d))
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if sub_6e271dd5 - poolStartTime and sub_b7e3170d > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    return ((sub_6e271dd5 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d))
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if not poolInfo[arg1].field_1024:
                poolInfo[arg1].field_1024 = 1
                if totalAllocPoint > -poolInfo[arg1].field_256 - 1:
                    revert with 'NH{q', 17
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint > 0:
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, poolInfo[arg1].field_512, 4, 'from', 0
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, block.timestamp, 2, 'to', 0
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, poolStartTime, 5, 'start', 0
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_6e271dd5, 3, 'end', 0
                staticcall 'console.log'.0x9710a9d0 with:
                        gas gas_remaining wei
                       args 0, 64, sub_b7e3170d, 3, 'cps', 0
                if poolInfo[arg1].field_512 >= block.timestamp:
                    if False and poolInfo[arg1].field_256 > 0:
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            if False and poolInfo[arg1].field_256 > 0:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if block.timestamp < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if block.timestamp - poolInfo[arg1].field_512 and sub_b7e3170d > -1 / block.timestamp - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if block.timestamp < poolStartTime:
                                    revert with 'NH{q', 17
                                if block.timestamp - poolStartTime and sub_b7e3170d > -1 / block.timestamp - poolStartTime:
                                    revert with 'NH{q', 17
                                if (block.timestamp * sub_b7e3170d) - (poolStartTime * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_b7e3170d) - (poolStartTime * sub_b7e3170d):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= sub_6e271dd5:
                            if False and poolInfo[arg1].field_256 > 0:
                                revert with 'NH{q', 17
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not ext_call.return_data[0]:
                                revert with 'NH{q', 18
                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                revert with 'NH{q', 17
                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if sub_6e271dd5 < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if sub_6e271dd5 - poolInfo[arg1].field_512 and sub_b7e3170d > -1 / sub_6e271dd5 - poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if (sub_6e271dd5 * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if sub_6e271dd5 < poolStartTime:
                                    revert with 'NH{q', 17
                                if sub_6e271dd5 - poolStartTime and sub_b7e3170d > -1 / sub_6e271dd5 - poolStartTime:
                                    revert with 'NH{q', 17
                                if (sub_6e271dd5 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d):
                                    revert with 'NH{q', 17
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_b213f4a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, poolInfo[arg1].field_512, 4, 'from', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, block.timestamp, 2, 'to', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, poolStartTime, 5, 'start', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, sub_6e271dd5, 3, 'end', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 64, sub_b7e3170d, 3, 'cps', 0
    if poolInfo[arg1].field_512 >= block.timestamp:
        if False and poolInfo[arg1].field_256 > 0:
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if False and poolInfo[arg1].field_256 > 0:
                revert with 'NH{q', 17
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > poolStartTime:
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if block.timestamp - poolInfo[arg1].field_512 and sub_b7e3170d > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if (block.timestamp * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d):
                revert with 'NH{q', 17
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 'NH{q', 17
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.timestamp < poolStartTime:
            revert with 'NH{q', 17
        if block.timestamp - poolStartTime and sub_b7e3170d > -1 / block.timestamp - poolStartTime:
            revert with 'NH{q', 17
        if (block.timestamp * sub_b7e3170d) - (poolStartTime * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_b7e3170d) - (poolStartTime * sub_b7e3170d):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if False and poolInfo[arg1].field_256 > 0:
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > poolStartTime:
        if sub_6e271dd5 < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if sub_6e271dd5 - poolInfo[arg1].field_512 and sub_b7e3170d > -1 / sub_6e271dd5 - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if (sub_6e271dd5 * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_b7e3170d) - (poolInfo[arg1].field_512 * sub_b7e3170d):
            revert with 'NH{q', 17
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if sub_6e271dd5 - poolStartTime and sub_b7e3170d > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    if (sub_6e271dd5 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_b7e3170d) - (poolStartTime * sub_b7e3170d):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b7e3170d * poolInfo[arg1].field_256) - (poolStartTime * sub_b7e3170d * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}



}
