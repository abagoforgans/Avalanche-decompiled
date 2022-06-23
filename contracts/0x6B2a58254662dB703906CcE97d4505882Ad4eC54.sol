contract main {




// =====================  Runtime code  =====================


#
#  - set(uint256 arg1, uint256 arg2)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - deposit(uint256 arg1, uint256 arg2)
#
address operatorAddress;
address token1Address;
address token2Address;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 poolStartTime;
uint256 sub_6e271dd5;
uint256 sub_4faa1ad8;
uint256 sub_9923a298;
uint256 sub_943f013d;
uint256 TOTAL_REWARDS;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint8 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;

function TOTAL_REWARDS() payable {
    return TOTAL_REWARDS
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

function token2() payable {
    return token2Address
}

function sub_4faa1ad8(?) payable {
    return sub_4faa1ad8
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
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256, userInfo[arg1][arg2].field_512
}

function sub_943f013d(?) payable {
    return sub_943f013d
}

function sub_9923a298(?) payable {
    return sub_9923a298
}

function token1() payable {
    return token1Address
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
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    operatorAddress = arg1
}

function sub_10815574(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    require arg1 <= 10^17
    sub_4faa1ad8 = arg1
}

function sub_e795eaa7(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    require arg1 <= 10^17
    sub_9923a298 = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    userInfo[arg1][msg.sender].field_512 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x86416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(poolInfo[arg1].field_0):
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
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
}

function sub_40a74ebd(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if not arg1:
        revert with 0, 'token2 must be different than 0'
    token2Address = arg1
    if arg2:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x86416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(token2Address):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call token2Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        TOTAL_REWARDS += arg2
}

function sub_5b4f8ef6(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if not arg1:
        revert with 0, 'token1 must be different than 0'
    token1Address = arg1
    if arg2:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x86416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(token1Address):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call token1Address with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        TOTAL_REWARDS += arg2
}

function sub_417a3064(?) payable {
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
            if (arg2 * sub_4faa1ad8) - (arg1 * sub_4faa1ad8) / arg2 - arg1 != sub_4faa1ad8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((arg2 * sub_4faa1ad8) - (arg1 * sub_4faa1ad8))
        if poolStartTime > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - poolStartTime:
            return 0
        if (arg2 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / arg2 - poolStartTime != sub_4faa1ad8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((arg2 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if arg1 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - arg1:
            return 0
        if (sub_6e271dd5 * sub_4faa1ad8) - (arg1 * sub_4faa1ad8) / sub_6e271dd5 - arg1 != sub_4faa1ad8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((sub_6e271dd5 * sub_4faa1ad8) - (arg1 * sub_4faa1ad8))
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        return 0
    if (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / sub_6e271dd5 - poolStartTime != sub_4faa1ad8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8))
}

function sub_d1e8e42d(?) payable {
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
            if (arg2 * sub_9923a298) - (arg1 * sub_9923a298) / arg2 - arg1 != sub_9923a298:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((arg2 * sub_9923a298) - (arg1 * sub_9923a298))
        if poolStartTime > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - poolStartTime:
            return 0
        if (arg2 * sub_9923a298) - (poolStartTime * sub_9923a298) / arg2 - poolStartTime != sub_9923a298:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((arg2 * sub_9923a298) - (poolStartTime * sub_9923a298))
    if arg1 >= sub_6e271dd5:
        return 0
    if arg1 > poolStartTime:
        if arg1 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - arg1:
            return 0
        if (sub_6e271dd5 * sub_9923a298) - (arg1 * sub_9923a298) / sub_6e271dd5 - arg1 != sub_9923a298:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((sub_6e271dd5 * sub_9923a298) - (arg1 * sub_9923a298))
    if poolStartTime > sub_6e271dd5:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_6e271dd5 - poolStartTime:
        return 0
    if (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) / sub_6e271dd5 - poolStartTime != sub_9923a298:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298))
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    if block.timestamp >= sub_6e271dd5 + (2160 * 24 * 3600):
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x86416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
        mem[324 len 0] = 0
    else:
        if token1Address == arg1:
            revert with 0, 'token1'
        if token2Address == arg1:
            revert with 0, 'token2'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if poolInfo[idx].field_0 == arg1:
                revert with 0, 'pool.token'
            idx = idx + 1
            continue 
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x86416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_7f890088(?) payable {
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= block.timestamp:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > poolStartTime:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) / block.timestamp - poolInfo[arg1].field_512 != sub_4faa1ad8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / block.timestamp - poolStartTime != sub_4faa1ad8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > poolStartTime:
        if poolInfo[arg1].field_512 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_4faa1ad8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / sub_6e271dd5 - poolStartTime != sub_4faa1ad8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function sub_427b77ed(?) payable {
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
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 >= block.timestamp:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if block.timestamp < sub_6e271dd5:
        if block.timestamp <= poolStartTime:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if poolInfo[arg1].field_512 > poolStartTime:
            if poolInfo[arg1].field_512 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - poolInfo[arg1].field_512:
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_512
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) / block.timestamp - poolInfo[arg1].field_512 != sub_9923a298:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298):
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_512 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_512
                    if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
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
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) / block.timestamp - poolStartTime != sub_9923a298:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 >= sub_6e271dd5:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if poolInfo[arg1].field_512 > poolStartTime:
        if poolInfo[arg1].field_512 > sub_6e271dd5:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_6e271dd5 - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_9923a298:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_512 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_512
                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
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
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) / sub_6e271dd5 - poolStartTime != sub_9923a298:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_512 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_512
            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_512 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_512
        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_512 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
    if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_512 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_512
    if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_512 > (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_512)
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if block.timestamp > poolInfo[idx].field_512:
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
                    if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint:
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) / block.timestamp - poolInfo[idx].field_512 != sub_4faa1ad8:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / block.timestamp - poolStartTime != sub_4faa1ad8:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_4faa1ad8:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / sub_6e271dd5 - poolStartTime != sub_4faa1ad8:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                    if poolInfo[idx].field_512 >= block.timestamp:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                        else:
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
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
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not block.timestamp - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) / block.timestamp - poolInfo[idx].field_512 != sub_9923a298:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) / block.timestamp - poolStartTime != sub_9923a298:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[idx].field_512 >= sub_6e271dd5:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                else:
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 > poolStartTime:
                                    if poolInfo[idx].field_512 > sub_6e271dd5:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not sub_6e271dd5 - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_9923a298:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) / sub_6e271dd5 - poolStartTime != sub_9923a298:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if not (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.timestamp
        idx = idx + 1
        continue 
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x3f506172746e6572526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[209 len 19]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        if poolInfo[idx].field_0 == arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77506172746e6572526577617264506f6f6c3a206578697374696e6720706f6f6c,
                        mem[197 len 31]
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 3
            if block.timestamp > poolInfo[idx].field_512:
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
                        if poolInfo[idx].field_256 + totalAllocPoint < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += poolInfo[idx].field_256
                    if totalAllocPoint:
                        if poolInfo[idx].field_512 >= block.timestamp:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) / block.timestamp - poolInfo[idx].field_512 != sub_4faa1ad8:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / (block.timestamp * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / block.timestamp - poolStartTime != sub_4faa1ad8:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 >= sub_6e271dd5:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not sub_6e271dd5 - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_4faa1ad8:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[idx].field_512 * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / sub_6e271dd5 - poolStartTime != sub_4faa1ad8:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[idx].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        if poolInfo[idx].field_512 >= block.timestamp:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > block.timestamp:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not block.timestamp - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) / block.timestamp - poolInfo[idx].field_512 != sub_9923a298:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / (block.timestamp * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) / block.timestamp - poolStartTime != sub_9923a298:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                if poolInfo[idx].field_512 >= sub_6e271dd5:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if poolInfo[idx].field_512 > poolStartTime:
                                        if poolInfo[idx].field_512 > sub_6e271dd5:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not sub_6e271dd5 - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) / sub_6e271dd5 - poolInfo[idx].field_512 != sub_9923a298:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolInfo[idx].field_512 * sub_9923a298) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                            else:
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            if (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) / sub_6e271dd5 - poolStartTime != sub_9923a298:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if not (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                if (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                                else:
                                                    if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[idx].field_256) - (poolStartTime * sub_9923a298 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storC257[stor3.length] = arg1
    if block.timestamp >= poolStartTime:
        if not arg4:
            storC257[stor3.length] = block.timestamp
            storC257[stor3.length] = 0
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
            if not poolInfo[arg1].field_1280:
                poolInfo[arg1].field_1280 = 1
                if poolInfo[arg1].field_256 + totalAllocPoint < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += poolInfo[arg1].field_256
            if totalAllocPoint:
                if poolInfo[arg1].field_512 >= block.timestamp:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
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
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) / block.timestamp - poolInfo[arg1].field_512 != sub_4faa1ad8:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / (block.timestamp * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / block.timestamp - poolStartTime != sub_4faa1ad8:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / (block.timestamp * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (block.timestamp * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= sub_6e271dd5:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_4faa1ad8:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolInfo[arg1].field_512 * sub_4faa1ad8) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) / sub_6e271dd5 - poolStartTime != sub_4faa1ad8:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_4faa1ad8) - (poolStartTime * sub_4faa1ad8) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_768 += 10^18 * (sub_6e271dd5 * sub_4faa1ad8 * poolInfo[arg1].field_256) - (poolStartTime * sub_4faa1ad8 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                if poolInfo[arg1].field_512 >= block.timestamp:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                    else:
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
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
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) / block.timestamp - poolInfo[arg1].field_512 != sub_9923a298:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / (block.timestamp * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) / block.timestamp - poolStartTime != sub_9923a298:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / (block.timestamp * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (block.timestamp * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if poolInfo[arg1].field_512 >= sub_6e271dd5:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                            else:
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            if poolInfo[arg1].field_512 > poolStartTime:
                                if poolInfo[arg1].field_512 > sub_6e271dd5:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not sub_6e271dd5 - poolInfo[arg1].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) / sub_6e271dd5 - poolInfo[arg1].field_512 != sub_9923a298:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolInfo[arg1].field_512 * sub_9923a298) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
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
                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    if (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) / sub_6e271dd5 - poolStartTime != sub_9923a298:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        if (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / (sub_6e271dd5 * sub_9923a298) - (poolStartTime * sub_9923a298) != poolInfo[arg1].field_256:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[arg1].field_1024 += 10^18 * (sub_6e271dd5 * sub_9923a298 * poolInfo[arg1].field_256) - (poolStartTime * sub_9923a298 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}



}
