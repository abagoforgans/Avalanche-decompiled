contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address erc20Address;
uint256 paidOut;
uint256 rewardPerSecond;
uint256 totalRewards;
uint256 sub_2c686a94;
uint256 depositFeePercent;
uint256 sub_7d9b1327;
address sub_ed95f07fAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
uint256 endTimestamp;

function poolLength() payable {
    return poolInfo.length
}

function totalRewards() payable {
    return totalRewards
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function sub_2c686a94(?) payable {
    return sub_2c686a94
}

function paidOut() payable {
    return paidOut
}

function erc20() payable {
    return erc20Address
}

function sub_7d9b1327(?) payable {
    return sub_7d9b1327
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function deposited(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][address(arg2)].field_0
}

function endTimestamp() payable {
    return endTimestamp
}

function depositFeePercent() payable {
    return depositFeePercent
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_ed95f07f(?) payable {
    return sub_ed95f07fAddress
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

function setDepositFee(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    depositFeePercent = arg1
    sub_2c686a94 = arg2
    emit 0xf1aec186: depositFeePercent, sub_2c686a94
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalPending() payable {
    if block.timestamp <= startTimestamp:
        return 0
    if not rewardPerSecond:
        if paidOut > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -paidOut
    require rewardPerSecond
    if block.timestamp < endTimestamp:
        if (block.timestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond) / rewardPerSecond != block.timestamp - startTimestamp:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if paidOut > (block.timestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((block.timestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond) - paidOut)
    if (endTimestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond) / rewardPerSecond != endTimestamp - startTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if paidOut > (endTimestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((endTimestamp * rewardPerSecond) - (startTimestamp * rewardPerSecond) - paidOut)
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][address(msg.sender)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][address(msg.sender)].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
    if userInfo[arg1][address(msg.sender)].field_0 > poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1024 -= userInfo[arg1][address(msg.sender)].field_0
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
}

function fund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= endTimestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7766756e643a20746f6f206c6174652c20746865206661726d20697320636c6f7365,
                    mem[198 len 30]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(erc20Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call erc20Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    if rewardPerSecond <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rewardPerSecond
    endTimestamp += arg1 / rewardPerSecond
    if totalRewards + arg1 < totalRewards:
        revert with 0, 'SafeMath: addition overflow'
    totalRewards += arg1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp < endTimestamp:
        if block.timestamp <= poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                else:
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
        else:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / block.timestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = block.timestamp
    else:
        if endTimestamp <= poolInfo[arg1].field_512:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                else:
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
        else:
            if poolInfo[arg1].field_1024:
                if poolInfo[arg1].field_512 > endTimestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not endTimestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                else:
                    require endTimestamp - poolInfo[arg1].field_512
                    if (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / endTimestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
                        if (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
            poolInfo[arg1].field_512 = endTimestamp
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 9
        if block.timestamp < endTimestamp:
            if block.timestamp <= poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
            else:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        require block.timestamp - poolInfo[idx].field_512
                        if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / block.timestamp - poolInfo[idx].field_512 != rewardPerSecond:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                            if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = block.timestamp
        else:
            if endTimestamp <= poolInfo[idx].field_512:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[idx].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[idx].field_1024
                        if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
            else:
                if poolInfo[idx].field_1024:
                    if poolInfo[idx].field_512 > endTimestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTimestamp - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                    else:
                        require endTimestamp - poolInfo[idx].field_512
                        if (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / endTimestamp - poolInfo[idx].field_512 != rewardPerSecond:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                            if (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                poolInfo[idx].field_512 = endTimestamp
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp < endTimestamp:
                if block.timestamp <= poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / block.timestamp - poolInfo[idx].field_512 != rewardPerSecond:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require 0 / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                            else:
                                require (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = block.timestamp
            else:
                if endTimestamp <= poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > endTimestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not endTimestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require endTimestamp - poolInfo[idx].field_512
                            if (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / endTimestamp - poolInfo[idx].field_512 != rewardPerSecond:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require 0 / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                            else:
                                require (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                                if (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = endTimestamp
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
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 9
            if block.timestamp < endTimestamp:
                if block.timestamp <= poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require block.timestamp - poolInfo[idx].field_512
                            if (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / block.timestamp - poolInfo[idx].field_512 != rewardPerSecond:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require 0 / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                            else:
                                require (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                                if (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = block.timestamp
            else:
                if endTimestamp <= poolInfo[idx].field_512:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > poolInfo[idx].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[idx].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[idx].field_1024
                            if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                else:
                    if poolInfo[idx].field_1024:
                        if poolInfo[idx].field_512 > endTimestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not endTimestamp - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[idx].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[idx].field_1024
                                if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                        else:
                            require endTimestamp - poolInfo[idx].field_512
                            if (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) / endTimestamp - poolInfo[idx].field_512 != rewardPerSecond:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require 0 / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[idx].field_1024
                            else:
                                require (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond)
                                if (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[idx].field_512 * rewardPerSecond) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (0 / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / poolInfo[idx].field_1024
                                else:
                                    require (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint
                                    if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if poolInfo[idx].field_1024 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require poolInfo[idx].field_1024
                                    if poolInfo[idx].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerSecond * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1024
                    poolInfo[idx].field_512 = endTimestamp
            idx = idx + 1
            continue 
    if totalAllocPoint + arg1 < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.timestamp > startTimestamp:
        poolInfo[poolInfo.length].field_512 = block.timestamp
    else:
        poolInfo[poolInfo.length].field_512 = startTimestamp
    poolInfo[poolInfo.length].field_768 = 0
    poolInfo[poolInfo.length].field_1024 = 0
}

function pending(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not poolInfo[arg1].field_1024:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp < endTimestamp:
        if poolInfo[arg1].field_512 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - poolInfo[arg1].field_512:
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1024 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1024
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1024
            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require block.timestamp - poolInfo[arg1].field_512
        if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / block.timestamp - poolInfo[arg1].field_512 != rewardPerSecond:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not 0 / totalAllocPoint:
                if poolInfo[arg1].field_1024 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require poolInfo[arg1].field_1024
                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1024
            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1024
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
        if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > endTimestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not endTimestamp - poolInfo[arg1].field_512:
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1024
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require endTimestamp - poolInfo[arg1].field_512
    if (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / endTimestamp - poolInfo[arg1].field_512 != rewardPerSecond:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not 0 / totalAllocPoint:
            if poolInfo[arg1].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require poolInfo[arg1].field_1024
            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
    if (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if poolInfo[arg1].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require poolInfo[arg1].field_1024
        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
    if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if poolInfo[arg1].field_1024 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require poolInfo[arg1].field_1024
    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 1000000000000000000 * 10^18) - userInfo[arg1][address(arg2)].field_256)
}

function sub_ee5dfcf1(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_ed95f07fAddress)
    staticcall sub_ed95f07fAddress.0xa00249e8 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6453616c65206e6f742063726561746564207468726f75676820666163746f7279,
                    mem[197 len 31]
    if arg3 > 0:
        require arg1 < poolInfo.length
        if block.timestamp < endTimestamp:
            if block.timestamp <= poolInfo[arg1].field_512:
                if poolInfo[arg1].field_1024:
                    if arg3 > 0:
                        if sub_7d9b1327 + arg3 < sub_7d9b1327:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7d9b1327 += arg3
                    if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg3:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require arg3
                        if arg3 * poolInfo[arg1].field_256 / arg3 != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not arg3 * poolInfo[arg1].field_256 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require arg3 * poolInfo[arg1].field_256 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / arg3 * poolInfo[arg1].field_256 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            else:
                if poolInfo[arg1].field_1024:
                    if arg3 > 0:
                        if sub_7d9b1327 + arg3 < sub_7d9b1327:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7d9b1327 += arg3
                    if poolInfo[arg1].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[arg1].field_512:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg3:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                        else:
                            require arg3
                            if arg3 * poolInfo[arg1].field_256 / arg3 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not arg3 * poolInfo[arg1].field_256 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require arg3 * poolInfo[arg1].field_256 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / arg3 * poolInfo[arg1].field_256 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require block.timestamp - poolInfo[arg1].field_512
                        if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / block.timestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                        else:
                            require (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3
                            if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
                poolInfo[arg1].field_512 = block.timestamp
        else:
            if endTimestamp <= poolInfo[arg1].field_512:
                if poolInfo[arg1].field_1024:
                    if arg3 > 0:
                        if sub_7d9b1327 + arg3 < sub_7d9b1327:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7d9b1327 += arg3
                    if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not arg3:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require arg3
                        if arg3 * poolInfo[arg1].field_256 / arg3 != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not arg3 * poolInfo[arg1].field_256 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        else:
                            require arg3 * poolInfo[arg1].field_256 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / arg3 * poolInfo[arg1].field_256 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
            else:
                if poolInfo[arg1].field_1024:
                    if arg3 > 0:
                        if sub_7d9b1327 + arg3 < sub_7d9b1327:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_7d9b1327 += arg3
                    if poolInfo[arg1].field_512 > endTimestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTimestamp - poolInfo[arg1].field_512:
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not arg3:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                        else:
                            require arg3
                            if arg3 * poolInfo[arg1].field_256 / arg3 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not arg3 * poolInfo[arg1].field_256 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require arg3 * poolInfo[arg1].field_256 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / arg3 * poolInfo[arg1].field_256 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * arg3 * poolInfo[arg1].field_256 / totalAllocPoint / poolInfo[arg1].field_1024
                    else:
                        require endTimestamp - poolInfo[arg1].field_512
                        if (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / endTimestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg3 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                        else:
                            require (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3
                            if (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) + arg3 != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint:
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            else:
                                require (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if poolInfo[arg1].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg1].field_1024
                                if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) + (arg3 * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
                poolInfo[arg1].field_512 = endTimestamp
        if arg3 > poolInfo[arg1].field_1024:
            revert with 0, 'SafeMath: subtraction overflow'
        poolInfo[arg1].field_1024 -= arg3
        if arg3 > userInfo[arg1][address(arg2)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(arg2)].field_0 -= arg3
}

function sub_fcfc1b14(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    require arg1.length <= test266151307()
    mem[(64 * arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
        require idx < arg1.length
        require arg2 < poolInfo.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg2, 10)
        if block.timestamp <= poolInfo[arg2].field_512:
            if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
            else:
                require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = (userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
        else:
            if not poolInfo[arg2].field_1024:
                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                else:
                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = (userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 * poolInfo[arg2].field_768 / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
            else:
                if block.timestamp < endTimestamp:
                    if poolInfo[arg2].field_512 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - poolInfo[arg2].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg2].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg2].field_1024
                            if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                            if poolInfo[arg2].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg2].field_1024
                            if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                    else:
                        require block.timestamp - poolInfo[arg2].field_512
                        if (block.timestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond) / block.timestamp - poolInfo[arg2].field_512 != rewardPerSecond:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                        if not (block.timestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                        else:
                            require (block.timestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond)
                            if (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond) != poolInfo[arg2].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint:
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                else:
                    if poolInfo[arg2].field_512 > endTimestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not endTimestamp - poolInfo[arg2].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg2].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg2].field_1024
                            if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                            if poolInfo[arg2].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg2].field_1024
                            if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024):
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                    else:
                        require endTimestamp - poolInfo[arg2].field_512
                        if (endTimestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond) / endTimestamp - poolInfo[arg2].field_512 != rewardPerSecond:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                        if not (endTimestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require 0 / totalAllocPoint
                                if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                        else:
                            require (endTimestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond)
                            if (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[arg2].field_512 * rewardPerSecond) != poolInfo[arg2].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint:
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (0 / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (0 / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                            else:
                                require (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint
                                if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                if poolInfo[arg2].field_1024 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require poolInfo[arg2].field_1024
                                if poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024) < poolInfo[arg2].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not userInfo[arg2][address(mem[(32 * idx) + 128])].field_0:
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = -userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
                                else:
                                    require userInfo[arg2][address(mem[(32 * idx) + 128])].field_0
                                    if (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / userInfo[arg2][address(mem[(32 * idx) + 128])].field_0 != poolInfo[arg2].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024):
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(98 * arg1.length) + 293 len 31]
                                    if userInfo[arg2][address(mem[(32 * idx) + 128])].field_256 > (poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = ((poolInfo[arg2].field_768 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg2].field_256) - (poolInfo[arg2].field_512 * rewardPerSecond * poolInfo[arg2].field_256) / totalAllocPoint / poolInfo[arg2].field_1024 * userInfo[arg2][address(mem[(32 * idx) + 128])].field_0) / 1000000000000000000 * 10^18) - userInfo[arg2][address(mem[(32 * idx) + 128])].field_256
        idx = idx + 1
        continue 
    mem[(98 * arg1.length) + 192] = 64
    mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[(98 * arg1.length) + 224] = (32 * mem[(32 * arg1.length) + 128]) + 96
    mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 288] = mem[(64 * arg1.length) + 160]
    mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 320 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return Array(len=mem[(32 * arg1.length) + 128], data=mem[(98 * arg1.length) + 288 len (32 * mem[(64 * arg1.length) + 160]) + (32 * mem[(32 * arg1.length) + 128]) + 32]), 
           (32 * mem[(32 * arg1.length) + 128]) + 96
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if userInfo[arg1][address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6477697468647261773a2063616e2774207769746864726177206d6f7265207468616e206465706f7369,
                    mem[206 len 22]
    require arg1 < poolInfo.length
    if block.timestamp < endTimestamp:
        if block.timestamp <= poolInfo[arg1].field_512:
            if not poolInfo[arg1].field_1024:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            else:
                if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                else:
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        else:
            if not poolInfo[arg1].field_1024:
                poolInfo[arg1].field_512 = block.timestamp
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            else:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(erc20Address)
                            call erc20Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(erc20Address)
                            call erc20Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                        poolInfo[arg1].field_512 = block.timestamp
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(erc20Address)
                            call erc20Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(erc20Address)
                            call erc20Address.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / block.timestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
                        if (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (block.timestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                        else:
                            require (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (block.timestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = block.timestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                mem[324 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    else:
        if endTimestamp <= poolInfo[arg1].field_512:
            if not poolInfo[arg1].field_1024:
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            else:
                if poolInfo[arg1].field_512 > poolInfo[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not 0 / totalAllocPoint:
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                else:
                    require 0 / totalAllocPoint
                    if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if poolInfo[arg1].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require poolInfo[arg1].field_1024
                    if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
        else:
            if not poolInfo[arg1].field_1024:
                poolInfo[arg1].field_512 = endTimestamp
                if not userInfo[arg1][address(msg.sender)].field_0:
                    if userInfo[arg1][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut -= userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                else:
                    require userInfo[arg1][address(msg.sender)].field_0
                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(erc20Address)
                    call erc20Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        userInfo[arg1][address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
            else:
                if poolInfo[arg1].field_512 > endTimestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not endTimestamp - poolInfo[arg1].field_512:
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not 0 / totalAllocPoint:
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                    else:
                        require 0 / totalAllocPoint
                        if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if poolInfo[arg1].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require poolInfo[arg1].field_1024
                        if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                    poolInfo[arg1].field_512 = endTimestamp
                    if not userInfo[arg1][address(msg.sender)].field_0:
                        if userInfo[arg1][address(msg.sender)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut -= userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            mem[324 len 0] = 0
                    else:
                        require userInfo[arg1][address(msg.sender)].field_0
                        if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(erc20Address)
                        call erc20Address.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                        if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][address(msg.sender)].field_0 -= arg2
                        if not userInfo[arg1][address(msg.sender)].field_0:
                            userInfo[arg1][address(msg.sender)].field_256 = 0
                        else:
                            require userInfo[arg1][address(msg.sender)].field_0
                            if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if ext_code.size(poolInfo[arg1].field_0) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                else:
                    require endTimestamp - poolInfo[arg1].field_512
                    if (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) / endTimestamp - poolInfo[arg1].field_512 != rewardPerSecond:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond):
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = endTimestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                        else:
                            require 0 / totalAllocPoint
                            if 1000000000000000000 * 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * 0 / totalAllocPoint / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = endTimestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                    else:
                        require (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond)
                        if (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / (endTimestamp * rewardPerSecond) - (poolInfo[arg1].field_512 * rewardPerSecond) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (0 / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = endTimestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                                    mem[324 len 0] = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                    if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                        revert with 0, 'Address: call to non-contract'
                                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                if not userInfo[arg1][address(msg.sender)].field_0:
                                    userInfo[arg1][address(msg.sender)].field_256 = 0
                                else:
                                    require userInfo[arg1][address(msg.sender)].field_0
                                    if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
                        else:
                            require (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                            if 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 1000000000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if poolInfo[arg1].field_1024 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require poolInfo[arg1].field_1024
                            if poolInfo[arg1].field_768 + (1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000000000 * 10^18 * (endTimestamp * rewardPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1024
                            poolInfo[arg1].field_512 = endTimestamp
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                if userInfo[arg1][address(msg.sender)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut -= userInfo[arg1][address(msg.sender)].field_256
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if userInfo[arg1][address(msg.sender)].field_256 > userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(erc20Address)
                                call erc20Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                paidOut = paidOut + (userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18) - userInfo[arg1][address(msg.sender)].field_256
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            if not userInfo[arg1][address(msg.sender)].field_0:
                                userInfo[arg1][address(msg.sender)].field_256 = 0
                            else:
                                require userInfo[arg1][address(msg.sender)].field_0
                                if userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_768:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                userInfo[arg1][address(msg.sender)].field_256 = userInfo[arg1][address(msg.sender)].field_0 * poolInfo[arg1].field_768 / 1000000000000000000 * 10^18
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if ext_code.size(poolInfo[arg1].field_0) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if arg2 > poolInfo[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    poolInfo[arg1].field_1024 -= arg2
    emit Withdraw(arg2, msg.sender, arg1);
}



}
