contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 4200 * 10^18


address operatorAddress;
address sub_1d02af44Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
uint256 sub_30ba5c53;
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

function sub_1d02af44(?) payable {
    return sub_1d02af44Address
}

function sub_30ba5c53(?) payable {
    return sub_30ba5c53
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

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KushGenesisPool: caller is not the operator'
    operatorAddress = arg1
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 >= arg2:
        return 0
    if arg2 < sub_6e271dd5:
        if arg2 <= poolStartTime:
            return 0
        if arg1 > poolStartTime:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < arg1:
                revert with 'NH{q', 17
            if not arg2 - arg1:
                return 0
            if arg2 - arg1 and sub_30ba5c53 > -1 / arg2 - arg1:
                revert with 'NH{q', 17
            if not arg2 - arg1:
                revert with 'NH{q', 18
            if (arg2 * sub_30ba5c53) - (arg1 * sub_30ba5c53) / arg2 - arg1 != sub_30ba5c53:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            return ((arg2 * sub_30ba5c53) - (arg1 * sub_30ba5c53))
        if poolStartTime > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < poolStartTime:
            revert with 'NH{q', 17
        if not arg2 - poolStartTime:
            return 0
        if arg2 - poolStartTime and sub_30ba5c53 > -1 / arg2 - poolStartTime:
            revert with 'NH{q', 17
        if not arg2 - poolStartTime:
            revert with 'NH{q', 18
        if (arg2 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / arg2 - poolStartTime != sub_30ba5c53:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((arg2 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if arg1 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_6e271dd5 < arg1:
            revert with 'NH{q', 17
        if not sub_6e271dd5 - arg1:
            return 0
        if sub_6e271dd5 - arg1 and sub_30ba5c53 > -1 / sub_6e271dd5 - arg1:
            revert with 'NH{q', 17
        if not sub_6e271dd5 - arg1:
            revert with 'NH{q', 18
        if (sub_6e271dd5 * sub_30ba5c53) - (arg1 * sub_30ba5c53) / sub_6e271dd5 - arg1 != sub_30ba5c53:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        return ((sub_6e271dd5 * sub_30ba5c53) - (arg1 * sub_30ba5c53))
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if not sub_6e271dd5 - poolStartTime:
        return 0
    if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    if not sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 18
    if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return ((sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53))
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
                if totalAllocPoint + poolInfo[arg1].field_256 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint > 0:
                if poolInfo[arg1].field_512 >= block.timestamp:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not 0 / totalAllocPoint:
                            revert with 'NH{q', 18
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not ext_call.return_data[0]:
                            revert with 'NH{q', 18
                        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                            revert with 'NH{q', 17
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not 0 / totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if not block.timestamp - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if block.timestamp - poolInfo[arg1].field_512 and sub_30ba5c53 > -1 / block.timestamp - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) / block.timestamp - poolInfo[arg1].field_512 != sub_30ba5c53:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                            revert with 'NH{q', 17
                                        if not (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if block.timestamp < poolStartTime:
                                    revert with 'NH{q', 17
                                if not block.timestamp - poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if block.timestamp - poolStartTime and sub_30ba5c53 > -1 / block.timestamp - poolStartTime:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolStartTime:
                                        revert with 'NH{q', 18
                                    if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / block.timestamp - poolStartTime != sub_30ba5c53:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            revert with 'NH{q', 17
                                        if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= sub_6e271dd5:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not 0 / totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not ext_call.return_data[0]:
                                    revert with 'NH{q', 18
                                if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6e271dd5 < poolInfo[arg1].field_512:
                                    revert with 'NH{q', 17
                                if not sub_6e271dd5 - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if sub_6e271dd5 - poolInfo[arg1].field_512 and sub_30ba5c53 > -1 / sub_6e271dd5 - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolInfo[arg1].field_512:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_30ba5c53:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                            revert with 'NH{q', 17
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6e271dd5 < poolStartTime:
                                    revert with 'NH{q', 17
                                if not sub_6e271dd5 - poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not ext_call.return_data[0]:
                                            revert with 'NH{q', 18
                                        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolStartTime:
                                        revert with 'NH{q', 18
                                    if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            revert with 'NH{q', 17
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[arg1].field_256:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not ext_call.return_data[0]:
                                                revert with 'NH{q', 18
                                            if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _419 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_419] == mem[_419]
            if mem[_419]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if not 0 / totalAllocPoint:
                            if mem[_419] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not mem[_419]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / mem[_419]
                        else:
                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not 0 / totalAllocPoint:
                                revert with 'NH{q', 18
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_419] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not mem[_419]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if not 0 / totalAllocPoint:
                                    if mem[_419] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_419]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / mem[_419]
                                else:
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not 0 / totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_419] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_419]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_419]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                    else:
                                        if block.timestamp - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / block.timestamp - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolInfo[idx].field_512:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / block.timestamp - poolInfo[idx].field_512 != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                        else:
                                            if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]
                                else:
                                    if poolStartTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < poolStartTime:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_419]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                    else:
                                        if block.timestamp - poolStartTime and sub_30ba5c53 > -1 / block.timestamp - poolStartTime:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolStartTime:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / block.timestamp - poolStartTime != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                        else:
                                            if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if not 0 / totalAllocPoint:
                                    if mem[_419] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_419]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / mem[_419]
                                else:
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not 0 / totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_419] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_419]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_6e271dd5 < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_419]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                    else:
                                        if sub_6e271dd5 - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolInfo[idx].field_512:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]
                                else:
                                    if poolStartTime > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_6e271dd5 < poolStartTime:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_419]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_419] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_419]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                    else:
                                        if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolStartTime:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_419]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_419]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_419] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_419]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_419]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KushGenesisPool: caller is not the operator'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _429 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_429] == mem[_429]
            if mem[_429]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        if not 0 / totalAllocPoint:
                            if mem[_429] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not mem[_429]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / mem[_429]
                        else:
                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                revert with 'NH{q', 17
                            if not 0 / totalAllocPoint:
                                revert with 'NH{q', 18
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_429] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not mem[_429]:
                                revert with 'NH{q', 18
                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                revert with 'NH{q', 17
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if not 0 / totalAllocPoint:
                                    if mem[_429] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_429]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / mem[_429]
                                else:
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not 0 / totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_429] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_429]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_429]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                    else:
                                        if block.timestamp - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / block.timestamp - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolInfo[idx].field_512:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / block.timestamp - poolInfo[idx].field_512 != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                        else:
                                            if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]
                                else:
                                    if poolStartTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if block.timestamp < poolStartTime:
                                        revert with 'NH{q', 17
                                    if not block.timestamp - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_429]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                    else:
                                        if block.timestamp - poolStartTime and sub_30ba5c53 > -1 / block.timestamp - poolStartTime:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolStartTime:
                                            revert with 'NH{q', 18
                                        if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / block.timestamp - poolStartTime != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                        else:
                                            if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    revert with 'NH{q', 18
                                if not 0 / totalAllocPoint:
                                    if mem[_429] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_429]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / mem[_429]
                                else:
                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                        revert with 'NH{q', 17
                                    if not 0 / totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    if mem[_429] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not mem[_429]:
                                        revert with 'NH{q', 18
                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                        revert with 'NH{q', 17
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_6e271dd5 < poolInfo[idx].field_512:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_429]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                    else:
                                        if sub_6e271dd5 - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolInfo[idx].field_512:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]
                                else:
                                    if poolStartTime > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if sub_6e271dd5 < poolStartTime:
                                        revert with 'NH{q', 17
                                    if not sub_6e271dd5 - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if not 0 / totalAllocPoint:
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / mem[_429]
                                        else:
                                            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                revert with 'NH{q', 17
                                            if not 0 / totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if mem[_429] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not mem[_429]:
                                                revert with 'NH{q', 18
                                            if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                revert with 'NH{q', 17
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                    else:
                                        if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolStartTime:
                                            revert with 'NH{q', 18
                                        if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_429]
                                        else:
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 17
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_429]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_429] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_429]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_429]
            poolInfo[idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if poolInfo[arg1].field_1024:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if totalAllocPoint < poolInfo[arg1].field_256:
            revert with 'NH{q', 17
        if totalAllocPoint - poolInfo[arg1].field_256 > -arg2 - 1:
            revert with 'NH{q', 17
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'KushGenesisPool: caller is not the operator'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'KushGenesisPool: existing pool?'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1358] == mem[_1358]
                if mem[_1358]:
                    if not poolInfo[idx].field_1024:
                        poolInfo[idx].field_1024 = 1
                        if totalAllocPoint > -poolInfo[idx].field_256 - 1:
                            revert with 'NH{q', 17
                        if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += poolInfo[idx].field_256
                    if totalAllocPoint > 0:
                        if poolInfo[idx].field_512 >= block.timestamp:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                revert with 'NH{q', 18
                            if not 0 / totalAllocPoint:
                                if mem[_1358] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1358]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / mem[_1358]
                            else:
                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                    revert with 'NH{q', 17
                                if not 0 / totalAllocPoint:
                                    revert with 'NH{q', 18
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_1358] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if not mem[_1358]:
                                    revert with 'NH{q', 18
                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                    revert with 'NH{q', 17
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                        else:
                            if block.timestamp < sub_6e271dd5:
                                if block.timestamp <= poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if mem[_1358] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not mem[_1358]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / mem[_1358]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if mem[_1358] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not mem[_1358]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_1358]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                        else:
                                            if block.timestamp - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / block.timestamp - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if not block.timestamp - poolInfo[idx].field_512:
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / block.timestamp - poolInfo[idx].field_512 != sub_30ba5c53:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not 0 / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                            else:
                                                if (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                    revert with 'NH{q', 18
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]
                                    else:
                                        if poolStartTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if block.timestamp < poolStartTime:
                                            revert with 'NH{q', 17
                                        if not block.timestamp - poolStartTime:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_1358]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                        else:
                                            if block.timestamp - poolStartTime and sub_30ba5c53 > -1 / block.timestamp - poolStartTime:
                                                revert with 'NH{q', 17
                                            if not block.timestamp - poolStartTime:
                                                revert with 'NH{q', 18
                                            if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / block.timestamp - poolStartTime != sub_30ba5c53:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not 0 / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                            else:
                                                if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                    revert with 'NH{q', 17
                                                if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                    revert with 'NH{q', 18
                                                if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]
                            else:
                                if poolInfo[idx].field_512 >= sub_6e271dd5:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        revert with 'NH{q', 18
                                    if not 0 / totalAllocPoint:
                                        if mem[_1358] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not mem[_1358]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / mem[_1358]
                                    else:
                                        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                            revert with 'NH{q', 17
                                        if not 0 / totalAllocPoint:
                                            revert with 'NH{q', 18
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        if mem[_1358] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not mem[_1358]:
                                            revert with 'NH{q', 18
                                        if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                            revert with 'NH{q', 17
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_6e271dd5 < poolInfo[idx].field_512:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_1358]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                        else:
                                            if sub_6e271dd5 - poolInfo[idx].field_512 and sub_30ba5c53 > -1 / sub_6e271dd5 - poolInfo[idx].field_512:
                                                revert with 'NH{q', 17
                                            if not sub_6e271dd5 - poolInfo[idx].field_512:
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_30ba5c53:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not 0 / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53):
                                                    revert with 'NH{q', 18
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[idx].field_512 * sub_30ba5c53) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]
                                    else:
                                        if poolStartTime > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if sub_6e271dd5 < poolStartTime:
                                            revert with 'NH{q', 17
                                        if not sub_6e271dd5 - poolStartTime:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if not totalAllocPoint:
                                                revert with 'NH{q', 18
                                            if not 0 / totalAllocPoint:
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / mem[_1358]
                                            else:
                                                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                    revert with 'NH{q', 17
                                                if not 0 / totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if mem[_1358] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not mem[_1358]:
                                                    revert with 'NH{q', 18
                                                if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                    revert with 'NH{q', 17
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                        else:
                                            if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
                                                revert with 'NH{q', 17
                                            if not sub_6e271dd5 - poolStartTime:
                                                revert with 'NH{q', 18
                                            if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not 0 / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not 0 / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * 0 / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / mem[_1358]
                                            else:
                                                if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[idx].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                    revert with 'NH{q', 17
                                                if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
                                                    revert with 'NH{q', 18
                                                if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[idx].field_256:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if not totalAllocPoint:
                                                    revert with 'NH{q', 18
                                                if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(0 / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (0 / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / mem[_1358]
                                                else:
                                                    if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 17
                                                    if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint:
                                                        revert with 'NH{q', 18
                                                    if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if mem[_1358] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if not mem[_1358]:
                                                        revert with 'NH{q', 18
                                                    if poolInfo[idx].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) - 1:
                                                        revert with 'NH{q', 17
                                                    if poolInfo[idx].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[idx].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[idx].field_256) / totalAllocPoint / mem[_1358]
                poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp >= poolStartTime:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = block.timestamp
            poolInfo[poolInfo.length].field_768 = 0
            if block.timestamp <= poolStartTime:
                poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= poolStartTime)
                if totalAllocPoint > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= block.timestamp)
                if block.timestamp <= block.timestamp:
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.timestamp:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = block.timestamp
                poolInfo[poolInfo.length].field_768 = 0
                if block.timestamp <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.timestamp <= block.timestamp)
                    if block.timestamp <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = poolStartTime
            poolInfo[poolInfo.length].field_768 = 0
            if poolStartTime <= poolStartTime:
                poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= poolStartTime)
                if totalAllocPoint > -arg1 - 1:
                    revert with 'NH{q', 17
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= block.timestamp)
                if poolStartTime <= block.timestamp:
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= poolStartTime:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = poolStartTime
                poolInfo[poolInfo.length].field_768 = 0
                if poolStartTime <= poolStartTime:
                    poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= poolStartTime)
                    if totalAllocPoint > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(poolStartTime <= block.timestamp)
                    if poolStartTime <= block.timestamp:
                        if totalAllocPoint > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}

