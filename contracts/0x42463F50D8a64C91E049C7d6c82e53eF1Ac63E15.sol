contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
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
uint256 sub_98105e15;

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

function sub_98105e15(?) payable {
    return sub_98105e15
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

function getMultiplier(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 <= sub_8bc1d8c0:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg3:
            return (arg2 - arg1 / arg3)
    else:
        if arg1 >= sub_8bc1d8c0:
            return 0
        if arg1 > sub_8bc1d8c0:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg3:
            return (sub_8bc1d8c0 - arg1 / arg3)
    ('iszero', ('param', 'arg3'))
    revert
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
    mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalStaked) >> 32
    mem[388 len 0] = 0
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
    mem[388 len 0] = 0
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
                if sub_98105e15 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_98105e15
                if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15:
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
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                else:
                    require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15
                    if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 != sub_8b707641:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    else:
                        require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641
                        if block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 != poolInfo[arg1].field_256:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if stor8 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor8
                        if not block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            require block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8
                            if 1000000000000 * 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 != 1000000000000 * 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * block.timestamp - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / totalStaked
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
                    if sub_98105e15 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_98105e15
                    if not sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15:
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
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    else:
                        require sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15
                        if sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 / sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 != sub_8b707641:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641:
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
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                        else:
                            require sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641
                            if sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 != poolInfo[arg1].field_256:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if stor8 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor8
                            if not sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (0 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                require sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8
                                if 1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 != 1000000000000 * 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if poolInfo[arg1].field_768 + (1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / totalStaked) < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[arg1].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[arg1].field_256 / stor8 / totalStaked
        poolInfo[arg1].field_512 = block.timestamp
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.timestamp <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[address(arg1)].field_0 * uint256(poolInfo.field_768) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.timestamp <= sub_8bc1d8c0:
        if uint256(poolInfo.field_512) > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_98105e15 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_98105e15
        if not block.timestamp - uint256(poolInfo.field_512) / sub_98105e15:
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require block.timestamp - uint256(poolInfo.field_512) / sub_98105e15
        if block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 / block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 != sub_8b707641:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641:
            if stor8 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor8
            if not 0 / stor8:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                require userInfo[address(arg1)].field_0
                if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641
        if block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 != uint256(poolInfo.field_256):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8
        if 1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * block.timestamp - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= sub_8bc1d8c0:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require 0 / stor8
        if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > sub_8bc1d8c0:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_98105e15 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_98105e15
    if not sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require 0 / stor8
        if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    require sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15
    if sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 / sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 != sub_8b707641:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641:
        if stor8 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor8
        if not 0 / stor8:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            require userInfo[address(arg1)].field_0
            if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        require 0 / stor8
        if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * 0 / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    require sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641
    if sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 != uint256(poolInfo.field_256):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if stor8 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor8
    if not sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if uint256(poolInfo.field_768) + (0 / totalStaked) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        require userInfo[address(arg1)].field_0
        if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (0 / totalStaked):
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (0 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    require sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8
    if 1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 != 1000000000000 * 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if uint256(poolInfo.field_768) + (1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    require userInfo[address(arg1)].field_0
    if (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768) + (1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked):
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if userInfo[address(arg1)].field_256 > (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) + (1000000000000 * 10^18 * sub_8bc1d8c0 - uint256(poolInfo.field_512) / sub_98105e15 * sub_8b707641 * uint256(poolInfo.field_256) / stor8 / totalStaked * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
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
            _253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_253] = 30
            mem[_253 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _255 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_255 + idx + 68] = mem[_253 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_255 + 68] = mem[_255 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _255 + -mem[64] + 100
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 26
            mem[_263 + 32] = 'SafeMath: division by zero'
            if sub_98105e15 <= 0:
                _271 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_271 + idx + 68] = mem[_263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_271 + 68] = mem[_271 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _271 + -mem[64] + 100
            require sub_98105e15
            if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15:
                _300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_300] = 26
                mem[_300 + 32] = 'SafeMath: division by zero'
                if stor8 <= 0:
                    _311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_311 + idx + 68] = mem[_300 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_311 + 68] = mem[_311 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _311 + -mem[64] + 100
                require stor8
                if not 0 / stor8:
                    _374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_374] = 26
                    mem[_374 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _383 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_383 + idx + 68] = mem[_374 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_383 + 68] = mem[_383 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _383 + -mem[64] + 100
                require 0 / stor8
                if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_382] = 26
                mem[_382 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _400 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_400 + idx + 68] = mem[_382 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_400 + 68] = mem[_400 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _400 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512 / sub_98105e15
            if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 != sub_8b707641:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641:
                _310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_310] = 26
                mem[_310 + 32] = 'SafeMath: division by zero'
                if stor8 <= 0:
                    _323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_323 + idx + 68] = mem[_310 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_323 + 68] = mem[_323 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _323 + -mem[64] + 100
                require stor8
                if not 0 / stor8:
                    _381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_381] = 26
                    mem[_381 + 32] = 'SafeMath: division by zero'
                    if totalStaked > 0:
                        require totalStaked
                        if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / totalStaked
                        poolInfo[idx].field_512 = block.timestamp
                        idx = idx + 1
                        continue 
                    _397 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_397 + idx + 68] = mem[_381 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_397 + 68] = mem[_397 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _397 + -mem[64] + 100
                require 0 / stor8
                if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _396 = mem[64]
                mem[64] = mem[64] + 64
                mem[_396] = 26
                mem[_396 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _421 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_421 + idx + 68] = mem[_396 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_421 + 68] = mem[_421 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _421 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641
            if block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_322] = 26
            mem[_322 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _340 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_340 + idx + 68] = mem[_322 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_340 + 68] = mem[_340 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _340 + -mem[64] + 100
            require stor8
            if not block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8:
                _395 = mem[64]
                mem[64] = mem[64] + 64
                mem[_395] = 26
                mem[_395 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _418 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_418 + idx + 68] = mem[_395 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_418 + 68] = mem[_418 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _418 + -mem[64] + 100
            require block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8
            if 1000000000000 * 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _417 = mem[64]
            mem[64] = mem[64] + 64
            mem[_417] = 26
            mem[_417 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * block.timestamp - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _449 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_449 + idx + 68] = mem[_417 + idx + 32]
                idx = idx + 32
                continue 
            mem[_449 + 68] = mem[_449 + 74 len 26]
            revert with memory
              from mem[64]
               len _449 + -mem[64] + 100
        if poolInfo[idx].field_512 >= sub_8bc1d8c0:
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 26
            mem[_283 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _286 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_286 + idx + 68] = mem[_283 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_286 + 68] = mem[_286 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _286 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _299 = mem[64]
                mem[64] = mem[64] + 64
                mem[_299] = 26
                mem[_299 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _307 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_307 + idx + 68] = mem[_299 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_307 + 68] = mem[_307 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _307 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_306] = 26
            mem[_306 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _318 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_318 + idx + 68] = mem[_306 + idx + 32]
                idx = idx + 32
                continue 
            mem[_318 + 68] = mem[_318 + 74 len 26]
            revert with memory
              from mem[64]
               len _318 + -mem[64] + 100
        _254 = mem[64]
        mem[64] = mem[64] + 64
        mem[_254] = 30
        mem[_254 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > sub_8bc1d8c0:
            _258 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_258 + idx + 68] = mem[_254 + idx + 32]
                idx = idx + 32
                continue 
            mem[_258 + 68] = mem[_258 + 70 len 30]
            revert with memory
              from mem[64]
               len _258 + -mem[64] + 100
        _266 = mem[64]
        mem[64] = mem[64] + 64
        mem[_266] = 26
        mem[_266 + 32] = 'SafeMath: division by zero'
        if sub_98105e15 <= 0:
            _274 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_274 + idx + 68] = mem[_266 + idx + 32]
                idx = idx + 32
                continue 
            mem[_274 + 68] = mem[_274 + 74 len 26]
            revert with memory
              from mem[64]
               len _274 + -mem[64] + 100
        require sub_98105e15
        if not sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15:
            _301 = mem[64]
            mem[64] = mem[64] + 64
            mem[_301] = 26
            mem[_301 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _315 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_315 + idx + 68] = mem[_301 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_315 + 68] = mem[_315 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _315 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _376 = mem[64]
                mem[64] = mem[64] + 64
                mem[_376] = 26
                mem[_376 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _388 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_388 + idx + 68] = mem[_376 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_388 + 68] = mem[_388 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _388 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _387 = mem[64]
            mem[64] = mem[64] + 64
            mem[_387] = 26
            mem[_387 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _409 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_409 + idx + 68] = mem[_387 + idx + 32]
                idx = idx + 32
                continue 
            mem[_409 + 68] = mem[_409 + 74 len 26]
            revert with memory
              from mem[64]
               len _409 + -mem[64] + 100
        require sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15
        if sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 / sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 != sub_8b707641:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641:
            _314 = mem[64]
            mem[64] = mem[64] + 64
            mem[_314] = 26
            mem[_314 + 32] = 'SafeMath: division by zero'
            if stor8 <= 0:
                _328 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_328 + idx + 68] = mem[_314 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_328 + 68] = mem[_328 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _328 + -mem[64] + 100
            require stor8
            if not 0 / stor8:
                _386 = mem[64]
                mem[64] = mem[64] + 64
                mem[_386] = 26
                mem[_386 + 32] = 'SafeMath: division by zero'
                if totalStaked > 0:
                    require totalStaked
                    if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / totalStaked
                    poolInfo[idx].field_512 = block.timestamp
                    idx = idx + 1
                    continue 
                _406 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_406 + idx + 68] = mem[_386 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_406 + 68] = mem[_406 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _406 + -mem[64] + 100
            require 0 / stor8
            if 1000000000000 * 10^18 * 0 / stor8 / 0 / stor8 != 1000000000000 * 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _405 = mem[64]
            mem[64] = mem[64] + 64
            mem[_405] = 26
            mem[_405 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (1000000000000 * 10^18 * 0 / stor8 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor8 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _431 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_431 + idx + 68] = mem[_405 + idx + 32]
                idx = idx + 32
                continue 
            mem[_431 + 68] = mem[_431 + 74 len 26]
            revert with memory
              from mem[64]
               len _431 + -mem[64] + 100
        require sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641
        if sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 != poolInfo[idx].field_256:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _327 = mem[64]
        mem[64] = mem[64] + 64
        mem[_327] = 26
        mem[_327 + 32] = 'SafeMath: division by zero'
        if stor8 <= 0:
            _345 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_345 + idx + 68] = mem[_327 + idx + 32]
                idx = idx + 32
                continue 
            mem[_345 + 68] = mem[_345 + 74 len 26]
            revert with memory
              from mem[64]
               len _345 + -mem[64] + 100
        require stor8
        if not sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8:
            _404 = mem[64]
            mem[64] = mem[64] + 64
            mem[_404] = 26
            mem[_404 + 32] = 'SafeMath: division by zero'
            if totalStaked > 0:
                require totalStaked
                if poolInfo[idx].field_768 + (0 / totalStaked) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / totalStaked
                poolInfo[idx].field_512 = block.timestamp
                idx = idx + 1
                continue 
            _428 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_428 + idx + 68] = mem[_404 + idx + 32]
                idx = idx + 32
                continue 
            mem[_428 + 68] = mem[_428 + 74 len 26]
            revert with memory
              from mem[64]
               len _428 + -mem[64] + 100
        require sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8
        if 1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 != 1000000000000 * 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _427 = mem[64]
        mem[64] = mem[64] + 64
        mem[_427] = 26
        mem[_427 + 32] = 'SafeMath: division by zero'
        if totalStaked > 0:
            require totalStaked
            if poolInfo[idx].field_768 + (1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / totalStaked) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 1000000000000 * 10^18 * sub_8bc1d8c0 - poolInfo[idx].field_512 / sub_98105e15 * sub_8b707641 * poolInfo[idx].field_256 / stor8 / totalStaked
            poolInfo[idx].field_512 = block.timestamp
            idx = idx + 1
            continue 
        _456 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_456 + idx + 68] = mem[_427 + idx + 32]
            idx = idx + 32
            continue 
        mem[_456 + 68] = mem[_456 + 74 len 26]
        revert with memory
          from mem[64]
           len _456 + -mem[64] + 100
}



}
