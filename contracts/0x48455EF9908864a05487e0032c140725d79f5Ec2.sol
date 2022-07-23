contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
const TOTAL_REWARDS = 48000 * 10^18


address operatorAddress;
address feeAddress;
address sub_0c64589dAddress;
address mimAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
uint256 sub_b83e4ccc;
uint256 sub_943f013d;

function sub_0c64589d(?) payable {
    return sub_0c64589dAddress
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           bool(poolInfo[arg1].field_1280)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function feeAddress() payable {
    return feeAddress
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
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_943f013d(?) payable {
    return sub_943f013d
}

function mim() payable {
    return mimAddress
}

function sub_b83e4ccc(?) payable {
    return sub_b83e4ccc
}

function _fallback() payable {
    revert
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734b6174616e6147656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    operatorAddress = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734b6174616e6147656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    feeAddress = arg1
    emit SetFeeAddress(msg.sender, arg1);
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734b6174616e6147656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if block.timestamp < sub_6e271dd5 + (2160 * 24 * 3600):
        if arg1 == sub_0c64589dAddress:
            revert with 0, 'katana'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if arg1 == poolInfo[idx].field_0:
                revert with 0, 'pool.token'
            idx = idx + 1
            continue 
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
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
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
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
            require arg2 - arg1
            if (arg2 * sub_b83e4ccc) - (arg1 * sub_b83e4ccc) / arg2 - arg1 != sub_b83e4ccc:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((arg2 * sub_b83e4ccc) - (arg1 * sub_b83e4ccc))
        if poolStartTime > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - poolStartTime:
            return 0
        require arg2 - poolStartTime
        if (arg2 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / arg2 - poolStartTime != sub_b83e4ccc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((arg2 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if arg1 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - arg1:
            return 0
        require sub_6e271dd5 - arg1
        if (sub_6e271dd5 * sub_b83e4ccc) - (arg1 * sub_b83e4ccc) / sub_6e271dd5 - arg1 != sub_b83e4ccc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((sub_6e271dd5 * sub_b83e4ccc) - (arg1 * sub_b83e4ccc))
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        return 0
    require sub_6e271dd5 - poolStartTime
    if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc))
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_768:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1280 = 1
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_768 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_768 > poolStartTime:
                                    if poolInfo[idx].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolInfo[idx].field_768:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.timestamp - poolInfo[idx].field_768
                                        if (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / block.timestamp - poolInfo[idx].field_768 != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                            if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolStartTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.timestamp - poolStartTime
                                        if (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / block.timestamp - poolStartTime != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                            if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_768 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_768 > poolStartTime:
                                    if poolInfo[idx].field_768 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolInfo[idx].field_768:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require sub_6e271dd5 - poolInfo[idx].field_768
                                        if (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / sub_6e271dd5 - poolInfo[idx].field_768 != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                            if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolStartTime > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require sub_6e271dd5 - poolStartTime
                                        if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                            if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_768 = block.timestamp
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, uint16 arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734b6174616e6147656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if arg3 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x777365743a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.timestamp > poolInfo[idx].field_768:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not poolInfo[idx].field_1280:
                    poolInfo[idx].field_1280 = 1
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    if poolInfo[idx].field_768 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if block.timestamp < sub_6e271dd5:
                            if block.timestamp <= poolStartTime:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_768 > poolStartTime:
                                    if poolInfo[idx].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolInfo[idx].field_768:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.timestamp - poolInfo[idx].field_768
                                        if (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / block.timestamp - poolInfo[idx].field_768 != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                            if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolStartTime > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require block.timestamp - poolStartTime
                                        if (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / block.timestamp - poolStartTime != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                            if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_768 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_768 > poolStartTime:
                                    if poolInfo[idx].field_768 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolInfo[idx].field_768:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require sub_6e271dd5 - poolInfo[idx].field_768
                                        if (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / sub_6e271dd5 - poolInfo[idx].field_768 != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                            if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolStartTime > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolStartTime:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require sub_6e271dd5 - poolStartTime
                                        if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                            if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_768 = block.timestamp
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1280:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg3
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_768:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if not poolInfo[arg1].field_1280:
                poolInfo[arg1].field_1280 = 1
                if totalAllocPoint + poolInfo[arg1].field_256 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint > 0:
                if poolInfo[arg1].field_768 >= block.timestamp:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                    else:
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp < sub_6e271dd5:
                        if block.timestamp <= poolStartTime:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 > poolStartTime:
                                if poolInfo[arg1].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[arg1].field_768:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolInfo[arg1].field_768
                                    if (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) / block.timestamp - poolInfo[arg1].field_768 != sub_b83e4ccc:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc)
                                        if (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.timestamp - poolStartTime
                                    if (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / block.timestamp - poolStartTime != sub_b83e4ccc:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                        if (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_768 >= sub_6e271dd5:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_768 > poolStartTime:
                                if poolInfo[arg1].field_768 > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolInfo[arg1].field_768:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require sub_6e271dd5 - poolInfo[arg1].field_768
                                    if (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) / sub_6e271dd5 - poolInfo[arg1].field_768 != sub_b83e4ccc:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc)
                                        if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolStartTime > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require sub_6e271dd5 - poolStartTime
                                    if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                        if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
                                            if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_768 = block.timestamp
}

function sub_466e7acc(?) payable {
    require calldata.size - 4 >= 160
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x734b6174616e6147656e65736973506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if arg5 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x3f6164643a20696e76616c6964206465706f7369742066656520626173697320706f696e74,
                    mem[201 len 27]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if poolInfo[idx].field_0 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe4b6174616e6147656e65736973506f6f6c3a206578697374696e6720706f6f6c,
                        mem[197 len 31]
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.timestamp > poolInfo[idx].field_768:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not poolInfo[idx].field_1280:
                        poolInfo[idx].field_1280 = 1
                        if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += poolInfo[idx].field_256
                    if totalAllocPoint > 0:
                        if poolInfo[idx].field_768 >= block.timestamp:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if block.timestamp < sub_6e271dd5:
                                if block.timestamp <= poolStartTime:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_768 > poolStartTime:
                                        if poolInfo[idx].field_768 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - poolInfo[idx].field_768:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require block.timestamp - poolInfo[idx].field_768
                                            if (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / block.timestamp - poolInfo[idx].field_768 != sub_b83e4ccc:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                                if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if poolStartTime > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - poolStartTime:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require block.timestamp - poolStartTime
                                            if (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / block.timestamp - poolStartTime != sub_b83e4ccc:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                                if (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_768 >= sub_6e271dd5:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_768 > poolStartTime:
                                        if poolInfo[idx].field_768 > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not sub_6e271dd5 - poolInfo[idx].field_768:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require sub_6e271dd5 - poolInfo[idx].field_768
                                            if (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) / sub_6e271dd5 - poolInfo[idx].field_768 != sub_b83e4ccc:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc)
                                                if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[idx].field_768 * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolInfo[idx].field_768 * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if poolStartTime > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not sub_6e271dd5 - poolStartTime:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require sub_6e271dd5 - poolStartTime
                                            if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
                                                if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[idx].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_768 = block.timestamp
            idx = idx + 1
            continue 
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    poolInfo[poolInfo.length].field_512 = arg5
    if block.timestamp >= poolStartTime:
        if not arg4:
            poolInfo[poolInfo.length].field_768 = block.timestamp
            poolInfo[poolInfo.length].field_1024 = 0
            if block.timestamp <= poolStartTime:
                poolInfo[poolInfo.length].field_1280 = uint8(block.timestamp <= poolStartTime)
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1280 = uint8(block.timestamp <= block.timestamp)
                if block.timestamp <= block.timestamp:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.timestamp:
                poolInfo[poolInfo.length].field_768 = arg4
                poolInfo[poolInfo.length].field_1024 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1280 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1280 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_768 = block.timestamp
                poolInfo[poolInfo.length].field_1024 = 0
                if block.timestamp <= poolStartTime:
                    poolInfo[poolInfo.length].field_1280 = uint8(block.timestamp <= poolStartTime)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1280 = uint8(block.timestamp <= block.timestamp)
                    if block.timestamp <= block.timestamp:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg4:
            poolInfo[poolInfo.length].field_768 = poolStartTime
            poolInfo[poolInfo.length].field_1024 = 0
            if poolStartTime <= poolStartTime:
                poolInfo[poolInfo.length].field_1280 = uint8(poolStartTime <= poolStartTime)
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1280 = uint8(poolStartTime <= block.timestamp)
                if poolStartTime <= block.timestamp:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= poolStartTime:
                poolInfo[poolInfo.length].field_768 = arg4
                poolInfo[poolInfo.length].field_1024 = 0
                if arg4 <= poolStartTime:
                    poolInfo[poolInfo.length].field_1280 = uint8(arg4 <= poolStartTime)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1280 = uint8(arg4 <= block.timestamp)
                    if arg4 <= block.timestamp:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_768 = poolStartTime
                poolInfo[poolInfo.length].field_1024 = 0
                if poolStartTime <= poolStartTime:
                    poolInfo[poolInfo.length].field_1280 = uint8(poolStartTime <= poolStartTime)
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1280 = uint8(poolStartTime <= block.timestamp)
                    if poolStartTime <= block.timestamp:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}

function sub_d345b2e9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_768:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_1024 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 >= block.timestamp:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_768 > poolStartTime:
            if poolInfo[arg1].field_768 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_768:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require block.timestamp - poolInfo[arg1].field_768
            if (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) / block.timestamp - poolInfo[arg1].field_768 != sub_b83e4ccc:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc)
            if (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / (block.timestamp * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
            if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolStartTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require block.timestamp - poolStartTime
        if (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / block.timestamp - poolStartTime != sub_b83e4ccc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
        if (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / (block.timestamp * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.timestamp * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 >= sub_6e271dd5:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_768 > poolStartTime:
        if poolInfo[arg1].field_768 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - poolInfo[arg1].field_768:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require sub_6e271dd5 - poolInfo[arg1].field_768
        if (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) / sub_6e271dd5 - poolInfo[arg1].field_768 != sub_b83e4ccc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc)
        if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolInfo[arg1].field_768 * sub_b83e4ccc) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolInfo[arg1].field_768 * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require sub_6e271dd5 - poolStartTime
    if (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) / sub_6e271dd5 - poolStartTime != sub_b83e4ccc:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc)
    if (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_b83e4ccc) - (poolStartTime * sub_b83e4ccc) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024 + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (sub_6e271dd5 * sub_b83e4ccc * poolInfo[arg1].field_256) - (poolStartTime * sub_b83e4ccc * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}



}