function sub_e83f3a5b(?) payable {
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
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.timestamp:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not 0 / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > poolStartTime:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp < poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 'NH{q', 17
                        return -userInfo[arg1][address(arg2)].field_256
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                    revert with 'NH{q', 17
                if not 0 / totalAllocPoint:
                    revert with 'NH{q', 18
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if block.timestamp - poolInfo[arg1].field_512 and sub_30ba5c53 > -1 / block.timestamp - poolInfo[arg1].field_512:
                revert with 'NH{q', 17
            if not block.timestamp - poolInfo[arg1].field_512:
                revert with 'NH{q', 18
            if (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) / block.timestamp - poolInfo[arg1].field_512 != sub_30ba5c53:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 18
                    if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 < userInfo[arg1][address(arg2)].field_256:
                            revert with 'NH{q', 17
                        return -userInfo[arg1][address(arg2)].field_256
                    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 17
                    if not userInfo[arg1][address(arg2)].field_0:
                        revert with 'NH{q', 18
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                    revert with 'NH{q', 17
                if not 0 / totalAllocPoint:
                    revert with 'NH{q', 18
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                revert with 'NH{q', 17
            if not (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
                revert with 'NH{q', 18
            if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / (block.timestamp * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) != poolInfo[arg1].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 'NH{q', 17
            if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolStartTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp < poolStartTime:
            revert with 'NH{q', 17
        if not block.timestamp - poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if block.timestamp - poolStartTime and sub_30ba5c53 > -1 / block.timestamp - poolStartTime:
            revert with 'NH{q', 17
        if not block.timestamp - poolStartTime:
            revert with 'NH{q', 18
        if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / block.timestamp - poolStartTime != sub_30ba5c53:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
            revert with 'NH{q', 17
        if not (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
            revert with 'NH{q', 18
        if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / (block.timestamp * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not 0 / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > poolStartTime:
        if poolInfo[arg1].field_512 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_6e271dd5 < poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if not sub_6e271dd5 - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if sub_6e271dd5 - poolInfo[arg1].field_512 and sub_30ba5c53 > -1 / sub_6e271dd5 - poolInfo[arg1].field_512:
            revert with 'NH{q', 17
        if not sub_6e271dd5 - poolInfo[arg1].field_512:
            revert with 'NH{q', 18
        if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_30ba5c53:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not totalAllocPoint:
                revert with 'NH{q', 18
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < userInfo[arg1][address(arg2)].field_256:
                        revert with 'NH{q', 17
                    return -userInfo[arg1][address(arg2)].field_256
                if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 17
                if not userInfo[arg1][address(arg2)].field_0:
                    revert with 'NH{q', 18
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0, 'SafeMath: multiplication overflow'
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
                revert with 'NH{q', 17
            if not 0 / totalAllocPoint:
                revert with 'NH{q', 18
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
            revert with 'NH{q', 17
        if not (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53):
            revert with 'NH{q', 18
        if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolInfo[arg1].field_512 * sub_30ba5c53) != poolInfo[arg1].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 17
        if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_6e271dd5 < poolStartTime:
        revert with 'NH{q', 17
    if not sub_6e271dd5 - poolStartTime:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not 0 / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if sub_6e271dd5 - poolStartTime and sub_30ba5c53 > -1 / sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 17
    if not sub_6e271dd5 - poolStartTime:
        revert with 'NH{q', 18
    if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) / sub_6e271dd5 - poolStartTime != sub_30ba5c53:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not totalAllocPoint:
            revert with 'NH{q', 18
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 'NH{q', 18
            if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
                revert with 'NH{q', 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 'NH{q', 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 'NH{q', 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^18 > -1 / 0 / totalAllocPoint:
            revert with 'NH{q', 17
        if not 0 / totalAllocPoint:
            revert with 'NH{q', 18
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) and poolInfo[arg1].field_256 > -1 / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
        revert with 'NH{q', 17
    if not (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53):
        revert with 'NH{q', 18
    if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_30ba5c53) - (poolStartTime * sub_30ba5c53) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 'NH{q', 18
        if poolInfo[arg1].field_768 > -(0 / ext_call.return_data[0]) - 1:
            revert with 'NH{q', 17
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 'NH{q', 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint and 10^18 > -1 / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 18
    if 10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > -(10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) - 1:
        revert with 'NH{q', 17
    if poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        return -userInfo[arg1][address(arg2)].field_256
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_30ba5c53 * poolInfo[arg1].field_256) - (poolStartTime * sub_30ba5c53 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}



}
