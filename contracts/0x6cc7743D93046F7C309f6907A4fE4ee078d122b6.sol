contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - pendingTokens(uint256 arg1, address arg2)
#
address owner;
address sub_d5de8124Address;
address sub_83bb7957Address;
uint256 sub_dfa14bb9;
uint256 sub_0ae489fe;
uint256 sub_2729edf5;
array of struct poolInfo;
array of struct stor7;
mapping of uint256 stor8;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTimestamp;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of address stor111414077815863400510004064629973595961579173665589224203503662149373724986691;

function poolLength() payable {
    return poolInfo.length
}

function sub_0ae489fe(?) payable {
    return sub_0ae489fe
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

function sub_2729edf5(?) payable {
    return sub_2729edf5
}

function sub_83bb7957(?) payable {
    return sub_83bb7957Address
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_d5de8124(?) payable {
    return sub_d5de8124Address
}

function sub_dfa14bb9(?) payable {
    return sub_dfa14bb9
}

function startTimestamp() payable {
    return startTimestamp
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b9b01f19(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_83bb7957Address = arg1
}

function sub_22b92e58(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6f73657444657650657263656e743a20696e76616c69642070657263656e742076616c75,
                    mem[200 len 28]
    sub_0ae489fe = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'BoringERC20: Transfer failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'BoringERC20: Transfer failed'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'BoringERC20: Transfer failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'BoringERC20: Transfer failed'
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
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
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
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
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
            else:
                if (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[arg1].field_512 != sub_dfa14bb9:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9):
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
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
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
            else:
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
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[idx].field_512 != sub_dfa14bb9:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9):
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
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
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
            else:
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
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[idx].field_512 != sub_dfa14bb9:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9):
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
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    sub_dfa14bb9 = arg1
    emit UpdateEmissionRate(arg1, msg.sender);
}

function set(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg3):
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x747365743a207265776172646572206d75737420626520636f6e7472616374206f72207a6572,
                        mem[202 len 26]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
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
            else:
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
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[idx].field_512 != sub_dfa14bb9:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9):
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
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
    require arg1 < poolInfo.length
    if not arg4:
        emit 0xa54644aa: arg2, arg4, arg1, poolInfo[arg1].field_1024
    else:
        poolInfo[arg1].field_1024 = arg3
        if arg4:
            emit 0xa54644aa: arg2, arg4, arg1, arg3
        else:
            require arg1 < poolInfo.length
            emit 0xa54644aa: arg2, arg4, arg1, poolInfo[arg1].field_1024
}

