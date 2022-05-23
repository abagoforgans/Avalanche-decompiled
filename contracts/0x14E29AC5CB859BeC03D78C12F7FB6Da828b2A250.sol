contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - massUpdatePools()
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 11000 * 10^18


address operatorAddress;
address frostAddress;
address sub_d7639147Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
uint256 sub_6a3ebfac;
uint256 sub_943f013d;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_6a3ebfac(?) payable {
    return sub_6a3ebfac
}

function sub_6e271dd5(?) payable {
    return sub_6e271dd5
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_943f013d(?) payable {
    return sub_943f013d
}

function sub_d7639147(?) payable {
    return sub_d7639147Address
}

function frost() payable {
    return frostAddress
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe46726f737447656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[208 len 20]
    operatorAddress = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= arg2:
        return 0
    if arg2 < sub_6e271dd5:
        if arg2 <= poolStartTime:
            return 0
        if arg1 > poolStartTime:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2 - arg1:
                return 0
            if (arg2 * sub_6a3ebfac) - (arg1 * sub_6a3ebfac) / arg2 - arg1 != sub_6a3ebfac:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return ((arg2 * sub_6a3ebfac) - (arg1 * sub_6a3ebfac))
        if poolStartTime > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - poolStartTime:
            return 0
        if (arg2 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / arg2 - poolStartTime != sub_6a3ebfac:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((arg2 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if arg1 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - arg1:
            return 0
        if (sub_6e271dd5 * sub_6a3ebfac) - (arg1 * sub_6a3ebfac) / sub_6e271dd5 - arg1 != sub_6a3ebfac:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return ((sub_6e271dd5 * sub_6a3ebfac) - (arg1 * sub_6a3ebfac))
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        return 0
    if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac))
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe46726f737447656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[208 len 20]
    if block.timestamp >= sub_6e271dd5 + (2160 * 24 * 3600):
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    else:
        if frostAddress == arg1:
            revert with 0, 'frost'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if poolInfo[idx].field_0 == arg1:
                revert with 0, 'pool.token'
            idx = idx + 1
            continue 
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not poolInfo[arg1].field_1024:
                poolInfo[arg1].field_1024 = 1
                if poolInfo[arg1].field_256 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint:
                if poolInfo[arg1].field_512 >= block.timestamp:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[arg1].field_512:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[arg1].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolStartTime:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= sub_6e271dd5:
                            if not totalAllocPoint:
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / totalAllocPoint:
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolInfo[arg1].field_512:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolStartTime:
                                    if not totalAllocPoint:
                                        revert with 0, 'SafeMath: division by zero'
                                    if not 0 / totalAllocPoint:
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: division by zero'
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not 0 / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[arg1].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if not totalAllocPoint:
                                            revert with 0, 'SafeMath: division by zero'
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeMath: division by zero'
                                            if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function sub_b2ea5583(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.timestamp:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > poolStartTime:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[arg1].field_512 != sub_6a3ebfac:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac):
                if not totalAllocPoint:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / totalAllocPoint:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) != poolInfo[arg1].field_256:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolStartTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolStartTime:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > poolStartTime:
        if poolInfo[arg1].field_512 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - poolInfo[arg1].field_512:
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_6a3ebfac:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac):
            if not totalAllocPoint:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / totalAllocPoint:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[arg1].field_512 * sub_6a3ebfac) != poolInfo[arg1].field_256:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[arg1].field_256:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero'
    if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[arg1].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function set(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe46726f737447656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[208 len 20]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if poolInfo[idx].field_1024:
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.timestamp:
                _1411 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1411] = 26
                mem[_1411 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1411 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 26
                        mem[_1532 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1532 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1543] = 26
                        mem[_1543 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1543 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.timestamp < sub_6e271dd5:
                    if block.timestamp <= poolStartTime:
                        _1424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1424] = 26
                        mem[_1424 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1424 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1555 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1555] = 26
                                mem[_1555 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1555 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1572 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1572] = 26
                                mem[_1572 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1572 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > poolStartTime:
                            _1395 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1395] = 30
                            mem[_1395 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.timestamp:
                                _1399 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1399 + 68] = mem[idx + _1395 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1399 + 68] = mem[_1399 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1399 + -mem[64] + 100
                            if not block.timestamp - poolInfo[idx].field_512:
                                _1551 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1551] = 26
                                mem[_1551 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1551 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1954 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1954] = 26
                                        mem[_1954 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1954 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2002] = 26
                                        mem[_2002 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2002 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[idx].field_512 != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                    _1570 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1570] = 26
                                    mem[_1570 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1570 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2001 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2001] = 26
                                            mem[_2001 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2001 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2046 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2046] = 26
                                            mem[_2046 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2046 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1584 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1584] = 26
                                    mem[_1584 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1584 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2045 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2045] = 26
                                            mem[_2045 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2045 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2083 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2083] = 26
                                            mem[_2083 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2083 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1396 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1396] = 30
                            mem[_1396 + 32] = 'SafeMath: subtraction overflow'
                            if poolStartTime > block.timestamp:
                                _1402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1402 + 68] = mem[idx + _1396 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1402 + 68] = mem[_1402 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1402 + -mem[64] + 100
                            if not block.timestamp - poolStartTime:
                                _1554 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1554] = 26
                                mem[_1554 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1554 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1957 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1957] = 26
                                        mem[_1957 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1957 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2006 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2006] = 26
                                        mem[_2006 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2006 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                    _1571 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1571] = 26
                                    mem[_1571 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1571 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2005] = 26
                                            mem[_2005 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2005 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2051 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2051] = 26
                                            mem[_2051 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2051 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1588 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1588] = 26
                                    mem[_1588 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1588 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2050 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2050] = 26
                                            mem[_2050 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2050 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2091 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2091] = 26
                                            mem[_2091 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2091 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= sub_6e271dd5:
                        _1429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1429] = 26
                        mem[_1429 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1429 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1562 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1562] = 26
                                mem[_1562 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1562 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1575 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1575] = 26
                                mem[_1575 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1575 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > poolStartTime:
                            _1397 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1397] = 30
                            mem[_1397 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > sub_6e271dd5:
                                _1405 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1405 + 68] = mem[idx + _1397 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1405 + 68] = mem[_1405 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1405 + -mem[64] + 100
                            if not sub_6e271dd5 - poolInfo[idx].field_512:
                                _1558 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1558] = 26
                                mem[_1558 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1558 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1960 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1960] = 26
                                        mem[_1960 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1960 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2010 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2010] = 26
                                        mem[_2010 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2010 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                    _1573 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1573] = 26
                                    mem[_1573 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1573 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2009 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2009] = 26
                                            mem[_2009 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2009 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2056 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2056] = 26
                                            mem[_2056 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2056 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1595 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1595] = 26
                                    mem[_1595 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1595 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2055 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2055] = 26
                                            mem[_2055 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2055 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2099 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2099] = 26
                                            mem[_2099 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2099 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1398 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1398] = 30
                            mem[_1398 + 32] = 'SafeMath: subtraction overflow'
                            if poolStartTime > sub_6e271dd5:
                                _1408 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1408 + 68] = mem[idx + _1398 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1408 + 68] = mem[_1408 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1408 + -mem[64] + 100
                            if not sub_6e271dd5 - poolStartTime:
                                _1561 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1561] = 26
                                mem[_1561 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1561 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _1963 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1963] = 26
                                        mem[_1963 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1963 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2014 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2014] = 26
                                        mem[_2014 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2014 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                    _1574 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1574] = 26
                                    mem[_1574 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1574 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2013 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2013] = 26
                                            mem[_2013 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2013 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2061 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2061] = 26
                                            mem[_2061 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2061 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1599 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1599] = 26
                                    mem[_1599 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1599 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2060 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2060] = 26
                                            mem[_2060 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2060 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2107 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2107] = 26
                                            mem[_2107 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2107 + 32]
                                                idx = idx + 32
                                                continue 
        else:
            poolInfo[idx].field_1024 = 1
            if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                revert with 0, 'SafeMath: addition overflow'
            totalAllocPoint += poolInfo[idx].field_256
            if not totalAllocPoint:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if poolInfo[idx].field_512 >= block.timestamp:
                _1458 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1458] = 26
                mem[_1458 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _1458 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _1609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1609] = 26
                        mem[_1609 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1609 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1642 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1642] = 26
                        mem[_1642 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1642 + 32]
                            idx = idx + 32
                            continue 
            else:
                if block.timestamp < sub_6e271dd5:
                    if block.timestamp <= poolStartTime:
                        _1485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1485] = 26
                        mem[_1485 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1485 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1683 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1683] = 26
                                mem[_1683 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1683 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1729 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1729] = 26
                                mem[_1729 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1729 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > poolStartTime:
                            _1416 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1416] = 30
                            mem[_1416 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > block.timestamp:
                                _1438 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1438 + 68] = mem[idx + _1416 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1438 + 68] = mem[_1438 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1438 + -mem[64] + 100
                            if not block.timestamp - poolInfo[idx].field_512:
                                _1679 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1679] = 26
                                mem[_1679 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1679 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2169 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2169] = 26
                                        mem[_2169 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2169 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2226 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2226] = 26
                                        mem[_2226 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2226 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[idx].field_512 != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                    _1727 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1727] = 26
                                    mem[_1727 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1727 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2225 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2225] = 26
                                            mem[_2225 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2225 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2284 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2284] = 26
                                            mem[_2284 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2284 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1772 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1772] = 26
                                    mem[_1772 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1772 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2283 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2283] = 26
                                            mem[_2283 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2283 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2355 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2355] = 26
                                            mem[_2355 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2355 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1417 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1417] = 30
                            mem[_1417 + 32] = 'SafeMath: subtraction overflow'
                            if poolStartTime > block.timestamp:
                                _1441 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1441 + 68] = mem[idx + _1417 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1441 + 68] = mem[_1441 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1441 + -mem[64] + 100
                            if not block.timestamp - poolStartTime:
                                _1682 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1682] = 26
                                mem[_1682 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1682 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2172 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2172] = 26
                                        mem[_2172 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2172 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2230 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2230] = 26
                                        mem[_2230 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2230 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                    _1728 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1728] = 26
                                    mem[_1728 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1728 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2229 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2229] = 26
                                            mem[_2229 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2229 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2289 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2289] = 26
                                            mem[_2289 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2289 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1776 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1776] = 26
                                    mem[_1776 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1776 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2288 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2288] = 26
                                            mem[_2288 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2288 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2363 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2363] = 26
                                            mem[_2363 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2363 + 32]
                                                idx = idx + 32
                                                continue 
                else:
                    if poolInfo[idx].field_512 >= sub_6e271dd5:
                        _1490 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1490] = 26
                        mem[_1490 + 32] = 'SafeMath: division by zero'
                        if not totalAllocPoint:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1490 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if not 0 / totalAllocPoint:
                                _1690 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1690] = 26
                                mem[_1690 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1690 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1732 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1732] = 26
                                mem[_1732 + 32] = 'SafeMath: division by zero'
                                if ext_call.return_data[0]:
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    poolInfo[idx].field_512 = block.timestamp
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1732 + 32]
                                    idx = idx + 32
                                    continue 
                    else:
                        if poolInfo[idx].field_512 > poolStartTime:
                            _1418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1418] = 30
                            mem[_1418 + 32] = 'SafeMath: subtraction overflow'
                            if poolInfo[idx].field_512 > sub_6e271dd5:
                                _1444 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1444 + 68] = mem[idx + _1418 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1444 + 68] = mem[_1444 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1444 + -mem[64] + 100
                            if not sub_6e271dd5 - poolInfo[idx].field_512:
                                _1686 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1686] = 26
                                mem[_1686 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1686 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2175 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2175] = 26
                                        mem[_2175 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2175 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2234 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2234] = 26
                                        mem[_2234 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2234 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                    _1730 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1730] = 26
                                    mem[_1730 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1730 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2233 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2233] = 26
                                            mem[_2233 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2233 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2294 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2294] = 26
                                            mem[_2294 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2294 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1783 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1783] = 26
                                    mem[_1783 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1783 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2293 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2293] = 26
                                            mem[_2293 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2293 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2371 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2371] = 26
                                            mem[_2371 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2371 + 32]
                                                idx = idx + 32
                                                continue 
                        else:
                            _1419 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1419] = 30
                            mem[_1419 + 32] = 'SafeMath: subtraction overflow'
                            if poolStartTime > sub_6e271dd5:
                                _1447 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1447 + 68] = mem[idx + _1419 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1447 + 68] = mem[_1447 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1447 + -mem[64] + 100
                            if not sub_6e271dd5 - poolStartTime:
                                _1689 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1689] = 26
                                mem[_1689 + 32] = 'SafeMath: division by zero'
                                if not totalAllocPoint:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1689 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if not 0 / totalAllocPoint:
                                        _2178 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2178] = 26
                                        mem[_2178 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2178 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _2238 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_2238] = 26
                                        mem[_2238 + 32] = 'SafeMath: division by zero'
                                        if ext_call.return_data[0]:
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.timestamp
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2238 + 32]
                                            idx = idx + 32
                                            continue 
                            else:
                                if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                    _1731 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1731] = 26
                                    mem[_1731 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1731 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _2237 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2237] = 26
                                            mem[_2237 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2237 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2299 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2299] = 26
                                            mem[_2299 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2299 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1787 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1787] = 26
                                    mem[_1787 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1787 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                            _2298 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2298] = 26
                                            mem[_2298 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2298 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _2379 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_2379] = 26
                                            mem[_2379 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _2379 + 32]
                                                idx = idx + 32
                                                continue 
        revert with 0, 'SafeMath: division by zero'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe46726f737447656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[208 len 20]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'FrostGenesisPool: existing pool?'
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp <= poolInfo[idx].field_512:
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            if poolInfo[idx].field_1024:
                if not totalAllocPoint:
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_512 >= block.timestamp:
                    _3238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3238] = 26
                    mem[_3238 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3238 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _3359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3359] = 26
                            mem[_3359 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.timestamp
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3359 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3370 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3370] = 26
                            mem[_3370 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.timestamp
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3370 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            _3251 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3251] = 26
                            mem[_3251 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3251 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3382 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3382] = 26
                                    mem[_3382 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3382 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3399 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3399] = 26
                                    mem[_3399 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3399 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > poolStartTime:
                                _3222 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3222] = 30
                                mem[_3222 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.timestamp:
                                    _3226 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3226 + 68] = mem[idx + _3222 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3226 + 68] = mem[_3226 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3226 + -mem[64] + 100
                                if not block.timestamp - poolInfo[idx].field_512:
                                    _3378 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3378] = 26
                                    mem[_3378 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3378 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3781 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3781] = 26
                                            mem[_3781 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3781 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3829 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3829] = 26
                                            mem[_3829 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3829 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[idx].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                        _3397 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3397] = 26
                                        mem[_3397 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3397 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3828 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3828] = 26
                                                mem[_3828 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3828 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3873 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3873] = 26
                                                mem[_3873 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3873 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3411 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3411] = 26
                                        mem[_3411 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3411 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3872 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3872] = 26
                                                mem[_3872 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3872 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3910 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3910] = 26
                                                mem[_3910 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3910 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3223 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3223] = 30
                                mem[_3223 + 32] = 'SafeMath: subtraction overflow'
                                if poolStartTime > block.timestamp:
                                    _3229 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3229 + 68] = mem[idx + _3223 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3229 + 68] = mem[_3229 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3229 + -mem[64] + 100
                                if not block.timestamp - poolStartTime:
                                    _3381 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3381] = 26
                                    mem[_3381 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3381 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3784 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3784] = 26
                                            mem[_3784 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3784 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3833 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3833] = 26
                                            mem[_3833 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3833 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        _3398 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3398] = 26
                                        mem[_3398 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3398 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3832 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3832] = 26
                                                mem[_3832 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3832 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3878 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3878] = 26
                                                mem[_3878 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3878 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3415 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3415] = 26
                                        mem[_3415 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3415 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3877 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3877] = 26
                                                mem[_3877 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3877 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3918 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3918] = 26
                                                mem[_3918 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3918 + 32]
                                                    idx = idx + 32
                                                    continue 
                    else:
                        if poolInfo[idx].field_512 >= sub_6e271dd5:
                            _3256 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3256] = 26
                            mem[_3256 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3256 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3389 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3389] = 26
                                    mem[_3389 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3389 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3402 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3402] = 26
                                    mem[_3402 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3402 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > poolStartTime:
                                _3224 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3224] = 30
                                mem[_3224 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > sub_6e271dd5:
                                    _3232 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3232 + 68] = mem[idx + _3224 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3232 + 68] = mem[_3232 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3232 + -mem[64] + 100
                                if not sub_6e271dd5 - poolInfo[idx].field_512:
                                    _3385 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3385] = 26
                                    mem[_3385 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3385 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3787 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3787] = 26
                                            mem[_3787 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3787 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3837 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3837] = 26
                                            mem[_3837 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3837 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                        _3400 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3400] = 26
                                        mem[_3400 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3400 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3836 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3836] = 26
                                                mem[_3836 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3836 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3883 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3883] = 26
                                                mem[_3883 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3883 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3422 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3422] = 26
                                        mem[_3422 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3422 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3882 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3882] = 26
                                                mem[_3882 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3882 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3926 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3926] = 26
                                                mem[_3926 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3926 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3225 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3225] = 30
                                mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                                if poolStartTime > sub_6e271dd5:
                                    _3235 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3235 + 68] = mem[idx + _3225 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3235 + 68] = mem[_3235 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3235 + -mem[64] + 100
                                if not sub_6e271dd5 - poolStartTime:
                                    _3388 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3388] = 26
                                    mem[_3388 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3388 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3790 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3790] = 26
                                            mem[_3790 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3790 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _3841 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3841] = 26
                                            mem[_3841 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3841 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        _3401 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3401] = 26
                                        mem[_3401 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3401 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _3840 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3840] = 26
                                                mem[_3840 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3840 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3888 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3888] = 26
                                                mem[_3888 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3888 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3426 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3426] = 26
                                        mem[_3426 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3426 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _3887 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3887] = 26
                                                mem[_3887 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3887 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _3934 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_3934] = 26
                                                mem[_3934 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _3934 + 32]
                                                    idx = idx + 32
                                                    continue 
            else:
                poolInfo[idx].field_1024 = 1
                if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[idx].field_256
                if not totalAllocPoint:
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                if poolInfo[idx].field_512 >= block.timestamp:
                    _3285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3285] = 26
                    mem[_3285 + 32] = 'SafeMath: division by zero'
                    if not totalAllocPoint:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3285 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if not 0 / totalAllocPoint:
                            _3436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3436] = 26
                            mem[_3436 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.timestamp
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3436 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3469 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3469] = 26
                            mem[_3469 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                poolInfo[idx].field_512 = block.timestamp
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3469 + 32]
                                idx = idx + 32
                                continue 
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            _3312 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3312] = 26
                            mem[_3312 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3312 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3510 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3510] = 26
                                    mem[_3510 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3510 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3556 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3556] = 26
                                    mem[_3556 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3556 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > poolStartTime:
                                _3243 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3243] = 30
                                mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > block.timestamp:
                                    _3265 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3265 + 68] = mem[idx + _3243 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3265 + 68] = mem[_3265 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3265 + -mem[64] + 100
                                if not block.timestamp - poolInfo[idx].field_512:
                                    _3506 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3506] = 26
                                    mem[_3506 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3506 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3996 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3996] = 26
                                            mem[_3996 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3996 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4053 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4053] = 26
                                            mem[_4053 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4053 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / block.timestamp - poolInfo[idx].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                        _3554 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3554] = 26
                                        mem[_3554 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3554 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4052 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4052] = 26
                                                mem[_4052 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4052 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4111 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4111] = 26
                                                mem[_4111 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4111 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3599 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3599] = 26
                                        mem[_3599 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3599 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4110 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4110] = 26
                                                mem[_4110 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4110 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4182 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4182] = 26
                                                mem[_4182 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4182 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3244] = 30
                                mem[_3244 + 32] = 'SafeMath: subtraction overflow'
                                if poolStartTime > block.timestamp:
                                    _3268 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3268 + 68] = mem[idx + _3244 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3268 + 68] = mem[_3268 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3268 + -mem[64] + 100
                                if not block.timestamp - poolStartTime:
                                    _3509 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3509] = 26
                                    mem[_3509 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3509 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _3999 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_3999] = 26
                                            mem[_3999 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3999 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4057 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4057] = 26
                                            mem[_4057 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4057 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / block.timestamp - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        _3555 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3555] = 26
                                        mem[_3555 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3555 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4056 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4056] = 26
                                                mem[_4056 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4056 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4116 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4116] = 26
                                                mem[_4116 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4116 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (block.timestamp * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3603 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3603] = 26
                                        mem[_3603 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3603 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4115 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4115] = 26
                                                mem[_4115 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4115 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4190 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4190] = 26
                                                mem[_4190 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4190 + 32]
                                                    idx = idx + 32
                                                    continue 
                    else:
                        if poolInfo[idx].field_512 >= sub_6e271dd5:
                            _3317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3317] = 26
                            mem[_3317 + 32] = 'SafeMath: division by zero'
                            if not totalAllocPoint:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _3317 + 32]
                                    idx = idx + 32
                                    continue 
                            else:
                                if not 0 / totalAllocPoint:
                                    _3517 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3517] = 26
                                    mem[_3517 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3517 + 32]
                                        idx = idx + 32
                                        continue 
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3559 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3559] = 26
                                    mem[_3559 + 32] = 'SafeMath: division by zero'
                                    if ext_call.return_data[0]:
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.timestamp
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _3559 + 32]
                                        idx = idx + 32
                                        continue 
                        else:
                            if poolInfo[idx].field_512 > poolStartTime:
                                _3245 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3245] = 30
                                mem[_3245 + 32] = 'SafeMath: subtraction overflow'
                                if poolInfo[idx].field_512 > sub_6e271dd5:
                                    _3271 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3271 + 68] = mem[idx + _3245 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3271 + 68] = mem[_3271 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3271 + -mem[64] + 100
                                if not sub_6e271dd5 - poolInfo[idx].field_512:
                                    _3513 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3513] = 26
                                    mem[_3513 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3513 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _4002 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4002] = 26
                                            mem[_4002 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4002 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4061 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4061] = 26
                                            mem[_4061 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4061 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac):
                                        _3557 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3557] = 26
                                        mem[_3557 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3557 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4060 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4060] = 26
                                                mem[_4060 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4060 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4121 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4121] = 26
                                                mem[_4121 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4121 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolInfo[idx].field_512 * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3610 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3610] = 26
                                        mem[_3610 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3610 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4120 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4120] = 26
                                                mem[_4120 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4120 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4198 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4198] = 26
                                                mem[_4198 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4198 + 32]
                                                    idx = idx + 32
                                                    continue 
                            else:
                                _3246 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3246] = 30
                                mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                                if poolStartTime > sub_6e271dd5:
                                    _3274 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3274 + 68] = mem[idx + _3246 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3274 + 68] = mem[_3274 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3274 + -mem[64] + 100
                                if not sub_6e271dd5 - poolStartTime:
                                    _3516 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3516] = 26
                                    mem[_3516 + 32] = 'SafeMath: division by zero'
                                    if not totalAllocPoint:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _3516 + 32]
                                            idx = idx + 32
                                            continue 
                                    else:
                                        if not 0 / totalAllocPoint:
                                            _4005 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4005] = 26
                                            mem[_4005 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4005 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            _4065 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_4065] = 26
                                            mem[_4065 + 32] = 'SafeMath: division by zero'
                                            if ext_call.return_data[0]:
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                poolInfo[idx].field_512 = block.timestamp
                                                idx = idx + 1
                                                continue 
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _4065 + 32]
                                                idx = idx + 32
                                                continue 
                                else:
                                    if (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) / sub_6e271dd5 - poolStartTime != sub_6a3ebfac:
                                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if not (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac):
                                        _3558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3558] = 26
                                        mem[_3558 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3558 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not 0 / totalAllocPoint:
                                                _4064 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4064] = 26
                                                mem[_4064 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4064 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4126 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4126] = 26
                                                mem[_4126 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4126 + 32]
                                                    idx = idx + 32
                                                    continue 
                                    else:
                                        if (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_6a3ebfac) - (poolStartTime * sub_6a3ebfac) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3614 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3614] = 26
                                        mem[_3614 + 32] = 'SafeMath: division by zero'
                                        if not totalAllocPoint:
                                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 32
                                            mem[mem[64] + 36] = 26
                                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                                            idx = 32
                                            while idx < 26:
                                                mem[idx + mem[64] + 68] = mem[idx + _3614 + 32]
                                                idx = idx + 32
                                                continue 
                                        else:
                                            if not (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint:
                                                _4125 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4125] = 26
                                                mem[_4125 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4125 + 32]
                                                    idx = idx + 32
                                                    continue 
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                _4206 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_4206] = 26
                                                mem[_4206 + 32] = 'SafeMath: division by zero'
                                                if ext_call.return_data[0]:
                                                    if (10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_6a3ebfac * poolInfo[idx].field_256) - (poolStartTime * sub_6a3ebfac * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                                    poolInfo[idx].field_512 = block.timestamp
                                                    idx = idx + 1
                                                    continue 
                                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 32
                                                mem[mem[64] + 36] = 26
                                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                                idx = 32
                                                while idx < 26:
                                                    mem[idx + mem[64] + 68] = mem[idx + _4206 + 32]
                                                    idx = idx + 32
                                                    continue 
            revert with 0, 'SafeMath: division by zero'
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC257[stor3.length] = arg1
    if block.timestamp >= poolStartTime:
        if not arg4:
            storC257[stor3.length] = block.timestamp
            storC257[stor3.length] = 0
            if block.timestamp <= poolStartTime:
                storC257[stor3.length] = uint8(block.timestamp <= poolStartTime)
                if arg1 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                storC257[stor3.length] = uint8(block.timestamp <= block.timestamp)
                if block.timestamp <= block.timestamp:
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.timestamp:
                storC257[stor3.length] = arg4
                storC257[stor3.length] = 0
                if arg4 <= poolStartTime:
                    storC257[stor3.length] = uint8(arg4 <= poolStartTime)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    storC257[stor3.length] = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                storC257[stor3.length] = block.timestamp
                storC257[stor3.length] = 0
                if block.timestamp <= poolStartTime:
                    storC257[stor3.length] = uint8(block.timestamp <= poolStartTime)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    storC257[stor3.length] = uint8(block.timestamp <= block.timestamp)
                    if block.timestamp <= block.timestamp:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg4:
            storC257[stor3.length] = poolStartTime
            storC257[stor3.length] = 0
            if poolStartTime <= poolStartTime:
                storC257[stor3.length] = uint8(poolStartTime <= poolStartTime)
                if arg1 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                storC257[stor3.length] = uint8(poolStartTime <= block.timestamp)
                if poolStartTime <= block.timestamp:
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= poolStartTime:
                storC257[stor3.length] = arg4
                storC257[stor3.length] = 0
                if arg4 <= poolStartTime:
                    storC257[stor3.length] = uint8(arg4 <= poolStartTime)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    storC257[stor3.length] = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                storC257[stor3.length] = poolStartTime
                storC257[stor3.length] = 0
                if poolStartTime <= poolStartTime:
                    storC257[stor3.length] = uint8(poolStartTime <= poolStartTime)
                    if arg1 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    storC257[stor3.length] = uint8(poolStartTime <= block.timestamp)
                    if poolStartTime <= block.timestamp:
                        if arg1 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}



}
