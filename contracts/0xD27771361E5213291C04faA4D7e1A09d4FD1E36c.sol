contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - deposit(uint256 arg1)
#
address owner;
address stakeTokenAddress;
address rewardTokenAddress;
uint256 rewardPerBlock;
uint256 totalStaked;
array of struct poolInfo;
mapping of struct userInfo;
uint256 stor7;
uint256 startBlock;
uint256 bonusEndBlock;

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function stakeToken() payable {
    return stakeTokenAddress
}

function totalStaked() payable {
    return totalStaked
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
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

function setRewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardPerBlock = arg1
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
    if arg2 <= bonusEndBlock:
        if arg1 > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg2 - arg1)
    if arg1 >= bonusEndBlock:
        return 0
    if arg1 > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    return (bonusEndBlock - arg1)
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

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= bonusEndBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e6e657720626f6e757320656e6420626c6f636b206d7573742062652067726561746572207468616e2063757272656e,
                    mem[212 len 16]
    bonusEndBlock = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw() payable {
    require 0 < poolInfo.length
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(poolInfo.field_0)):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_32
    mem[324 len 0] = 0
    call address(poolInfo.field_0) with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, userInfo[msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    if userInfo[msg.sender].field_0 > totalStaked:
        revert with 0, 'SafeMath: subtraction overflow'
    totalStaked -= userInfo[msg.sender].field_0
    userInfo[msg.sender].field_0 = 0
    userInfo[msg.sender].field_256 = 0
    emit EmergencyWithdraw(0, msg.sender);
}

function emergencyRewardWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'not enough rewards'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(rewardTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call rewardTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyRewardWithdraw(arg1, msg.sender);
}

function depositRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x724465706f7369742076616c7565206d7573742062652067726561746572207468616e2030,
                    mem[201 len 27]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(rewardTokenAddress):
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit DepositRewards(arg1);
}

function skimStakeTokenFees() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalStaked > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalStaked) >> 32
    mem[324 len 0] = 0
    call stakeTokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - totalStaked) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalStaked
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit SkimStakeTokenFees((ext_call.return_data[0] - totalStaked), msg.sender);
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if block.number > poolInfo[arg1].field_512:
        if totalStaked:
            if block.number <= bonusEndBlock:
                if poolInfo[arg1].field_512 > block.number:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.number - poolInfo[arg1].field_512:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / block.number - poolInfo[arg1].field_512 != rewardPerBlock:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (block.number * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 1000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if stor7 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require stor7
                    if not 0 / stor7:
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / totalStaked
                    else:
                        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if totalStaked <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalStaked
                        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                else:
                    if poolInfo[arg1].field_512 > bonusEndBlock:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not bonusEndBlock - poolInfo[arg1].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / totalStaked
                        else:
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[arg1].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[arg1].field_512 * rewardPerBlock) != poolInfo[arg1].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 0 / totalStaked
                            else:
                                if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked) + poolInfo[arg1].field_768 < poolInfo[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[arg1].field_768 += 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * rewardPerBlock * poolInfo[arg1].field_256) / stor7 / totalStaked
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 5
        if block.number > poolInfo[idx].field_512:
            if totalStaked:
                if block.number <= bonusEndBlock:
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / totalStaked
                        else:
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / block.number - poolInfo[idx].field_512 != rewardPerBlock:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (block.number * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000 * 10^18 * (block.number * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if stor7 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require stor7
                        if not 0 / stor7:
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / totalStaked
                        else:
                            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if totalStaked <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalStaked
                            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                    else:
                        if poolInfo[idx].field_512 > bonusEndBlock:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not bonusEndBlock - poolInfo[idx].field_512:
                            if stor7 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor7
                            if not 0 / stor7:
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / totalStaked
                            else:
                                if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if totalStaked <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalStaked
                                if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                        else:
                            if (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) / bonusEndBlock - poolInfo[idx].field_512 != rewardPerBlock:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock):
                                if stor7 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor7
                                if not 0 / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * 0 / stor7 / totalStaked
                            else:
                                if (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / (bonusEndBlock * rewardPerBlock) - (poolInfo[idx].field_512 * rewardPerBlock) != poolInfo[idx].field_256:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if stor7 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require stor7
                                if not (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7:
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (0 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / totalStaked
                                else:
                                    if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 != 1000000000000 * 10^18:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if totalStaked <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalStaked
                                    if (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked) + poolInfo[idx].field_768 < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * rewardPerBlock * poolInfo[idx].field_256) / stor7 / totalStaked
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function pendingReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require 0 < poolInfo.length
    if block.number <= uint256(poolInfo.field_512):
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if not totalStaked:
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / userInfo[address(arg1)].field_0 != uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0 / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if block.number <= bonusEndBlock:
        if uint256(poolInfo.field_512) > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - uint256(poolInfo.field_512):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / block.number - uint256(poolInfo.field_512) != rewardPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
            if stor7 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7
            if not 0 / stor7:
                if totalStaked <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalStaked
                if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_0:
                    if userInfo[address(arg1)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_256
                if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
            if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (block.number * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((1000000000000 * 10^18 * (block.number * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) >= bonusEndBlock:
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if uint256(poolInfo.field_512) > bonusEndBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not bonusEndBlock - uint256(poolInfo.field_512):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) / bonusEndBlock - uint256(poolInfo.field_512) != rewardPerBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock):
        if stor7 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor7
        if not 0 / stor7:
            if totalStaked <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalStaked
            if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_0:
                if userInfo[address(arg1)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_256
            if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
        if 1000000000000 * 10^18 * 0 / stor7 / 0 / stor7 != 1000000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * 0 / stor7 / totalStaked) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((1000000000000 * 10^18 * 0 / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / (bonusEndBlock * rewardPerBlock) - (uint256(poolInfo.field_512) * rewardPerBlock) != uint256(poolInfo.field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if stor7 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor7
    if not (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7:
        if totalStaked <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalStaked
        if (0 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_0:
            if userInfo[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_256
        if (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (0 / totalStaked) + uint256(poolInfo.field_768):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_256 > (0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
    if 1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 != 1000000000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalStaked <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalStaked
    if (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) + uint256(poolInfo.field_768) < uint256(poolInfo.field_768):
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_0:
        if userInfo[address(arg1)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_256
    if (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / userInfo[address(arg1)].field_0 != (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked) + uint256(poolInfo.field_768):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[address(arg1)].field_256 > (1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((1000000000000 * 10^18 * (bonusEndBlock * rewardPerBlock * uint256(poolInfo.field_256)) - (uint256(poolInfo.field_512) * rewardPerBlock * uint256(poolInfo.field_256)) / stor7 / totalStaked * userInfo[address(arg1)].field_0) + (uint256(poolInfo.field_768) * userInfo[address(arg1)].field_0) / 1000000000000 * 10^18) - userInfo[address(arg1)].field_256)
}



}