function add(uint256 arg1, address arg2, address arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ext_code.size(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x726164643a204c5020746f6b656e206d75737420626520612076616c696420636f6e74726163,
                    mem[202 len 26]
    if not ext_code.size(arg3):
        if arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x6f6164643a207265776172646572206d75737420626520636f6e7472616374206f72207a6572,
                        mem[202 len 26]
    if stor8[address(arg2)]:
        revert with 0, 'add: LP already added'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp > poolInfo[idx].field_512:
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
            else:
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
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.timestamp
                        mem[mem[64]] = block.timestamp
                        mem[mem[64] + 32] = ext_call.return_data[0]
                        mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                else:
                    if (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[idx].field_512 != sub_dfa14bb9:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9):
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
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                    else:
                        if (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[idx].field_512 * sub_dfa14bb9) != poolInfo[idx].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (0 / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
                        else:
                            if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.timestamp
                            mem[mem[64]] = block.timestamp
                            mem[mem[64] + 32] = ext_call.return_data[0]
                            mem[mem[64] + 64] = (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768
                            emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_dfa14bb9 * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_768, idx);
        idx = idx + 1
        continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.timestamp > startTimestamp:
        storF652[stor6.length] = block.timestamp
    else:
        storF652[stor6.length] = startTimestamp
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg3
    if not stor8[address(arg2)]:
        stor7.length++
        stor7[stor7.length].field_0 = arg2
        stor7[stor7.length].field_160 = 0
        stor8[address(arg2)] = stor7.length
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0x4b16bd24: arg1, poolInfo.length - 1, arg2, arg3
}

function harvest(uint256 arg1) payable {
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
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
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
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
            else:
                if (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[arg1].field_512 != sub_dfa14bb9:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9):
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
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][msg.sender].field_256:
                if 0 > -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(-userInfo[arg1][msg.sender].field_256, msg.sender, arg1);
            else:
                if -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / -userInfo[arg1][msg.sender].field_256 != sub_0ae489fe:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000 > -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if -userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000) <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest((-userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)), msg.sender, arg1);
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if 0 > (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            else:
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 != sub_0ae489fe:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000 > (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000) <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)), msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            poolInfo[arg1].field_512 = block.timestamp
        else:
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
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    poolInfo[arg1].field_512 = block.timestamp
                    emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
            else:
                if (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) / block.timestamp - poolInfo[arg1].field_512 != sub_dfa14bb9:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9):
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
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                else:
                    if (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / (block.timestamp * sub_dfa14bb9) - (poolInfo[arg1].field_512 * sub_dfa14bb9) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (0 / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
                    else:
                        if 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[arg1].field_512 = block.timestamp
                        emit UpdatePool(block.timestamp, ext_call.return_data[0], (10^12 * (block.timestamp * sub_dfa14bb9 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_dfa14bb9 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) + poolInfo[arg1].field_768, arg1);
    require arg1 < poolInfo.length
    if userInfo[arg1][msg.sender].field_0:
        if not userInfo[arg1][msg.sender].field_0:
            if userInfo[arg1][msg.sender].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -userInfo[arg1][msg.sender].field_256:
                if 0 > -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if -userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(-userInfo[arg1][msg.sender].field_256, msg.sender, arg1);
            else:
                if -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / -userInfo[arg1][msg.sender].field_256 != sub_0ae489fe:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000 > -userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if -userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000) <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, -1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest((-userInfo[arg1][msg.sender].field_256 - (-1 * sub_0ae489fe * userInfo[arg1][msg.sender].field_256 / 1000)), msg.sender, arg1);
        else:
            if poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if 0 > (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256), msg.sender, arg1);
            else:
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 != sub_0ae489fe:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000 > (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_d5de8124Address)
                staticcall sub_d5de8124Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                if (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000) <= ext_call.return_data[0]:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)
                else:
                    call sub_d5de8124Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_d5de8124Address)
                call sub_d5de8124Address.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_83bb7957Address, (poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_83bb7957Address)
                call sub_83bb7957Address.0xab080fdf with:
                     gas gas_remaining wei
                    args ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Harvest(((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 - ((poolInfo[arg1].field_768 * userInfo[arg1][msg.sender].field_0 / 10^12 * sub_0ae489fe) - (userInfo[arg1][msg.sender].field_256 * sub_0ae489fe) / 1000)), msg.sender, arg1);
    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    userInfo[arg1][msg.sender].field_0 += arg2
    if not arg2 + userInfo[arg1][msg.sender].field_0:
        userInfo[arg1][msg.sender].field_256 = 0
    else:
        if (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_768) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768) / 10^12
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024:
        require ext_code.size(poolInfo[arg1].field_1024)
        call poolInfo[arg1].field_1024.0x2e7b5722 with:
             gas gas_remaining wei
            args msg.sender, userInfo[arg1][msg.sender].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    call poolInfo[arg1].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'BoringERC20: TransferFrom failed'
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'BoringERC20: TransferFrom failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 'BoringERC20: TransferFrom failed'
    if sub_d5de8124Address == poolInfo[arg1].field_0:
        if arg2 + sub_2729edf5 < sub_2729edf5:
            revert with 0, 'SafeMath: addition overflow'
        sub_2729edf5 += arg2
    emit Deposit(arg2, msg.sender, arg1);
}

function rewarderBonusTokenInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_1024:
        return 0, 64, 0
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolInfo[arg1].field_1024)
    staticcall poolInfo[arg1].field_1024.rewardToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[132 len 0] = None
    staticcall address(ext_call.return_data[0]).mem[132 len 4] with:
            gas gas_remaining wei
    if not return_data.size:
        return address(ext_call.return_data[0]), 64, 3, 0
    mem[132] = return_data.size
    mem[164 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        return address(ext_call.return_data[0]), 64, 3, 0
    if return_data.size >= 64:
        require return_data.size >= 32
        _155 = mem[164]
        require mem[164] <= 4294967296
        require mem[164] + 64 <= return_data.size + 32
        require return_data.size + 32 >= mem[mem[164] + 164] + mem[164] + 64 and mem[mem[164] + 164] <= 4294967296
        mem[ceil32(return_data.size) + 133] = mem[mem[164] + 164]
        _171 = mem[_155 + 164]
        mem[ceil32(return_data.size) + 165 len ceil32(mem[_155 + 164])] = mem[_155 + 196 len ceil32(mem[_155 + 164])]
        if not _171 % 32:
            mem[_171 + ceil32(return_data.size) + 165] = address(ext_call.return_data[0])
            mem[_171 + ceil32(return_data.size) + 197] = 64
            mem[_171 + ceil32(return_data.size) + 229] = mem[ceil32(return_data.size) + 133]
            mem[_171 + ceil32(return_data.size) + 261 len ceil32(mem[ceil32(return_data.size) + 133])] = mem[ceil32(return_data.size) + 165 len ceil32(mem[ceil32(return_data.size) + 133])]
            if not mem[ceil32(return_data.size) + 133] % 32:
                return address(ext_call.return_data[0]), 
                       64,
                       mem[_171 + ceil32(return_data.size) + 229 len mem[ceil32(return_data.size) + 133] + 32]
            mem[floor32(mem[ceil32(return_data.size) + 133]) + _171 + ceil32(return_data.size) + 261] = mem[floor32(mem[ceil32(return_data.size) + 133]) + _171 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 133] % 32) + 293 len mem[ceil32(return_data.size) + 133] % 32]
            return address(ext_call.return_data[0]), 
                   Array(len=mem[ceil32(return_data.size) + 133], data=mem[_171 + ceil32(return_data.size) + 261 len floor32(mem[ceil32(return_data.size) + 133]) + 32])
        mem[floor32(_171) + ceil32(return_data.size) + 165] = mem[floor32(_171) + ceil32(return_data.size) + -(_171 % 32) + 197 len _171 % 32]
        mem[floor32(_171) + ceil32(return_data.size) + 197] = address(ext_call.return_data[0])
        mem[floor32(_171) + ceil32(return_data.size) + 229] = 64
        mem[floor32(_171) + ceil32(return_data.size) + 261] = mem[ceil32(return_data.size) + 133]
        mem[floor32(_171) + ceil32(return_data.size) + 293 len ceil32(mem[ceil32(return_data.size) + 133])] = mem[ceil32(return_data.size) + 165 len ceil32(mem[ceil32(return_data.size) + 133])]
        if not mem[ceil32(return_data.size) + 133] % 32:
            return address(ext_call.return_data[0]), 
                   64,
                   mem[floor32(_171) + ceil32(return_data.size) + 261 len mem[ceil32(return_data.size) + 133] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 133]) + floor32(_171) + ceil32(return_data.size) + 293] = mem[floor32(mem[ceil32(return_data.size) + 133]) + floor32(_171) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 133] % 32) + 325 len mem[ceil32(return_data.size) + 133] % 32]
        return address(ext_call.return_data[0]), 
               Array(len=mem[ceil32(return_data.size) + 133], data=mem[floor32(_171) + ceil32(return_data.size) + 293 len floor32(mem[ceil32(return_data.size) + 133]) + 32])
    if return_data.size != 32:
        return address(ext_call.return_data[0]), 64, 3, 0
    if uint8(var27001) < 32:
        require uint8(var29002) < return_data.size
        if not var33001:
            require uint8(var33002) <= test266151307()
            if not uint8(var33002):
                if uint8(var40002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var33002)])
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var42003) < return_data.size
                if not var46001:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var33002)])
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var48002) < return_data.size
                require uint8(var50004) < uint8(var33002)
                mem[var52001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if uint8(var54002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var33002)])
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var56003) < return_data.size
                if var60001:
                    require uint8(var62002) < return_data.size
                    require uint8(var64004) < uint8(var33002)
                    # nil
                else:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var33002)])
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var33002))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
            else:
                mem[ceil32(return_data.size) + 165 len uint8(var33002)] = call.data[calldata.size len uint8(var33002)]
                if uint8(var41002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=Mask(8 * uint8(var33002), -(8 * uint8(var33002)) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * uint8(var33002)) - 256)
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=Mask(8 * ceil32(uint8(var33002)), -(8 * ceil32(uint8(var33002))) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * ceil32(uint8(var33002))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var43003) < return_data.size
                if not var47001:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=Mask(8 * uint8(var33002), -(8 * uint8(var33002)) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * uint8(var33002)) - 256)
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=Mask(8 * ceil32(uint8(var33002)), -(8 * ceil32(uint8(var33002))) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * ceil32(uint8(var33002))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var49002) < return_data.size
                require uint8(var51004) < uint8(var33002)
                mem[var53001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if uint8(var55002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=Mask(8 * uint8(var33002), -(8 * uint8(var33002)) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * uint8(var33002)) - 256)
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=Mask(8 * ceil32(uint8(var33002)), -(8 * ceil32(uint8(var33002))) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * ceil32(uint8(var33002))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
                require uint8(var57003) < return_data.size
                if var61001:
                    require uint8(var63002) < return_data.size
                    require uint8(var65004) < uint8(var33002)
                    # nil
                else:
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(var33002)) + 261 len ceil32(uint8(var33002))] = call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]
                    if not var33002 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=var33002 << 248, data=Mask(8 * uint8(var33002), -(8 * uint8(var33002)) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * uint8(var33002)) - 256)
                    mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + 261] = mem[Mask(3, 5, var33002) + ceil32(return_data.size) + ceil32(uint8(var33002)) + -(var33002 % 32) + 293 len var33002 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(var33002), data=Mask(8 * ceil32(uint8(var33002)), -(8 * ceil32(uint8(var33002))) + 256, call.data[calldata.size len uint8(var33002)], mem[ceil32(return_data.size) + uint8(var33002) + 165 len ceil32(uint8(var33002)) - uint8(var33002)]) << (8 * ceil32(uint8(var33002))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var33002))) + 261 len Mask(3, 5, var33002) + -ceil32(uint8(var33002)) + 32])
        else:
            idx = var33002
            while uint8(idx + 1) < 32:
                require uint8(idx + 1) < return_data.size
                if Mask(8, 248, mem[uint8(idx + 1) + 164]):
                    idx = idx + 1
                    continue 
                require uint8(idx + 1) <= test266151307()
                if not uint8(idx + 1):
                    if uint8(var46002) >= 32:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var48003) < return_data.size
                    if not var52001:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var54002) < return_data.size
                    require uint8(var56004) < uint8(idx + 1)
                    mem[var58001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var60002) >= 32:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var62003) < return_data.size
                    if var66001:
                        require uint8(var68002) < return_data.size
                        require uint8(var70004) < uint8(idx + 1)
                        # nil
                    else:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                else:
                    mem[ceil32(return_data.size) + 165 len uint8(idx + 1)] = call.data[calldata.size len uint8(idx + 1)]
                    if uint8(var47002) >= 32:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var49003) < return_data.size
                    if not var53001:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var55002) < return_data.size
                    require uint8(var57004) < uint8(idx + 1)
                    mem[var59001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if uint8(var61002) >= 32:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
                    require uint8(var63003) < return_data.size
                    if var67001:
                        require uint8(var69002) < return_data.size
                        require uint8(var71004) < uint8(idx + 1)
                        # nil
                    else:
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 197] = 64
                        mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 229] = uint8(idx + 1)
                        s = 0
                        while s < uint8(idx + 1):
                            mem[s + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[s + ceil32(return_data.size) + 165]
                            s = s + 32
                            continue 
                        if not idx + 1 % 32:
                            return address(ext_call.return_data[0]), 
                                   Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len uint8(idx + 1)])
                        mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                        return address(ext_call.return_data[0]), 
                               Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len Mask(3, 5, idx + 1) + 32])
            require uint8(idx + 1) <= test266151307()
            if not uint8(idx + 1):
                if uint8(var44002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(idx + 1)])
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var46003) < return_data.size
                if not var50001:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(idx + 1)])
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var52002) < return_data.size
                require uint8(var54004) < uint8(idx + 1)
                mem[var56001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if uint8(var58002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(idx + 1)])
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var60003) < return_data.size
                if var64001:
                    require uint8(var66002) < return_data.size
                    require uint8(var68004) < uint8(idx + 1)
                    # nil
                else:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(idx + 1)])
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(idx + 1))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
            else:
                mem[ceil32(return_data.size) + 165 len uint8(idx + 1)] = call.data[calldata.size len uint8(idx + 1)]
                if uint8(var45002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=Mask(8 * uint8(idx + 1), -(8 * uint8(idx + 1)) + -(8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) + 256, call.data[calldata.size len uint8(idx + 1)]) << (8 * uint8(idx + 1)) + (8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) - 256)
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=Mask(8 * ceil32(uint8(idx + 1)), -(8 * ceil32(uint8(idx + 1))) + 256, call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]) << (8 * ceil32(uint8(idx + 1))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var47003) < return_data.size
                if not var51001:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=Mask(8 * uint8(idx + 1), -(8 * uint8(idx + 1)) + -(8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) + 256, call.data[calldata.size len uint8(idx + 1)]) << (8 * uint8(idx + 1)) + (8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) - 256)
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=Mask(8 * ceil32(uint8(idx + 1)), -(8 * ceil32(uint8(idx + 1))) + 256, call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]) << (8 * ceil32(uint8(idx + 1))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var53002) < return_data.size
                require uint8(var55004) < uint8(idx + 1)
                mem[var57001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if uint8(var59002) >= 32:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=Mask(8 * uint8(idx + 1), -(8 * uint8(idx + 1)) + -(8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) + 256, call.data[calldata.size len uint8(idx + 1)]) << (8 * uint8(idx + 1)) + (8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) - 256)
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=Mask(8 * ceil32(uint8(idx + 1)), -(8 * ceil32(uint8(idx + 1))) + 256, call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]) << (8 * ceil32(uint8(idx + 1))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
                require uint8(var61003) < return_data.size
                if var65001:
                    require uint8(var67002) < return_data.size
                    require uint8(var69004) < uint8(idx + 1)
                    # nil
                else:
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 165] = address(ext_call.return_data[0])
                    mem[ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261 len ceil32(uint8(idx + 1))] = call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]
                    if not idx + 1 % 32:
                        return address(ext_call.return_data[0]), 
                               Array(len=idx + 1 << 248, data=Mask(8 * uint8(idx + 1), -(8 * uint8(idx + 1)) + -(8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) + 256, call.data[calldata.size len uint8(idx + 1)]) << (8 * uint8(idx + 1)) + (8 * ceil32(uint8(idx + 1)) - uint8(idx + 1)) - 256)
                    mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + 261] = mem[Mask(3, 5, idx + 1) + ceil32(return_data.size) + ceil32(uint8(idx + 1)) + -(idx + 1 % 32) + 293 len idx + 1 % 32]
                    return address(ext_call.return_data[0]), 
                           Array(len=uint8(idx + 1), data=Mask(8 * ceil32(uint8(idx + 1)), -(8 * ceil32(uint8(idx + 1))) + 256, call.data[calldata.size len uint8(idx + 1)], mem[ceil32(return_data.size) + uint8(idx + 1) + 165 len ceil32(uint8(idx + 1)) - uint8(idx + 1)]) << (8 * ceil32(uint8(idx + 1))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(idx + 1))) + 261 len Mask(3, 5, idx + 1) + -ceil32(uint8(idx + 1)) + 32])
    else:
        require uint8(var27001) <= test266151307()
        if not uint8(var27001):
            if uint8(var35002) >= 32:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var27001)])
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var37003) < return_data.size
            if not var41001:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var27001)])
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var43002) < return_data.size
            require uint8(var45004) < uint8(var27001)
            mem[var47001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if uint8(var49002) >= 32:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var27001)])
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var51003) < return_data.size
            if not var55001:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var27001)])
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var57002) < return_data.size
            require uint8(var59004) < uint8(var27001)
            mem[var61001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if uint8(var63002) < 32:
                require uint8(var65003) < return_data.size
                # nil
            else:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=mem[ceil32(return_data.size) + 165 len uint8(var27001)])
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=mem[ceil32(return_data.size) + 165 len ceil32(uint8(var27001))], mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
        else:
            mem[ceil32(return_data.size) + 165 len uint8(var27001)] = call.data[calldata.size len uint8(var27001)]
            if uint8(var36002) >= 32:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 165] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=Mask(8 * uint8(var27001), -(8 * uint8(var27001)) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * uint8(var27001)) - 256)
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=Mask(8 * ceil32(uint8(var27001)), -(8 * ceil32(uint8(var27001))) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * ceil32(uint8(var27001))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var38003) < return_data.size
            if not var42001:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 165] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=Mask(8 * uint8(var27001), -(8 * uint8(var27001)) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * uint8(var27001)) - 256)
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=Mask(8 * ceil32(uint8(var27001)), -(8 * ceil32(uint8(var27001))) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * ceil32(uint8(var27001))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var44002) < return_data.size
            require uint8(var46004) < uint8(var27001)
            mem[var48001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if uint8(var50002) >= 32:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 165] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=Mask(8 * uint8(var27001), -(8 * uint8(var27001)) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * uint8(var27001)) - 256)
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=Mask(8 * ceil32(uint8(var27001)), -(8 * ceil32(uint8(var27001))) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * ceil32(uint8(var27001))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var52003) < return_data.size
            if not var56001:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 165] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=Mask(8 * uint8(var27001), -(8 * uint8(var27001)) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * uint8(var27001)) - 256)
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=Mask(8 * ceil32(uint8(var27001)), -(8 * ceil32(uint8(var27001))) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * ceil32(uint8(var27001))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
            require uint8(var58002) < return_data.size
            require uint8(var60004) < uint8(var27001)
            mem[var62001 + ceil32(return_data.size) + 165 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if uint8(var64002) < 32:
                require uint8(var66003) < return_data.size
                # nil
            else:
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 165] = address(ext_call.return_data[0])
                mem[ceil32(return_data.size) + ceil32(uint8(var27001)) + 261 len ceil32(uint8(var27001))] = call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]
                if not var27001 % 32:
                    return address(ext_call.return_data[0]), 
                           Array(len=var27001 << 248, data=Mask(8 * uint8(var27001), -(8 * uint8(var27001)) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * uint8(var27001)) - 256)
                mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + 261] = mem[Mask(3, 5, var27001) + ceil32(return_data.size) + ceil32(uint8(var27001)) + -(var27001 % 32) + 293 len var27001 % 32]
                return address(ext_call.return_data[0]), 
                       Array(len=uint8(var27001), data=Mask(8 * ceil32(uint8(var27001)), -(8 * ceil32(uint8(var27001))) + 256, call.data[calldata.size len uint8(var27001)], mem[ceil32(return_data.size) + uint8(var27001) + 165 len ceil32(uint8(var27001)) - uint8(var27001)]) << (8 * ceil32(uint8(var27001))) - 256, mem[ceil32(return_data.size) + (2 * ceil32(uint8(var27001))) + 261 len Mask(3, 5, var27001) + -ceil32(uint8(var27001)) + 32])
}



}
