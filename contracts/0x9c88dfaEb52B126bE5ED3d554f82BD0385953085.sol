contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#  - pendingReward(address arg1)
#
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 sub_8b707641;
uint256 totalStaked;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor8;
uint256 startTimestamp;
uint256 sub_8bc1d8c0;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function sub_8b707641(?) payable {
    return sub_8b707641
}

function sub_8bc1d8c0(?) payable {
    return sub_8bc1d8c0
}

function owner() payable {
    return owner
}

function startTimestamp() payable {
    return startTimestamp
}

function rewardToken() payable {
    return rewardTokenAddress
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

function sub_cc08d354(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8b707641 = arg1
}

function sub_f577988e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8bc1d8c0 = arg1
}

function rewardBalance() payable {
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateStartTimestamp(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTimestamp <= block.timestamp:
        revert with 0, 'Farm already started'
    startTimestamp = arg1
    require 0 < poolInfo.length
    uint256(poolInfo.field_512) = arg1
}

function totalStakeTokenBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= sub_8bc1d8c0:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= sub_8bc1d8c0:
        return 0
    if arg1 > sub_8bc1d8c0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_8bc1d8c0 - arg1)
}

function getStakeTokenFeeBalance() payable {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (ext_call.return_data[0] - totalStaked)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_code.hash(stakeTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalStaked) >> 32
    call stakeTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - totalStaked) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: subtraction overflow'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeBEP20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function depositRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x774465706f7369742076616c7565206d7573742062652067726561746572207468616e2030,
                    mem[201 len 27]
    if ext_code.hash(rewardTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call rewardTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit DepositRewards(arg1);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.timestamp > poolInfo[arg1].field_512:
        if totalStaked:
            if block.timestamp <= sub_8bc1d8c0:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - poolInfo[arg1].field_512:
                    if stor8 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8
                    if not 0 / stor8:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        require 0 / stor8
                        if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                else:
                    require block.timestamp - poolInfo[arg1].field_512
                    if (block.timestamp * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641) / block.timestamp - poolInfo[arg1].field_512 != sub_8b707641:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not (block.timestamp * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641):
                        if stor8 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8
                        if not 0 / stor8:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require 0 / stor8
                            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    else:
                        require (block.timestamp * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641)
                        if (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / (block.timestamp * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641) != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if stor8 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8
                        if not (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8
                            if 1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 != 1000000000000 * 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= sub_8bc1d8c0:
                    if stor8 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor8
                    if not 0 / stor8:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        require 0 / stor8
                        if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                else:
                    if poolInfo[arg1].field_512 > sub_8bc1d8c0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_8bc1d8c0 - poolInfo[arg1].field_512:
                        if stor8 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8
                        if not 0 / stor8:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require 0 / stor8
                            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    else:
                        require sub_8bc1d8c0 - poolInfo[arg1].field_512
                        if (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641) / sub_8bc1d8c0 - poolInfo[arg1].field_512 != sub_8b707641:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641):
                            if stor8 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor8
                            if not 0 / stor8:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                require 0 / stor8
                                if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                        else:
                            require (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641)
                            if (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[arg1].field_512 * sub_8b707641) != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if stor8 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor8
                            if not (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                require (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8
                                if 1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 != 1000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_8b707641 * poolInfo[arg1].field_256) / stor8 / totalStaked
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            idx = idx + 1
            continue 
        if not totalStaked:
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        if block.timestamp <= sub_8bc1d8c0:
            _237 = mem[64]
            mem[64] = mem[64] + 64
            mem[_237] = 30
            mem[_237 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _239 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_239 + idx + 68] = mem[_237 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_239 + 68] = mem[_239 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _239 + -mem[64] + 100
            if not block.timestamp - poolInfo[idx].field_512:
                _262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_262] = 26
                mem[_262 + 32] = 'SafeMath: division by zero'
                if stor8 <= 0:
                    _272 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_272 + idx + 68] = mem[_262 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_272 + 68] = mem[_272 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _272 + -mem[64] + 100
                require stor8
                if not 0 / stor8:
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_344 + idx + 68] = mem[_331 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_344 + 68] = mem[_344 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _344 + -mem[64] + 100
                require 0 / stor8
                if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _343 = mem[64]
                mem[64] = mem[64] + 64
                mem[_343] = 26
                mem[_343 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _366 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_366 + idx + 68] = mem[_343 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_366 + 68] = mem[_366 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _366 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512
            if (block.timestamp * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641) / block.timestamp - poolInfo[idx].field_512 != sub_8b707641:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not (block.timestamp * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641):
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 26
                mem[_271 + 32] = 'SafeMath: division by zero'
                if stor8 <= 0:
                    _280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_280 + idx + 68] = mem[_271 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_280 + 68] = mem[_280 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _280 + -mem[64] + 100
                require stor8
                if not 0 / stor8:
                    _342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_342] = 26
                    mem[_342 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _363 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_363 + idx + 68] = mem[_342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_363 + 68] = mem[_363 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _363 + -mem[64] + 100
                require 0 / stor8
                if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _362 = mem[64]
                mem[64] = mem[64] + 64
                mem[_362] = 26
                mem[_362 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _389 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_389 + idx + 68] = mem[_362 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_389 + 68] = mem[_389 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _389 + -mem[64] + 100
            require (block.timestamp * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641)
            if (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / (block.timestamp * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641) != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 26
            mem[_279 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _296 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_296 + idx + 68] = mem[_279 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_296 + 68] = mem[_296 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _296 + -mem[64] + 100
            require stor8
            if not (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8:
                _361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_361] = 26
                mem[_361 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _386 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_386 + idx + 68] = mem[_361 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_386 + 68] = mem[_386 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _386 + -mem[64] + 100
            require (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8
            if 1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_385] = 26
            mem[_385 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * (block.timestamp * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _417 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_417 + idx + 68] = mem[_385 + idx + 32]
                idx = idx + 32
                continue 
            mem[_417 + 68] = mem[_417 + 74 len 26]
            revert with memory
              from mem[64]
               len _417 + -mem[64] + 100
        if poolInfo[idx].field_512 >= sub_8bc1d8c0:
            _257 = mem[64]
            mem[64] = mem[64] + 64
            mem[_257] = 26
            mem[_257 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_258 + idx + 68] = mem[_257 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_258 + 68] = mem[_258 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _258 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_295] = 26
                mem[_295 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_311 + idx + 68] = mem[_295 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_311 + 68] = mem[_311 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _311 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_310] = 26
            mem[_310 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _326 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_326 + idx + 68] = mem[_310 + idx + 32]
                idx = idx + 32
                continue 
            mem[_326 + 68] = mem[_326 + 74 len 26]
            revert with memory
              from mem[64]
               len _326 + -mem[64] + 100
        _238 = mem[64]
        mem[64] = mem[64] + 64
        mem[_238] = 30
        mem[_238 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > sub_8bc1d8c0:
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_242 + idx + 68] = mem[_238 + idx + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 70 len 30]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
        if not sub_8bc1d8c0 - poolInfo[idx].field_512:
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _276 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_276 + idx + 68] = mem[_263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_276 + 68] = mem[_276 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _276 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_333] = 26
                mem[_333 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _349 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_349 + idx + 68] = mem[_333 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_349 + 68] = mem[_349 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _349 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_348] = 26
            mem[_348 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _375 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_375 + idx + 68] = mem[_348 + idx + 32]
                idx = idx + 32
                continue 
            mem[_375 + 68] = mem[_375 + 74 len 26]
            revert with memory
              from mem[64]
               len _375 + -mem[64] + 100
        require sub_8bc1d8c0 - poolInfo[idx].field_512
        if (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641) / sub_8bc1d8c0 - poolInfo[idx].field_512 != sub_8b707641:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641):
            _275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_275] = 26
            mem[_275 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _285 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_285 + idx + 68] = mem[_275 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_285 + 68] = mem[_285 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _285 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _347 = mem[64]
                mem[64] = mem[64] + 64
                mem[_347] = 26
                mem[_347 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _372 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_372 + idx + 68] = mem[_347 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_372 + 68] = mem[_372 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _372 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_371] = 26
            mem[_371 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _399 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_399 + idx + 68] = mem[_371 + idx + 32]
                idx = idx + 32
                continue 
            mem[_399 + 68] = mem[_399 + 74 len 26]
            revert with memory
              from mem[64]
               len _399 + -mem[64] + 100
        require (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641)
        if (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / (sub_8bc1d8c0 * sub_8b707641) - (poolInfo[idx].field_512 * sub_8b707641) != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _284 = mem[64]
        mem[64] = mem[64] + 64
        mem[_284] = 26
        mem[_284 + 32] = 'SafeMath: division by zero'
        if stor8 <= 0:
            _301 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_301 + idx + 68] = mem[_284 + idx + 32]
                idx = idx + 32
                continue 
            mem[_301 + 68] = mem[_301 + 74 len 26]
            revert with memory
              from mem[64]
               len _301 + -mem[64] + 100
        require stor8
        if not (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8:
            _370 = mem[64]
            mem[64] = mem[64] + 64
            mem[_370] = 26
            mem[_370 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _396 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_396 + idx + 68] = mem[_370 + idx + 32]
                idx = idx + 32
                continue 
            mem[_396 + 68] = mem[_396 + 74 len 26]
            revert with memory
              from mem[64]
               len _396 + -mem[64] + 100
        require (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8
        if 1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _395 = mem[64]
        mem[64] = mem[64] + 64
        mem[_395] = 26
        mem[_395 + 32] = 'SafeMath: division by zero'
        if totalStaked > 0:
            require totalStaked
            if poolInfo[idx].field_768 + (1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / totalStaked) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000000000 * 10^18 * (sub_8bc1d8c0 * sub_8b707641 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_8b707641 * poolInfo[idx].field_256) / stor8 / totalStaked
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _424 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_424 + idx + 68] = mem[_395 + idx + 32]
            idx = idx + 32
            continue 
        mem[_424 + 68] = mem[_424 + 74 len 26]
        revert with memory
          from mem[64]
           len _424 + -mem[64] + 100
}



}
